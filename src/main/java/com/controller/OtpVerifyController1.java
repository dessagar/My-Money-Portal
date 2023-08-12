package com.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyMoney.verify.send.SendOtp;

/**
 * Servlet implementation class OtpVerifyController1
 */
@WebServlet("/OtpVerifyController1")
public class OtpVerifyController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OtpVerifyController1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mobno=request.getParameter("mobno");
		SendOtp so=new SendOtp();
		String otp=so.generateOTP();
		String messg="Hello This SMS Is Send By MyMoney Portal For Mobile Verification.Your OTP(One Time Password) is : "+otp +"\n"+new Date().toLocaleString();
		so.sendSms(messg, mobno);
		ServletContext sc=getServletContext();
		sc.setAttribute("mobOtp", otp);
		response.sendRedirect("VerifyOtp.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
