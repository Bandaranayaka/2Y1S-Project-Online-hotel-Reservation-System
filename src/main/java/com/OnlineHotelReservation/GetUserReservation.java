package com.OnlineHotelReservation;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Classes.ReservationClass;
import com.Classes.User;

@WebServlet("/GetUserReservation")
public class GetUserReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		List<ReservationClass> Reservations = new ArrayList<>();
		
		Statement statementObject = GetConnection.getConnection();
		String sql = "SELECT * FROM reservation WHERE Name = '" + user.getUserName() + "' AND Email = '" + user.getEmail() + "'";
		
		ResultSet resultSetObject;
		try {
			resultSetObject = statementObject.executeQuery(sql);

			while(resultSetObject.next()) {
				ReservationClass reservation = new ReservationClass();
				reservation.setRID(resultSetObject.getInt(1));
				reservation.setName(resultSetObject.getString(2));
				reservation.setEmail(resultSetObject.getString(3));
				reservation.setCheckIn(resultSetObject.getString(4));
				reservation.setCheckOut(resultSetObject.getString(5));
				reservation.setGuests(resultSetObject.getInt(6));
				reservation.setRoomType(resultSetObject.getString(7));
				reservation.setRooms(resultSetObject.getInt(8));
				
				//breakfast
				if (resultSetObject.getInt(9)==1) {
					reservation.setBreakfast("YES");
				} else {
					reservation.setBreakfast("NO");
				}
				//wifi
				if (resultSetObject.getInt(10)==1) {
					reservation.setWiFI("YES");
				} else {
					reservation.setWiFI("NO");
				}
				//parking
				if (resultSetObject.getInt(11)==1) {
					reservation.setParking("YES");
				} else {
					reservation.setParking("NO");
				}
				//pool
				if (resultSetObject.getInt(12)==1) {
					reservation.setPool("YES");
				} else {
					reservation.setPool("NO");
				}
				//spa
				if (resultSetObject.getInt(13)==1) {
					reservation.setSpa("YES");
				} else {
					reservation.setSpa("NO");
				}
				Reservations.add(reservation);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		session.setAttribute("ReservationList", Reservations);
		response.sendRedirect("MyReservations.jsp");
	}

}
