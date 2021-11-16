<%@page import="java.io.PrintWriter"%>
<%@page import="com.customer1.CustomerDBUtill"%>
<%@page import="com.customer1.Customer"%>
<%@page import="java.util.ArrayList"%>

<%@page import="com.mysql.fabric.xmlrpc.base.Array"%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <% 
 
    int ans = (int) session.getAttribute("uid"); 
    ArrayList<Customer> cus = CustomerDBUtill.getCustomer(ans);
	
	 
    %> 
    
<!DOCTYPE html>
<html lang="en">                                                                                                    
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=\, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Assests\style\userprofile.css">
    
    <style>
    table th {
    
    	float:left;
    }
    table td {
    		border:1px solid black;
    		padding:5px;
    }
    table td:hover{
    	background-color:white;
    }
    </style>

</head>

<body>
    <div>
        <div class="div1"> 
      <div class="div2">  <label for=""  style="position: absolute;left:200px;"> <h2>Delete Your Account</h2></label>  </div>
			<form action="delete" method="post">
			<% for(Customer i: cus) { %>
	
                     <table class="form1">
                        <tr>
                       <% // out.print(cus.get(0).getId()); %>
                            <th>User id</th>
                            <td><input type="text" name="idnumber" style="backgroud:transparent;border:none;background-color:#dcdde1;" value="<% out.print(i.getId());%>"> </td>
                         
                       </tr>
                        <tr>
                            <th>First name</th>
                            <td><%out.print(i.getFirstName());%>    </td>
                        </tr>
                        <tr>
                            <th>Middle name</th>
                            <td><% out.print(i.getMiddleName());%> </td>
                        </tr>
                        <tr>
                            <th>Last name</th>
                            <td><%out.print(i.getLastName());%></td>
                        </tr>
                        <tr>
                            <th>Phone number</th>
                            <td><%out.print(i.getPhoneNumber());%> </td>
                        </tr>
                        <tr>
                            <th>Gmail</th>
                            <td><%out.print(i.getGmail());%> </td>
                        </tr>
                        <tr>
                            <th>Address1</th>
                            <td><%out.print(i.getAddress1());%>  </td>
                        </tr>
                        <tr>
                            <th>Address2</th>
                            <td><% out.print(i.getAddress2());%> </td>
                        </tr>
                        <tr>
                            <th>Nic no</th>
                            <td><%out.print(i.getNic());%>   </td>
                        </tr>
                        <tr>
                            <th>User name</th>
                            <td><%out.print(i.getUserName());%>  </td>
                        </tr>
                        <tr>
                            <th>Password</th>
                            <td><%out.print(i.getPassword());%> </td>
                        </tr>
                        <tr>
                            <th>Province</th>
                            <td><%out.print(i.getProvince());%>       </td>
                        </tr>
                        <tr>
                            <th>Age</th>
                            <td><%out.print(i.getAge());%></td>
                        </tr>
                        <tr>
                            <th>City</th>
                            <td><% out.print(i.getCity());%>  </td>
                        </tr>

					

                    </table><br><br>
                    
                  <input type="submit" name="sub" class="" value="Delete Account" style="background-color: rgb(7, 209, 7);
    			  color: white;
   				  font-size: 15px;
  				  margin-left: 200px;
   				  padding: 9px;
   			      position: absolute;
    			  top:610px;
    			  width:200px;
   				  border-radius: 5px;
            ">
            

 <% } %>
</form>
    
        </div>



     </div>
</body>
</html>