package com.customer1;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
try {
		String id =request.getParameter("idnumber");
		
		boolean	isTrue;
	
		isTrue =CustomerDBUtill.deletAccount(id);
		
		  
		 
		if(isTrue == true) {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("PatientRegister.jsp");
			dis.forward(request, response);
			
		}
		else {
			List<Customer> cusDetails = CustomerDBUtill.getCustomer(Integer.parseInt(id));
			request.setAttribute("cusDetails" ,cusDetails);
			

			RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
			dis.forward(request, response);
		}			
			
	}catch(Exception e) {
			
			e.printStackTrace();
			
		
		}
 		
 		
	}

}
