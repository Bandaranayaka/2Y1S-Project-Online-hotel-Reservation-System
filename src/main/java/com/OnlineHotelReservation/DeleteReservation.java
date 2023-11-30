package com.OnlineHotelReservation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteReservation")
public class DeleteReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int RID = Integer.parseInt(request.getParameter("RID"));
		
		Statement statementObject = GetConnection.getConnection();
		String sql = "DELETE FROM reservation WHERE RID =" + RID;
		PrintWriter output = response.getWriter();
		
		try {
			boolean executed = statementObject.execute(sql);
			if (executed) {
				output.print("<script>alert('Payment Deleted')</script>");
			}
		} catch (SQLException e) {
			System.out.print("Error Inserting Record "+ e.getLocalizedMessage());
		}
		
		
		response.sendRedirect("GetUserReservation");
		
	}

}
