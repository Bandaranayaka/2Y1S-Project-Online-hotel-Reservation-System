package com.OnlineHotelReservation;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditPayment")
public class EditPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int PID = Integer.parseInt(request.getParameter("PID"));
		String CardHolderName = request.getParameter("CardHolderName");
		String CardHolderEmail = request.getParameter("CardHolderEmail");
		String CardHolderCountry = request.getParameter("CardHolderCountry");
		String CardHolderCity = request.getParameter("CardHolderCity");
		String CardType = request.getParameter("CardType");
		String CardNumber = request.getParameter("CardNumber");
		String CardEXP = request.getParameter("CardEXP");
		int CardCVV = Integer.parseInt(request.getParameter("CardCVV"));
		
		Statement statement = GetConnection.getConnection();
		String sql = "UPDATE payment SET UserName='"+CardHolderName+"', PaymentEmail='"+CardHolderEmail+"', Country='"+CardHolderCountry+"', City='"+CardHolderCity+"', CardType='"+CardType+"', CardNumber='"+CardNumber+"', CardExp='"+CardEXP+"', CardCVV="+CardCVV+" WHERE PaymentID = " + PID;
		
		try {
			statement.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("GetUserPayment");
		
	}

}
