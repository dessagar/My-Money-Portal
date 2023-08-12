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
 * Servlet implementation class ConfirmController
 */
@WebServlet("/SendMoneyConfirmController")
public class SendMoneyConfirmController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMoneyConfirmController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ResultSet rs=null;
		String pass=request.getParameter("pass");
		
		ServletContext st=request.getServletContext();
		String phone=(String)st.getAttribute("sPhone");
		String email=(String)st.getAttribute("sEmail");
		int amt=(int)st.getAttribute("sAmt");
		
		int regid=(int)st.getAttribute("regId");
		Register reg=(Register)st.getAttribute("regobj");
		String password=(String)st.getAttribute("pass");
		String mobno=(String)st.getAttribute("mobno");
		RegisterDao rd=new RegisterDao();
		if(pass.contentEquals(password)) {
			int i=rd.sendMoney(regid,email,amt,reg);
			if(i>0) {
				rs=rd.userProfile(regid);
				try {
					if(rs.next()) {
						String type1="Debited";
						SendOtp so=new SendOtp();
						String messg1="Dear Customer, Thank Your For Making successfull transaction.Your Transaction with XXXXXX id has been successfully processed. Your Debited Amount is Rs."+amt+"\nAvailable Balance is Rs."+rs.getInt(10)+"\n"+new Date().toLocaleString()+"\nRegards,\nMyMoney Portal Team";
						so.sendSms(messg1, mobno);
						rd.transactionHistory(regid, amt, type1);
					}
					rs=rd.forgotPass(email);
					if(rs.next()) {
						String type2="Credited";
						SendOtp so=new SendOtp();
						String messg2="Dear Customer, Thank Your For Making successfull transaction.Your Transaction with XXXXXX id has been successfully processed. Your Credited Amount is Rs."+amt+"\nAvailable Balance is Rs."+rs.getInt(10)+"\n"+new Date().toLocaleString()+"\nRegards,\nMyMoney Portal Team";
						so.sendSms(messg2, phone);
						rd.transactionHistory(rs.getInt(1), amt, type2);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				response.sendRedirect("transactionSuccess.jsp");
			}
		}
		else {
			int value=0;
			st.setAttribute("sValue", value);
			response.sendRedirect("confirmSend.jsp");
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
