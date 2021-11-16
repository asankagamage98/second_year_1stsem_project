package com.customer1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet("/LogiServlet")
public class LogiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int Customer = 0;
	private static final int List = 0;

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		
		
		String username = request.getParameter("uid");
		String password = request.getParameter("upassword"); //ui eken gnnwa controller ekta
		
		int ret = CustomerDBUtill.loginValidate(username, password);
		
		if(ret<0) {
			 
			RequestDispatcher rd=request.getRequestDispatcher("unsuccess.jsp");  
            rd.forward(request,response);
            

			
		} else {
			ArrayList<Customer> cus = CustomerDBUtill.getCustomer(ret);
			HttpSession session = request.getSession();
			session.setAttribute("uid", ret);
			
			request.setAttribute("customer", cus);
			RequestDispatcher rd=request.getRequestDispatcher("patientHome.jsp");  
	        rd.forward(request,response);
		}
		
		
		
		
	
		
	}

}
