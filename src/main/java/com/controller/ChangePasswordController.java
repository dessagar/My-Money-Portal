package com.controller;

import java.io.IOException;

import javax.net.ssl.SSLSessionContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSessionContext;

import com.dao.RegisterDao;

import MyMoney.verify.send.SendMail;

/**
 * Servlet implementation class ChangePasswordController
 */
@WebServlet("/ChangePasswordController")
public class ChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oldpass=request.getParameter("oldpass");
		String newpass=request.getParameter("newpass");
		ServletContext st = request.getServletContext();
		String email=(String)st.getAttribute("email");
		final String subject = "Successfully Updated..!!!";
		final String messg = "Dear User\n"
				+ "You Have Successfully updated your password.Your updated password is : \n"
				
				+"Password = "+newpass+"\n\n"
				+"Now You Can Login Through This Password Only.\n"
				+"Regards,\n"
				+"MyMoney Portal Team";
		SendMail sm=new SendMail();
		RegisterDao rd=new RegisterDao();
		int i=rd.changePass(oldpass,newpass);
		if(i>0) {
			sm.sendEmail(email, newpass, messg, subject);
			st.setAttribute("messg", i);
			response.sendRedirect("changePass.jsp");
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
