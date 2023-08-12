package com.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.RegisterDao;
import com.model.Register;

import MyMoney.verify.send.SendMail;

/**
 * Servlet implementation class EmailVerifyController1
 */
@WebServlet("/EmailVerifyController1")
public class EmailVerifyController1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public void init(ServletConfig config) throws ServletException{
    	   super.init(config);
    	   int otp=0;
    	   getServletContext().setAttribute("codedata", otp);
       }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailVerifyController1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		SendMail sm=new SendMail();
		String otp=sm.generateOTP();
		final String subject = "Verification Code By MyMoney Portal";
		final String messg="Dear user,\n"
				+ "Welcome To MyMoney Portal.\n"
				+ "Your Email Verification Code is : \n\n"
				+"Verification Code = "+otp+"\n\n"
				+"Regards,\n"
				+"MyMoney Portal Team";
		sm.sendEmail(email, otp, messg,subject);
		
		ServletContext sc=getServletContext();
		sc.setAttribute("codedata", otp);
//		RegisterDao rd=new RegisterDao();
		//HttpSession session=request.getSession();
//		int regId=(int)session.getAttribute("reg");
//		rd.emailVerify(email,otp,regId);
		//session.setAttribute("codedata", otp);
		//request.setAttribute("codedata", "otp");
		//response.sendRedirect("EmailVerifyController2");
		//request.getRequestDispatcher("VerifyCode.jsp").forward(request, response);
		response.sendRedirect("VerifyCode.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
