package com.OnlineHotelReservation;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Reservation")
public class Reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Name = request.getParameter("Name");
		String Email = request.getParameter("Email");
		String CheckInDate = request.getParameter("CheckInDate");
		String CheckOutDate = request.getParameter("CheckOutDate");
		String NoOfGuests = request.getParameter("NoOfGuests");
		String RoomType = request.getParameter("RoomType");
		String NoOfRooms = request.getParameter("NoOfRooms");
		
		Boolean Breakfast , WiFi , Parking , PoolAccess , SpaAccess , loyalty;
		
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
		if (request.getParameter("loyalty") == null) {
			loyalty = false;
		} else {
			loyalty = true;
			
		}
		
		
		
		Statement statementObject = GetConnection.getConnection();
		String sql = "INSERT INTO reservation(`Name`,`Email`,`CheckIn`,`CheckOut`,`Guests`,`RoomType`,`Rooms`,`Breakfast`,`WIFI`,`Parking`,`Pool`,`Spa`,`loyalty`) VALUES('"+Name+"','"+Email+"','"+CheckInDate+"','"+CheckOutDate+"',"+NoOfGuests+",'"+RoomType+"',"+NoOfRooms+","+Breakfast+","+WiFi+","+Parking+","+PoolAccess+","+SpaAccess+","+loyalty+")";
		
		try {
			statementObject.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("name", Name);
		request.setAttribute("email", Email);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("payment.jsp");
		requestDispatcher.forward(request, response);
	}

}
