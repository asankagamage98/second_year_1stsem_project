package com.customer1;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/updateProfileServlet")
public class updateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String fname =request.getParameter("nameF");
		String Mname =request.getParameter("nameM");
		String Lname =request.getParameter("nameL");
		String add1 =request.getParameter("addF");
		String add2 =request.getParameter("addL");
		String city =request.getParameter("city");
		String pro =request.getParameter("prov");
		String nic =request.getParameter("nic");
		String num =request.getParameter("num");
		String gmail =request.getParameter("mail");
		String age =request.getParameter("age");
		String Uname =request.getParameter("userN");
		String password =request.getParameter("pass");

		boolean isTrue;
		String message = null;

		
		isTrue =CustomerDBUtill.updateProfile(id, fname, Mname, Lname, add1, add2, city, pro, nic, num, age, Uname, password, gmail);
		
		if(isTrue == true) {
			
			

			
			message = "<script>alert('details are inserted successfull.....!');</script>";
			request.setAttribute("message", message);
			
		}
		else {

			message = "<script>alert('invalid input details....... !');</script>";
			request.setAttribute("message", message);
			
		}
	
		RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
		dis.forward(request, response);

	
	}

}
