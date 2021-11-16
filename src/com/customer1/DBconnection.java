package com.customer1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {

	
	private  static String url ="jdbc:mysql://localhost:3306/echanneling";
	private  static String userName ="root";
	private static String pass ="12345";
	private  static Connection con;
	
public static Connection getConnection() {
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		con =DriverManager.getConnection(url,userName,pass);
		
		
	}catch(Exception e) {
		
		System.out.println("data base connection is not succes");
	}
	
	return con;

}



}
