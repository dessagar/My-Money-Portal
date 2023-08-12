package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

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
 * Servlet implementation class RegController
 */
@WebServlet("/RegController")
public class RegController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String occupation=request.getParameter("occupation");
		String mobno=request.getParameter("mobno");
		int accbal=Integer.parseInt(request.getParameter("accbal"));
		SendMail se=new SendMail();
		String password=se.generateRandomPassword();
		final String subject = "Login Credential For SignIn on MyMoney Portal";
		final String messg = "Dear "+fname+"\t"+lname+",\n"
				+ "Welcome To MyMoney Portal.\nMyMoney portal is a platform which you can perform transaction i.e. Send money,recharge,withdrawl,deposit etc.\n"
				+ "Accordingly, we are sending you Username & Password to access the our portal and perform the transactions.\n\n"
				+ "Username = "+email+"\n"
				+"Password = "+password+"\n\n"
				+"Regards,\n"
				+"MyMoney Portal Team";
		int i=se.sendEmail(email, password,messg,subject);
		
		int regId = 0;
		ArrayList<Integer> list=new ArrayList<Integer>();
		for(i=1;i<5000;i++) {
			list.add(new Integer(i));
		}
		Collections.shuffle(list);
		for(i=1;i<=2000;i++) {
			regId=list.get(i);
		}
		
		RegisterDao rd=new RegisterDao();
		Register reg=new Register(regId,fname, lname, city, state, gender, email, occupation, mobno, accbal,password);
		rd.createAccount(reg);
		
//		HttpSession session=request.getSession();
//		session.setAttribute("regobj", reg);
		
		response.sendRedirect("Login.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
