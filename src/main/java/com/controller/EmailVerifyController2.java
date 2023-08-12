package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.RegisterDao;

/**
 * Servlet implementation class EmailVerifyController2
 */
@WebServlet("/EmailVerifyController2")
public class EmailVerifyController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmailVerifyController2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String code=request.getParameter("code");
		//HttpSession session=request.getSession();
		ServletContext sc=getServletContext();
		String otp=(String)sc.getAttribute("codedata");

		int value=0;

		if(code.equals(otp)) {
			value=1;
			//pw.print("<h1>sucess</h1>");
			//System.out.println(value);
			sc.setAttribute("data", value);
			//session.setAttribute("data", value);
			response.sendRedirect("VerifyCode.jsp");
		}
		else {
			//pw.print("<h1>error</h1>");
			//System.out.println(value);
			sc.setAttribute("data", value);
			//session.setAttribute("data", value);
			response.sendRedirect("VerifyCode.jsp");
		}

		//		request.getRequestDispatcher("VerifyCode.jsp").forward(request, response);
		//		session.setAttribute("data", value);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
