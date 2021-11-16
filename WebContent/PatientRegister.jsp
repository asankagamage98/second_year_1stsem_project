<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
    <img class="imgs" src="Assests/lll.png">
    <div  class="div1">
        <form action="insert" method="post">
            <div style="margin-left: 80px;">
                <h1>New patient registation form</h1>
                <!-- <label for=""> Please fill in the form  below</label>--></div> 
              
        <div class="lables">
             <label for=""><b>Full Name</b></label>
             <input class="text2" type="text" name="nameF" id="">
             <input type="text" class="text3" name="nameM" id="">
             
             <input type="text" class="text4" name="nameL" id=""><br>

             <label  for="" class="lable2">First name</label>
             <label class="" class="lable3" style="position: absolute;left:300px;top:30px;width:140px;" for="">Middle name</label>
             <label for="" style="position: absolute;left:480px;top:30px;width:140px">Last name</label><br><br>

             <label for=""><b>Address</b></label>

             <input type="text" class="add1" name="addF" id=""><br>
             <label for=""class="addlable1">Street Address</label><br><br>

             <input type="text" class="add1" name="addL" id=""><br>
             <label for="" class="addlable2">Street Address line2</label><br><br>

             <input type="text" name="city" class="text2" id="">
             <input type="text" name="prov" class="text3" id=""><br>


             <label for=""class="lable4">City</label>
             <label for=""  style="position: absolute;left:300px;top:221px;width:140px;">State/Province</label><br><br>
             
             <label for=""><b>NIC No</b></label>
             <input type="text" name="nic" class="text2" id=""><br><br>

             <label for=""><b>Age</b></label>
             <input type="text" name="age" class="text2" id=""><br><br>

             <label for=""><b>Contract No</b></label>
             <input type="text" name="num" class="text2" id=""><br><br>
           
             
             
             <label for=""><b>Username</b></label>
             <input type="text" name="userN" class="text2" id="">

             <input type="text" name="pass" class="text4" id="">
             <label for=""  style="position: absolute;left:300px;top:380px;width:160px;"><b>Conform Password</b></label><br><br>

             <label for=""><b>Gmail Address</b></label>
             <input type="text" name="mail" class="add1" id=""><br><br>

            <input type="submit" name="submit" class="btn1" value="Register Now">
             
             
            </div>
        </form>
        
    </div>






</body>
</html>