package com.OnlineHotelReservation;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Classes.PaymentClass;

@WebServlet("/GetPaymentDetailsFromPID")
public class GetPaymentDetailsFromPID extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int PID = Integer.parseInt(request.getParameter("PID"));
		
		Statement statementObject = GetConnection.getConnection();
		String sql = "SELECT * FROM payment WHERE PaymentID =" + PID;
		PaymentClass payment = new PaymentClass();
		try {
			ResultSet result = statementObject.executeQuery(sql);
			if(result.next()) {
				payment.setPid(result.getInt(1));
				payment.setUsername(result.getString(2));
				payment.setPaymentEmail(result.getString(3));
				payment.setCountry(result.getString(4));
				payment.setCity(result.getString(5));
				payment.setCardType(result.getString(6));
				payment.setCardNumber(result.getString(7));
				payment.setCardExp(result.getString(8));
				payment.setCardCVV(result.getInt(9));
			}
			
			
		} catch (SQLException e) {
			System.out.print("Error Inserting Record "+ e.getLocalizedMessage());
		}
		
		request.setAttribute("payment", payment);
		RequestDispatcher dispatcher = request.getRequestDispatcher("EditPayment.jsp");
		dispatcher.forward(request, response);
		
	}

}
