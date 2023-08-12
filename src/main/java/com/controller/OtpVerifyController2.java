package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OtpVerifyController2
 */
@WebServlet("/OtpVerifyController2")
public class OtpVerifyController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OtpVerifyController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext sc=getServletContext();
		PrintWriter pw=response.getWriter();
		String code=request.getParameter("otp");
		
		String otp=(String)sc.getAttribute("mobOtp");

		int value=0;

		if(code.equals(otp)) {
			value=1;
			//pw.print("<h1>sucess</h1>");
			//System.out.println(value);
			sc.setAttribute("data", value);
			//session.setAttribute("data", value);
			response.sendRedirect("VerifyOtp.jsp");
		}
		else {
			//pw.print("<h1>error</h1>");
			//System.out.println(value);
			sc.setAttribute("data", value);
			//session.setAttribute("data", value);
			response.sendRedirect("VerifyOtp.jsp");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
