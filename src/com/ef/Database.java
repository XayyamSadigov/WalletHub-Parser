package com.ef;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author KhayyamS
 */
public class Database {

	Connection connection;

	public Database(String connectionString, String username, String password) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(connectionString, username, password);
		} catch (SQLException ex) {
			Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public void add(Record record) {
		try {
			String query = " insert into log (start_date, ip, request, status, agent)" + " values (?, ?, ?, ?, ?)";

			PreparedStatement preparedStmt = connection.prepareStatement(query);
			preparedStmt.setTimestamp(1, new java.sql.Timestamp(record.getDate().getTime()));
			preparedStmt.setString(2, record.getIp());
			preparedStmt.setString(3, record.getRequest());
			preparedStmt.setInt(4, record.getStatus());
			preparedStmt.setString(5, record.getAgent());

			preparedStmt.execute();
		} catch (SQLException ex) {
			Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public void add(Result result, String duration, int threshold) {
		try {
			String query = " insert into blocked (ltime, ip, reason)" + " values (?, ?, ?)";

			PreparedStatement preparedStmt = connection.prepareStatement(query);
			Date date = new Date();
			preparedStmt.setTimestamp(1, new java.sql.Timestamp(date.getTime()));
			preparedStmt.setString(2, result.getIp());
			preparedStmt.setString(3, duration + " threshold crossed(" + result.getCount() + ">" + threshold + ")");

			preparedStmt.execute();
		} catch (SQLException ex) {
			Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public void truncate() {
		try {
			String query = "truncate table log";
			PreparedStatement preparedStmt = connection.prepareStatement(query);
			preparedStmt.execute();
		} catch (SQLException ex) {
			Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public List<Result> getResults(String startDate, String duration, int threshold) {
		List<Result> list = new ArrayList<>();
		try {
			String query = "select ip, count(*) cnt from log\n" + "where start_date between STR_TO_DATE('"
					+ startDate + "', '%Y-%m-%d.%H:%i:%s')\n" + "and ADDTIME(STR_TO_DATE('" + startDate
					+ "', '%Y-%m-%d.%H:%i:%s'), '" + (duration.equals("daily") ? "23:59:59" : "59:59") + "')\n"
					+ "group by ip\n" + "having count(*) > " + threshold;

			try (Statement st = connection.createStatement()) {
				ResultSet rs = st.executeQuery(query);
				while (rs.next()) {
					list.add(new Result(rs.getString("ip"), rs.getInt("cnt")));
				}
			}
		} catch (SQLException ex) {
			Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
		}

		return list;
	}

}
