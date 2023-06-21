package com.mvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.dao.LoginDao;
import com.mvc.bean.LoginBean;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet()
	{
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		LoginBean loginBean = new LoginBean(); 
		loginBean.setUserName(userName); 
		loginBean.setPassword(password);

		LoginDao loginDao = new LoginDao(); 
		String userValidate = loginDao.authenticateUser(loginBean);

		if(userValidate.equals("SUCCESS")){
			HttpSession session = request.getSession();
			session.setAttribute("username", userName);
			request.getRequestDispatcher("/Home.jsp").forward(request, response);
		 } else {
			 request.setAttribute("errMessage", userValidate); 
			 request.getRequestDispatcher("/Login.jsp").forward(request, response);
		 }
	}
}