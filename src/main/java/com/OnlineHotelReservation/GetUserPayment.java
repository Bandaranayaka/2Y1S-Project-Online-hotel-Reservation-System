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

import com.Classes.PaymentClass;
import com.Classes.User;

@WebServlet("/GetUserPayment")
public class GetUserPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//session associated with the request
		HttpSession session = request.getSession();
		
		
		//retrive the user infomation from the session
		User user = (User) session.getAttribute("user");
		
		//store payment information
		List<PaymentClass> Payments = new ArrayList<>();
		
		
		//get database connection
		Statement statementObject = GetConnection.getConnection();
		
        //SQL query to retrieve payment information from the database

		String sql = "SELECT * FROM payment WHERE UserName = '" + user.getUserName() + "' AND PaymentEmail = '" + user.getEmail() + "'";
		
		ResultSet resultSetObject;
		try {
			// Execute the SQL query
			resultSetObject = statementObject.executeQuery(sql);

			while(resultSetObject.next()) {				
				PaymentClass pay = new PaymentClass();
				pay.setPid(resultSetObject.getInt(1));
				pay.setUsername(resultSetObject.getString(2));
				pay.setPaymentEmail(resultSetObject.getString(3));
				pay.setCountry(resultSetObject.getString(4));
				pay.setCity(resultSetObject.getString(5));
				pay.setCardType(resultSetObject.getString(6));
				pay.setCardNumber(resultSetObject.getString(7));
				pay.setCardExp(resultSetObject.getString(8));
				pay.setCardCVV(resultSetObject.getInt(9));
				
                // Add payment object to the Payments list
				Payments.add(pay);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
      // Store the retrieved payment information in the session
		session.setAttribute("Payments", Payments);
		
        // Redirect the user to the "MyPayment.jsp" page 
		response.sendRedirect("MyPayment.jsp");
	}

}
