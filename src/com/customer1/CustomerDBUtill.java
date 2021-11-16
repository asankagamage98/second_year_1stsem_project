package com.customer1;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtill {
	
	
	private static Connection con = null;
	private  static Statement  stat =null;
	private static ResultSet rs =null;
	
	boolean isSuccess =false;

	
	//register page
	//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	public static boolean intertPatientDetail( String firstname,String middlename,String lastname,String phone, String gmail,String add1,String add2 ,String nic ,String username,String password,String province,int age,String city) {
		
			boolean isSuccess =false;
			
			 
			try {
				con =DBconnection.getConnection();
				stat =con.createStatement();
				
				String sql = "insert into customerdb values(0,'"+firstname+"','"+middlename+"','"+lastname+"','"+phone+"','"+gmail+"','"+add1+"','"+add2+"','"+nic+"','"+username+"','"+password+"','"+province+"','"+age+"','"+city+"')";
				
				int xr = stat.executeUpdate(sql);
				
				
				if(xr>0) {
					
					isSuccess =true;
				}
				else {
					isSuccess =false;
				}
				
			}
			catch(Exception e) {
				
				e.printStackTrace();
				isSuccess =false;
			}
			
			
			return isSuccess;
	}
	
	
	/*	+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	New Methods
	+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

//login page
	
public static int loginValidate(String username, String password) {
	
	
	
	int uid = -1;
	
	try {
		con =DBconnection.getConnection();
		stat =con.createStatement();
		
		String sql ="select * from customerdb where username='"+username+"' and password='"+password+"';";
		rs =stat.executeQuery(sql);

		
		if(rs.next()) {
			uid = rs.getInt(1);
		}
		
	} catch (Exception e) {
		uid = -1;
		e.printStackTrace();
	}
	
	return uid;
}


public static ArrayList<Customer> getCustomer(int id){
	

	
	ArrayList<Customer> cus = new ArrayList<Customer>();
	
	
	
	try {
		con =DBconnection.getConnection();
		stat =con.createStatement();
		
		String sql ="select * from customerdb where id='"+id+"';";
		
		rs =stat.executeQuery(sql);
		System.out.println(rs);
		
		if(rs.next()) {
			int uid       = rs.getInt(1);
			String first = rs.getString(2); 
			String middle = rs.getString(3);
			String last   = rs.getString(4);
			String phone = rs.getString(5); 
			String gmail = rs.getString(6);
			String add1   = rs.getString(7);
			String add2 = rs.getString(8);
			String nic   = rs.getString(9);
			String username = rs.getString(10);
			String passw   = rs.getString(11);
			String province   = rs.getString(12);
			int age       =rs.getInt(13);
			String city = rs.getString(14);

			System.out.println(first);	
			
			Customer c = new Customer(uid,first,middle,last,phone,gmail,add1,add2,nic,username,passw,province,age,city);
			cus.add(c);
		}
		
	
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return cus;
   }

//
//for upadate profile


public static boolean updateProfile(String id,String fname,String Mname,String Lname,String add1,String add2,String city, String pro,String nic,String num,String age,String Uname,String password,String gmail) {
	boolean Success =false;
	try {
		con =DBconnection.getConnection();
		stat =con.createStatement();
		String sql="update customerdb set first_name='"+fname+"',middle_name='"+Mname+"',last_name='"+Lname+"',phone_number='"+num+"',gmail='"+gmail+"',address1='"+add1+"',address2='"+add2+"',nic_no='"+nic+"',username='"+Uname+"',password='"+password+"',province='"+pro+"',age='"+age+"',city='"+city+"'"
					+"where id='"+id+"'";
				
		int rs =stat.executeUpdate(sql);
		
		if(rs >0) {
			
			Success =true;
		}
		else {
			Success =false;
		}
		
		
		
	}catch(Exception e) {
		
		e.printStackTrace();
	}
	
	
	return  Success; 
	
   }

	public static List<Customer> getPatientUpdateDetails(String id){
		
		int convertedId = Integer.parseInt(id);
		
		ArrayList<Customer> cus = new ArrayList<Customer>();
		
		try {
			con =DBconnection.getConnection();
			stat =con.createStatement();
			
			String sql ="select * from customerdb where id='"+convertedId+"'";
			rs =stat.executeQuery(sql);

			while(rs.next()) {
				int uid       = rs.getInt(1);
				String first = rs.getString(2); 
				String middle = rs.getString(3);
				String last   = rs.getString(4);
				String phone = rs.getString(5); 
				String gmail = rs.getString(6);
				String add1   = rs.getString(7);
				String add2 = rs.getString(8);
				String nic   = rs.getString(9);
				String username = rs.getString(10);
				String passw   = rs.getString(11);
				String province   = rs.getString(12);
				int age       =rs.getInt(13);
				String city = rs.getString(14);

				Customer c = new Customer(uid,first,middle,last,phone,gmail,add1,add2,nic,username,passw,province,age,city);
				cus.add(c);

			}
			    
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return cus;

		 
	}
	
	
	
	
	//delete account
	
	
	public static boolean deletAccount(String id) {
		
		boolean Success =false;
		
		//int convertedId = Integer.parseInt(id);
		
		try {
			con =DBconnection.getConnection();
			stat =con.createStatement();
			
			String sql ="DELETE FROM `echanneling`.`customerdb` WHERE (`id` = '"+id+"')";

			
			int r =stat.executeUpdate(sql);
			
			
			if(r>0) {
				
				Success =true;
				
				
			}
			else {
				
				Success=false;
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		
		return Success;
		
	}


}    


	
	
	
	
	
	