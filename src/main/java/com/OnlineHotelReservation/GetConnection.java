package com.OnlineHotelReservation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class GetConnection {
	
		static String url = "jdbc:mysql://localhost:3306/online_hotel_reservation";
		static String DBusername = "root";
		static String DBpassword = "";
		
		public static Statement getConnection() {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			Connection conObj = null;
			Statement statementObj = null;
			
			try {
				conObj = DriverManager.getConnection(url,DBusername,DBpassword);
				statementObj = conObj.createStatement();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return statementObj;
		}
	
}
