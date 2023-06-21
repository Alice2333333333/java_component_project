package com.mvc.controller;
import com.mvc.bean.RegisterBean;
import com.mvc.util.DBConnection;

import java.io.IOException;
import java.sql.Connection;
//import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("username");
		String pass = request.getParameter("password");

		RegisterBean registerbean = new RegisterBean(); 
		registerbean.setUserName(user); 
		registerbean.setPassword(pass);

		String usernameDB = registerbean.getUserName();
		System.out.println(usernameDB);
		String passwordDB = registerbean.getPassword();
		System.out.println(passwordDB);
		
		Connection con = null;

		try {
			con = DBConnection.createConnection();
	        PreparedStatement pstmt = con.prepareStatement("insert into user (username,password) values (?, ?)");
	        pstmt.setString(1, usernameDB);
	        pstmt.setString(2, passwordDB);
	        pstmt.executeUpdate();
	        System.out.println("Data inserted successfully.");
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
	        
		 }
			 catch(SQLException e)
			 {
				e.printStackTrace();
			 }
	}
}
