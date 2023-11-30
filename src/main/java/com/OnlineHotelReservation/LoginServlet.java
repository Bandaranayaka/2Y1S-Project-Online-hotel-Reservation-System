package com.OnlineHotelReservation;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Classes.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = null;
		
		Statement statementObject = GetConnection.getConnection();
		String sql = "SELECT * FROM users WHERE UserEmail='" + email +"' AND UserPassword='" + password + "'";
		
		ResultSet resultSetObj;
		try {
			resultSetObj = statementObject.executeQuery(sql);
			
			if(resultSetObj.next()) {
				int uid = resultSetObj.getInt(1);
				String uemail = resultSetObj.getString(2);
				String upass = resultSetObj.getString(3);	
				String username =  resultSetObj.getString(4);
				user = new User();
				user.setUID(uid);
				user.setEmail(uemail);
				user.setPassword(upass);
				user.setUserName(username);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		if (user == null) {
			session.setAttribute("error", "Invalid Username and Password");
			response.sendRedirect("login.jsp");
			return;
		}
		
		session.setAttribute("user", user);
		response.sendRedirect("home.jsp");
	}

}
