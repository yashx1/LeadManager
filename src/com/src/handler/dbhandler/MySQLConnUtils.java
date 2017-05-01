package com.src.handler.dbhandler;

import java.sql.Connection;	
import java.sql.DriverManager;
import java.sql.SQLException;

//import com.mysql.jdbc.Driver;

public class MySQLConnUtils {

	static { 
		  try{ 
			  System.out.println("checkinng driver..........");
			  java.sql.DriverManager.registerDriver( new com.mysql.jdbc.Driver() ); 
		   } catch (SQLException e) {
		      throw new RuntimeException ("Can't register driver!"); 
		   } 
		  }
	
	
	public static Connection getMySQLConnection()
			throws ClassNotFoundException, SQLException {

		String hostName = "localhost";
		String dbName = "leadmanager";
		String userName = "root";
		String password = "adminadmin";
		return getMySQLConnection(hostName, dbName, userName, password);
	}
	
	
	
	public static Connection getMySQLConnection(String hostName, String dbName,
			String userName, String password) throws SQLException,
			ClassNotFoundException {

//		Object obj = new my
		
		Class.forName("com.mysql.jdbc.Driver");
		String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

		
		
		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}
}