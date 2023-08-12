package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegisterDao;

import MyMoney.verify.send.SendMail;

/**
 * Servlet implementation class ForgotPasswordController
 */
@WebServlet("/ForgotPasswordController")
public class ForgotPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		SendMail sm=new SendMail();
		RegisterDao rd=new RegisterDao();
		ResultSet rs=rd.forgotPass(email);
		ServletContext st=request.getServletContext();
		int i=0;
		try {
			if(rs.next())
			{
				String userEmail=rs.getString(7);
				String userPass=rs.getString(11);
				final String subject = "Forgot Password ? Don't Worry.";
				final String messg = "Dear User,\n"
						+ "Welcome To MyMoney Portal.\nMyMoney portal is a platform which you can perform transaction i.e. Send money,recharge,withdrawl,deposit etc.\n"
						+ "We are here for helping you to login on MyMoney Portal.\n\n"
						+ "Username = "+userEmail+"\n"
						+"Password = "+userPass+"\n\n"
						+"Regards,\n"
						+"MyMoney Portal Team";
				i=1;
				sm.sendEmail(userEmail, userPass, messg, subject);
				st.setAttribute("value", i);
				response.sendRedirect("forgotPass.jsp");
			}
			else {
				st.setAttribute("value", i);
				response.sendRedirect("forgotPass.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//String userEmail=(String)st.getAttribute("email");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
