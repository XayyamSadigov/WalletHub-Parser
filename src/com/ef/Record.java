package com.ef;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author KhayyamS
 */
public class Record {

    Date date;
    String ip;
    String request;
    int status;
    String agent;

    public Record(String raw) {
        try {
            this.date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS").parse(raw.substring(0, raw.indexOf("|")));
            raw = raw.substring(raw.indexOf("|") + 1);
            this.ip = raw.substring(0, raw.indexOf("|"));
            raw = raw.substring(raw.indexOf("|") + 1);
            this.request = raw.substring(0, raw.indexOf("|"));
            raw = raw.substring(raw.indexOf("|") + 1);
            this.status = Integer.parseInt(raw.substring(0, raw.indexOf("|")));
            this.agent = raw.substring(raw.indexOf("|") + 1);
        } catch (ParseException ex) {
            Logger.getLogger(Record.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Date getDate() {
        return date;
    }

    public String getIp() {
        return ip;
    }

    public String getRequest() {
        return request;
    }

    public int getStatus() {
        return status;
    }

    public String getAgent() {
        return agent;
    }

    @Override
    public String toString() {
        return "Record{" + "date=" + date + ", ip=" + ip + ", request=" + request + ", status=" + status + ", agent=" + agent + '}';
    }

}
