package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegisterDao;
import com.model.Register;



/**
 * Servlet implementation class SendMoneyController
 */
@WebServlet("/SendMoneyController")
public class SendMoneyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMoneyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("txtName");
		String email=request.getParameter("txtEmail");
		String phone=request.getParameter("txtPhone");
		int amt=Integer.parseInt(request.getParameter("txtAmt"));
		String msg=request.getParameter("txtMsg");
		
		ServletContext st=request.getServletContext();
		st.setAttribute("sAmt", amt);
		st.setAttribute("sEmail", email);
		st.setAttribute("sPhone", phone);
		
//		String mobno=(String)st.getAttribute("mobno");
//		int regid=(int)st.getAttribute("regId");
		
		RegisterDao rd=new RegisterDao();
		ResultSet rs=rd.sendMoney(email, phone);
		try {
			if(rs.next()) {
				//if(phone.contentEquals(rs.getString(8)) && email.contentEquals(rs.getString(7))) {
					response.sendRedirect("confirmSend.jsp");
					//rd.sendMoney(amt,email,regid);
				//}
			}
			else {
				int val=0;
				st.setAttribute("error", val);
				response.sendRedirect("SendMoney.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
