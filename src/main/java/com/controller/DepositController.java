package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegisterDao;
import com.model.Register;

import MyMoney.verify.send.SendOtp;

/**
 * Servlet implementation class DepositController
 */
@WebServlet("/DepositController")
public class DepositController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepositController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		int amt=Integer.parseInt(request.getParameter("amt"));
		String pass=request.getParameter("pass");
		
		ResultSet rs=null;
		ServletContext st=request.getServletContext();
		int regid=(int)st.getAttribute("regId");
		String password=(String)st.getAttribute("pass");
		Register reg=(Register)st.getAttribute("regobj");
		String mob=(String)st.getAttribute("mobno");
		RegisterDao rd=new RegisterDao();
		if(pass.contentEquals(password) && mob.contentEquals(phone) ) {
			int i=rd.depositMoney(regid, reg, amt);
			if(i>0) {
				rs=rd.userProfile(regid);
				try {
					if(rs.next()) {
						String type1="Deposited";
						SendOtp so=new SendOtp();
						String messg1="Dear Customer, Thank Your For Making successfull transaction.Your Transaction with XXXXXX id has been successfully processed. Your Deposited Amount is Rs."+amt+"\nAvailable Balance is Rs."+rs.getInt(10)+"\n"+new Date().toLocaleString()+"\nRegards,\nMyMoney Portal Team";
						so.sendSms(messg1, phone);
						rd.transactionHistory(regid, amt, type1);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			response.sendRedirect("transactionSuccess.jsp");
		}
		else {
			int value=0;
			st.setAttribute("dValue", value);
			response.sendRedirect("Deposit.jsp");
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
