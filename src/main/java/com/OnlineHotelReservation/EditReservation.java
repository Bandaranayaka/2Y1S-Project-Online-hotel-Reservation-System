package com.OnlineHotelReservation;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditReservation")
public class EditReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int RID = Integer.parseInt(request.getParameter("RID"));
		String Name = request.getParameter("Name");
		String Email = request.getParameter("Email");
		String CheckInDate = request.getParameter("CheckInDate");
		String CheckOutDate = request.getParameter("CheckOutDate");
		String NoOfGuests = request.getParameter("NoOfGuests");
		String RoomType = request.getParameter("RoomType");
		int NoOfRooms = Integer.parseInt(request.getParameter("NoOfRooms"));
		
		Boolean Breakfast , WiFi , Parking , PoolAccess , SpaAccess;
		
		if (request.getParameter("Breakfast") == null) {
			Breakfast = false;
		} else {
			Breakfast = true;
			
		}
		if (request.getParameter("WiFi") == null) {
			WiFi = false;
		} else {
			WiFi = true;
			
		}
		if (request.getParameter("Parking") == null) {
			Parking = false;
		} else {
			Parking = true;
			
		}
		if (request.getParameter("PoolAccess") == null) {
			PoolAccess = false;
		} else {
			PoolAccess = true;
			
		}
		if (request.getParameter("SpaAccess") == null) {
			SpaAccess = false;
		} else {
			SpaAccess = true;
			
		}		
		
		Statement statement = GetConnection.getConnection();
		String sql = "UPDATE reservation SET Name='"+Name+"' , Email='"+Email+"' , CheckIn='"+CheckInDate+"' , CheckOut='"+CheckOutDate+"' , Guests='"+NoOfGuests+"' , RoomType='"+RoomType+"' , Rooms="+NoOfRooms+" , Breakfast="+Breakfast+" , WIFI="+WiFi+" , Parking="+Parking+" , Pool="+PoolAccess+" , Spa="+SpaAccess+" WHERE RID="+RID;
		
		
		try {
			boolean updated = statement.execute(sql);
			System.out.print(updated);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("GetUserReservation");
	}

}
