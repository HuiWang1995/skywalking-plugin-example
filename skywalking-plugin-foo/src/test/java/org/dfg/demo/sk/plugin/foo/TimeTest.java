package org.dfg.demo.sk.plugin.foo;

import java.util.Date;

public class TimeTest {

    public static void main(String[] args) {

        Long time = 1612660076259L;

        Date date = new Date(time);

        System.out.println(date);
    }
}
