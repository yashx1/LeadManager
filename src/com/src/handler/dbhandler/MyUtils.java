package com.src.handler.dbhandler;

import java.sql.Connection;

public class MyUtils {

	static Connection conn = null;

	static void getConnection() {
		try {
			// Create connection
			conn = ConnectionUtils.getConnection();

			// Set Auto commit to false
			conn.setAutoCommit(false);
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
			ConnectionUtils.rollbackQuietly(conn);
		} finally {
			ConnectionUtils.closeQuietly(conn);
		}
	}
}