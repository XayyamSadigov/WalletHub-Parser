package com.ef;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author KhayyamS
 */
public class Parser {

	static Database database;

	static String file; 
	static String startDate;
	static String duration;
	static int threshold;
	static String connectionString = "jdbc:mysql://localhost:3306/wallethub?useSSL=false"; // default value
	static String username = "root"; // default value
	static String password = "root"; // default value

	public static void main(String[] args) throws MalformedURLException, IOException {

		for (String arg : args) {
			if (arg.startsWith("--accesslog")) {
				file = arg.substring(arg.indexOf("=") + 1);
			} else if (arg.startsWith("--startDate")) {
				startDate = arg.substring(arg.indexOf("=") + 1);
			} else if (arg.startsWith("--duration")) {
				duration = arg.substring(arg.indexOf("=") + 1);
			} else if (arg.startsWith("--threshold")) {
				threshold = Integer.parseInt(arg.substring(arg.indexOf("=") + 1));
			} else if (arg.startsWith("--database")) {
				connectionString = arg.substring(arg.indexOf("=") + 1);
			} else if (arg.startsWith("--username")) {
				username = arg.substring(arg.indexOf("=") + 1);
			} else if (arg.startsWith("--password")) {
				password = arg.substring(arg.indexOf("=") + 1);
			}
		}

		database = new Database(connectionString, username, password);

		if (file != null) {
			parse2db(file);
		}

		database.getResults(startDate, duration, threshold).forEach((result) -> {
			System.out.println(result.ip);
			database.add(result, duration, threshold);
		});
	}

	static void parse2db(String path) {
		database.truncate();
		
		BufferedReader br = null;

		try {
			File file = new File(path);
			br = new BufferedReader(new FileReader(file));
			String row;
			while ((row = br.readLine()) != null) {
				database.add(new Record(row));
			}
		} catch (FileNotFoundException ex) {
			Logger.getLogger(Parser.class.getName()).log(Level.SEVERE, null, ex);
		} catch (IOException ex) {
			Logger.getLogger(Parser.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
			try {
				br.close();
			} catch (IOException ex) {
				Logger.getLogger(Parser.class.getName()).log(Level.SEVERE, null, ex);
			}

		}
	}

}
