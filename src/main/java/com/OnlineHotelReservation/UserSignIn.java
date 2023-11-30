package com.OnlineHotelReservation;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserSignIn")
public class UserSignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String userName = request.getParameter("username");
		Statement statementObject = GetConnection.getConnection();
		String sql = "INSERT INTO users(UserEmail,UserPassword,UserName) VALUES('"+email+"','"+password+"','"+userName+"')";
		
		try {
			statementObject.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("login.jsp");
	}

}
