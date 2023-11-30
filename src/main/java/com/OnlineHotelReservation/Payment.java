package com.OnlineHotelReservation;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// handling payment imformation
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 // Extract payment information from the request parameters
		String CardHolderName = request.getParameter("CardHolderName");
		String CardHolderEmail = request.getParameter("CardHolderEmail");
		String CardHolderCountry = request.getParameter("CardHolderCountry");
		String CardHolderCity = request.getParameter("CardHolderCity");
		String CardType = request.getParameter("CardType");
		String CardNumber = request.getParameter("CardNumber");
		String CardEXP = request.getParameter("CardEXP");
		String CardCVV = request.getParameter("CardCVV");
		
		// Get a database connection 
		Statement statementObject = GetConnection.getConnection();
		
		//SQL query to insert payment information into the database
		String sql = "INSERT INTO payment(`UserName`, `PaymentEmail`, `Country`, `City`, `CardType`, `CardNumber`, `CardExp`, `CardCVV`) VALUES('"+CardHolderName+"','"+CardHolderEmail+"','"+CardHolderCountry+"','"+CardHolderCity+"','"+CardType+"','"+CardNumber+"','"+CardEXP+"',"+CardCVV+")";
		
		try {
			
			// SQL query to insert the payment information into the database
			statementObject.execute(sql);
		} catch (SQLException e) {
			
			// Handle any SQL exceptions 
			e.printStackTrace();
		}
		
		response.sendRedirect("home.jsp");
		
		
	}

}
