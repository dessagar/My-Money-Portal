package com.dao;

import java.sql.Timestamp;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import com.model.Register;

import money.dao.inter.RegisterDaoInter;

public class RegisterDao implements RegisterDaoInter{

	Connection con=null;
	PreparedStatement ps=null;
	int i=0;
	public int createAccount(Register reg) {
		con=DbConnection.getConnection();
		
		try {
			ps=con.prepareStatement("insert into money_register values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1,reg.getRegId());
			ps.setString(2, reg.getFname());
			ps.setString(3, reg.getLname());
			ps.setString(4, reg.getCity());
			ps.setString(5, reg.getState());
			ps.setString(6, reg.getGender());
			ps.setString(7, reg.getEmail());
			ps.setString(8, reg.getMobno());
			ps.setString(9, reg.getOccupation());
			ps.setInt(10, reg.getAccbal());
			ps.setString(11, reg.getPassword());
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return i;
	}
//	public List<Register> displayAll()
//	{
//		List<Register> lst=new ArrayList<Register>();
//		try {
//			con=DbConnection.getConnection();
//			String str="select * from money_register";
//			java.sql.Statement st=con.createStatement();
//			ResultSet rs=st.executeQuery(str);
//			while(rs.next())
//			{
//				Register reg=new Register(rs.getInt(1),  rs.getString(2), rs.getString(3),rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getString(11));
//				lst.add(reg);
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return lst;
//	}
	public ResultSet sendMoney(String email,String phone) {
		ResultSet rs=null;
		con=DbConnection.getConnection();
		try {
			ps=con.prepareStatement("select * from money_register where email=? and mobno=?");
			ps.setString(1, email);
			ps.setString(2, phone);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet validateUser(String email, String pass) {
		ResultSet rs=null;
		con=DbConnection.getConnection();
		try {
			ps=con.prepareStatement("select * from money_register where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
		
	}
	public ResultSet userProfile(int regId) {
		ResultSet rs=null;
		con=DbConnection.getConnection();
		try {
			ps=con.prepareStatement("select * from money_register where regid=?");
			ps.setInt(1, regId);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
		
	}
	public int changePass(String oldpass, String newpass) {
		con=DbConnection.getConnection();
		try {
			ps=con.prepareStatement("update money_register set password=? where password=?");
			ps.setString(1, newpass);
			ps.setString(2, oldpass);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public ResultSet forgotPass(String email) {
		ResultSet rs=null;
		con=DbConnection.getConnection();
		try {
			ps=con.prepareStatement("select * from money_register where email=?");
			ps.setString(1, email);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int sendMoney(int regid,String email,int amt,Register reg) {
		con=DbConnection.getConnection();
		try {
			ps=con.prepareStatement("update money_register set accbal=? where email=?");
			ps.setInt(1, reg.getAccbal()+amt);
			ps.setString(2, email);
			i=ps.executeUpdate();
			ps=con.prepareStatement("update money_register set accbal=? where regid=?");
			ps.setInt(1, reg.getAccbal()-amt);
			ps.setInt(2, regid);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public int depositMoney(int regid,Register reg,int amt)
	{
		con=DbConnection.getConnection();
		try {
			ps=con.prepareStatement("update money_register set accbal=? where regid=?");
			ps.setInt(1, reg.getAccbal()+amt);
			ps.setInt(2, regid);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public int transactionHistory(int regId,int amt,String type)
	{
		i=0;
		con=DbConnection.getConnection();
		Timestamp date=new Timestamp(new Date().getTime());
		Random rd=new Random();
		//String type="Recharge";
		int tr_id=rd.nextInt(200000000);
		try {
			PreparedStatement ps=con.prepareStatement("insert into money_transaction values(?,?,?,?,?)");
			ps.setInt(1, tr_id);
			ps.setInt(2, amt);
			ps.setString(3, type);
			ps.setTimestamp(4,date);
			ps.setInt(5, regId);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	
	
	

}
