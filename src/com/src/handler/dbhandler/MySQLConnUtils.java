package com.src.handler.dbhandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnUtils {

	static {
		try {
			java.sql.DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			System.out.println("ready to set new JDBC connection");
		} catch (SQLException e) {
			throw new RuntimeException("Can't register driver!");
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

		Class.forName("com.mysql.jdbc.Driver");
		String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}
}