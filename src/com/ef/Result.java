package com.ef;

/**
 *
 * @author KhayyamS
 */
public class Result {

    String ip;
    int count;

    public Result(String ip, int count) {
        this.ip = ip;
        this.count = count;
    }

    public String getIp() {
        return ip;
    }

    public int getCount() {
        return count;
    }

}
