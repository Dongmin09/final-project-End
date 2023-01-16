package com.sw.ddit.chart.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Test {
	public static void main(String[] args) {
		
		String format = new SimpleDateFormat("yyyyMMdd").format(System.currentTimeMillis());
		System.out.println(format);
		
		String format2 = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
		System.out.println(format2);
	}
}
