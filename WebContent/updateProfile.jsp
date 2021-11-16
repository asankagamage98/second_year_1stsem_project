<%@page import="com.customer1.CustomerDBUtill"%>
<%@page import="com.customer1.Customer"%>
<%@page import="java.util.ArrayList"%>

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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Assests\style\patient.css"></link>

    
    
</head>
<body>

    <% try { %>
    	${message}
    <% } catch (Exception e) {} %>

    <img class="imgs" src="Assests/update.jpg">
    <div  class="div1">
        <form action="update" method="post">
                <% for(Customer i: cus) { %>
        
            <div style="margin-left: 80px;">
                <h1>Update profile</h1>
                <!-- <label for=""> Please fill in the form  below</label>--></div> 
              
        <div class="lables">
        	             
            
             <label for=""><b>Full Name</b></label>
             <input class="text2" type="text" name="nameF" value="<% out.print(i.getFirstName());%>"   id="">
             <input type="text" class="text3" name="nameM" value="<% out.print(i.getMiddleName());%>" id="">
             
             <input type="text" class="text4" name="nameL" value="<% out.print(i.getLastName());%>"  id=""><br>

             <label  for="" class="lable2">First name</label>
             <label class="" class="lable3" style="position: absolute;left:300px;top:30px;width:140px;" for="">Middle name</label>
             <label for="" style="position: absolute;left:480px;top:30px;width:140px">Last name</label><br><br>

             <label for=""><b>Address</b></label>

             <input type="text" class="add1" name="addF" value="<% out.print(i.getAddress1());%>"  id=""><br>
             <label for=""class="addlable1">Street Address</label><br><br>

             <input type="text" class="add1" name="addL"  value="<% out.print(i.getAddress2());%>"  id=""><br>
             <label for="" class="addlable2">Street Address line2</label><br><br>

             <input type="text" name="city" class="text2" value="<% out.print(i.getCity());%>" id="">
             <input type="text" name="prov" class="text3" value="<% out.print(i.getProvince());%>"id=""><br>


             <label for=""class="lable4">City</label>
             <label for=""  style="position: absolute;left:300px;top:221px;width:140px;">State/Province</label><br><br>
             
             <label for=""><b>NIC No</b></label>
             <input type="text" name="nic" value="<% out.print(i.getNic());%>"  class="text2" id=""><br><br>

             <label for=""><b>Age</b></label>
             <input type="text" name="age" value="<% out.print(i.getAge());%>"  class="text2" id=""><br><br>

             <label for=""><b>Contract No</b></label>
             <input type="text" name="num" value="<% out.print(i.getPhoneNumber());%>"  class="text2" id=""><br><br>
           
             
             
             <label for=""><b>Username</b></label>
             <input type="text" name="userN" value="<% out.print(i.getUserName());%>"  class="text2" id="">

             <input type="text" name="pass" value="<% out.print(i.getPassword());%>"  class="text4" id="">
             <label for=""  style="position: absolute;left:300px;top:380px;width:160px;"><b>Conform Password</b></label><br><br>

             <label for=""><b>Gmail Address</b></label>
             <input type="text" name="mail" value="<% out.print(i.getGmail());%>"  class="add1" id=""><br><br>
             
             
             <label for=""><b>ID No</b></label>
             <input type="text" name="id" class="text2" id="" value="<% out.print(i.getId());%>"readonly><br><br>

            
            
            <input type="submit" name="submit" class="btn1" value="Sava Details"> -->
            
            
            
            
            <input type="button" name="submit" class="" value="Delete Account" style="background-color: rgb(7, 209, 7);
    color: white;
    font-size: 15px;
    margin-left: 350px;
    padding: 9px;
     position: absolute;
    top:504px;
    width:200px;
    border-radius: 5px;
            " onclick="location.href='delete.jsp'">
            
             
             
            </div>
     <% } %>
        </form>
        
    </div>

	




</body>
</html>