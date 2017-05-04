package com.src.handler.dbhandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.src.entity.BDUpdate;
import com.src.entity.BusinessDevelopers;

public class DBUtil {

	public List<BusinessDevelopers> getBDsCitywise(String city) {

		List<BusinessDevelopers> bdList = new LinkedList<>();

		Connection conn;
		try {
			conn = MySQLConnUtils.getMySQLConnection();
			String sql = "SELECT * FROM bd WHERE city = ?";

			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, city);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				BusinessDevelopers bd = new BusinessDevelopers();

				bd.setIdBD(rs.getInt("idBD"));
				bd.setName(rs.getString("name"));
				bd.setContact(rs.getString("contact"));
				bd.setEmail(rs.getString("email"));
				bd.setAddress(rs.getString("address"));
				bd.setCity(rs.getString("city"));
				bd.setState(rs.getString("state"));
				bd.setActive(rs.getBoolean("isActive"));

				bdList.add(bd);
			}

			pstm.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return bdList;

	}

	public List<BDUpdate> getUpdatesFromBD(String bdId) {
		List<BDUpdate> bdUpdateList = new LinkedList<>();

		Connection conn;
		try {
			conn = MySQLConnUtils.getMySQLConnection();
			String sql = "SELECT * FROM bdUpdate WHERE bdId = ? ORDER BY created_on";

			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, bdId);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				BDUpdate bdUpdate = new BDUpdate();

				bdUpdate.setId(rs.getInt("id"));
				bdUpdate.setUpdate(rs.getString("update"));
				bdUpdate.setBDId(rs.getInt("bdId"));

				bdUpdateList.add(bdUpdate);
			}

			pstm.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return bdUpdateList;
	}
}
