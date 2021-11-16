<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="Assests\style\login1.css"></link>
<link rel="stylesheet" href="Assests\style\fondaweome\fontawesome-free-5.9.0-web\css\all.css">
<link rel="stylesheet" href="Assests\style\fondaweome\fontawesome-free-5.9.0-web\css\fontawesome.css">
<style>
   body {

    margin: 0;
    padding: 0;
    background-image: url("Assests/image_51.jpg");
    background-size: cover;
   }
    ::placeholder {
        color: white;
    }
    /* body:hover {
        background-image: url("download.jpg");
        background-size: cover;

    } */

</style>
<body>
	
	
    <div class="loginbox">
		<form action ="log" method="post">
        <h1>Login</h1>
        <div class="textbox">
            <i class="fas fa-user"></i>
            <input type ="text" placeholder="Username" name="uid" value="">
        </div>
        <div  class="textbox">
            <i class="fas fa-lock"></i>
            <input type="password" name="upassword" id="" placeholder="Password" value="">
        </div>
      <input class="btn1" type="submit" value="Sign in"> 
        <!-- <input class="btn1" type="button" onclick="location.href='PatientRegister.jsp'" value="Sing up"> -->  
        </form>
    </div>
    
</body>
</html>