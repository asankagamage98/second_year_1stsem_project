package com.customer1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

  
@WebServlet("/patientRegisterServlet")
public class patientRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String firstName = request.getParameter("nameF");
		String middlename = request.getParameter("nameM");
		String lastname = request.getParameter("nameL");
		String phone  = request.getParameter("num");
		String gmail = request.getParameter("mail");
		String add1  = request.getParameter("addF");
		String add2 = request.getParameter("addL");
		String nic  = request.getParameter("nic");
		String username = request.getParameter("userN");
		String password  = request.getParameter("pass");
		String province  = request.getParameter("prov");
		String city = request.getParameter("city");
		
		String message = null;
		
		try {
			
			int age = Integer.parseInt(request.getParameter("age"));
			boolean isTrue;
		
		
			isTrue = CustomerDBUtill.intertPatientDetail(firstName, middlename, lastname, phone, gmail, add1, add2, nic, username, password, province, age, city);
		
		
			if(isTrue == true) {
				
	//			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
	//			dis.forward(request, response);
				
				message = "<script>alert('details are inserted successfull.....!');</script>";
				request.setAttribute("message", message);
				
			} else {
				
				message = "<script>alert('invalid input details....... !');</script>";
				request.setAttribute("message", message);
				
	//			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
	//			dis2.forward(request, response);
			
			}
		} catch (Exception e) {
			
			message = "<script>alert('Form Error !');</script>";
			request.setAttribute("message", message);
			
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("PatientRegister.jsp");
		dis.forward(request, response);
	}

}
