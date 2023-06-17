package com.mvc.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.bean.testbean;
//import com.mvc.dao.LoginDao;
import com.mvc.util.DBConnection;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet()
	{
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String invalid = "Invalid user credentials";

		testbean loginBean = new testbean(); 
		loginBean.setUserName(userName); 
		loginBean.setPassword(password);

//		LoginDao loginDao = new LoginDao(); 
//
//		String userValidate = loginDao.authenticateUser(loginBean);
		
		String username = loginBean.getUserName();
		String pass = loginBean.getPassword();

		 Connection con = null;
		 Statement statement = null;
		 ResultSet resultSet = null;

		 String usernameDB = "";
		 String passwordDB = "";

		 try
		 {
			 con = DBConnection.createConnection(); //Fetch database connection object
			 statement = con.createStatement(); //Statement is used to write queries. Read more about it.
			 resultSet = statement.executeQuery("select username,password from user"); //the table name is users and userName,password are columns. Fetching all the records and storing in a resultSet.

			 while(resultSet.next()) // Until next row is present otherwise it return false
			 {
			  usernameDB = resultSet.getString("userName"); //fetch the values present in database
			  passwordDB = resultSet.getString("password");

			   if(userName.equals(usernameDB) && password.equals(passwordDB))
			   {
				   
				HttpSession session = request.getSession();
				session.setAttribute("username", userName);
				request.getRequestDispatcher("/Home.jsp").forward(request, response);
//				  return "SUCCESS"; ////If the user entered values are already present in the database, which means user has already registered so return a SUCCESS message.
			   }
			 }
		 }
			 catch(SQLException e)
			 {
				e.printStackTrace();
			 }
		 
		 request.setAttribute("errMessage", invalid); 
		 request.getRequestDispatcher("/Login.jsp").forward(request, response);
//			 return "Invalid user credentials"; // Return appropriate message in case of failure
	 }

//		if(userValidate.equals("SUCCESS")) 
//		 {
//			HttpSession session = request.getSession();
//			session.setAttribute("username", userName);
//			request.getRequestDispatcher("/Home.jsp").forward(request, response);
//		 }
//		 else
//		 {
//			 request.setAttribute("errMessage", userValidate); 
//			 request.getRequestDispatcher("/Login.jsp").forward(request, response);
//		 }
    

}