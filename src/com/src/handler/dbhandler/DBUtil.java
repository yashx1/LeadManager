package com.src.handler.dbhandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

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
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bdList;

	}

	// public static UserAccount findUser(Connection conn, String userName,
	// String password) throws SQLException {
	//
	// String sql =
	// "Select a.User_Name, a.Password, a.Gender from User_Account a "
	// + " where a.User_Name = ? and a.password= ?";
	//
	// PreparedStatement pstm = conn.prepareStatement(sql);
	// pstm.setString(1, userName);
	// pstm.setString(2, password);
	// ResultSet rs = pstm.executeQuery();
	//
	// if (rs.next()) {
	// String gender = rs.getString("Gender");
	// UserAccount user = new UserAccount();
	// user.setUserName(userName);
	// user.setPassword(password);
	// user.setGender(gender);
	// return user;
	// }
	// return null;
	// }
	//
	// public static UserAccount findUser(Connection conn, String userName)
	// throws SQLException {
	//
	// String sql =
	// "Select a.User_Name, a.Password, a.Gender from User_Account a " +
	// " where a.User_Name = ? ";
	//
	// PreparedStatement pstm = conn.prepareStatement(sql);
	// pstm.setString(1, userName);
	//
	// ResultSet rs = pstm.executeQuery();
	//
	// if (rs.next()) {
	// String password = rs.getString("Password");
	// String gender = rs.getString("Gender");
	// UserAccount user = new UserAccount();
	// user.setUserName(userName);
	// user.setPassword(password);
	// user.setGender(gender);
	// return user;
	// }
	// return null;
	// }
	//
	// public static List<Product> queryProduct(Connection conn) throws
	// SQLException {
	// String sql = "Select a.Code, a.Name, a.Price from Product a ";
	//
	// PreparedStatement pstm = conn.prepareStatement(sql);
	//
	// ResultSet rs = pstm.executeQuery();
	// List<Product> list = new ArrayList<Product>();
	// while (rs.next()) {
	// String code = rs.getString("Code");
	// String name = rs.getString("Name");
	// float price = rs.getFloat("Price");
	// Product product = new Product();
	// product.setCode(code);
	// product.setName(name);
	// product.setPrice(price);
	// list.add(product);
	// }
	// return list;
	// }
	//
	// public static Product findProduct(Connection conn, String code) throws
	// SQLException {
	// String sql =
	// "Select a.Code, a.Name, a.Price from Product a where a.Code=?";
	//
	// PreparedStatement pstm = conn.prepareStatement(sql);
	// pstm.setString(1, code);
	//
	// ResultSet rs = pstm.executeQuery();
	//
	// while (rs.next()) {
	// String name = rs.getString("Name");
	// float price = rs.getFloat("Price");
	// Product product = new Product(code, name, price);
	// return product;
	// }
	// return null;
	// }
	//
	// public static void updateProduct(Connection conn, Product product) throws
	// SQLException {
	// String sql = "Update Product set Name =?, Price=? where Code=? ";
	//
	// PreparedStatement pstm = conn.prepareStatement(sql);
	//
	// pstm.setString(1, product.getName());
	// pstm.setFloat(2, product.getPrice());
	// pstm.setString(3, product.getCode());
	// pstm.executeUpdate();
	// }
	//
	// public static void insertProduct(Connection conn, Product product) throws
	// SQLException {
	// String sql = "Insert into Product(Code, Name,Price) values (?,?,?)";
	//
	// PreparedStatement pstm = conn.prepareStatement(sql);
	//
	// pstm.setString(1, product.getCode());
	// pstm.setString(2, product.getName());
	// pstm.setFloat(3, product.getPrice());
	//
	// pstm.executeUpdate();
	// }
	//
	// public static void deleteProduct(Connection conn, String code) throws
	// SQLException {
	// String sql = "Delete Product where Code= ?";
	//
	// PreparedStatement pstm = conn.prepareStatement(sql);
	//
	// pstm.setString(1, code);
	//
	// pstm.executeUpdate();
	// }

}
