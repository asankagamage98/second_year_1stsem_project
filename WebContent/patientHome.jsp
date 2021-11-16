<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Assests/style/bootstrap/bootstrap-4.5.2-dist/css/bootstrap.min.css">
    <script src="Assests/tyle/bootstrap/bootstrap-4.5.2-dist/js/bootstrap.min.js"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   



<link rel="stylesheet" href="Assests/style/profilehome.css">

</head>
<body>
        <div class="div1">

            <input type="button" class="btn1" onclick="location.href='profile.jsp'"  value="Profile">
            <input type="submit"class="btn2" onclick="location.href='Login.jsp'"   value="Log out">
        </div>

       <div class="div2">



                            <div class="container"class="slide">
                            <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" class="image" >
                            <div class="item active">
                            <input type="button" class="btn3"value="Create appointment">
                            <img src="Assests/img/slide1.jpg" class="image" alt="" style="width:100%;">
                            </div>

                            <div class="item">
                                <input type="button" class="btn3"value="viwe Appointment">
                            <img src="Assests/img/slide2.png"  class="image" alt="" style="width:100%;">
                            </div>

                            <div class="item">
                            <input type="button" class="btn3"value="other option">
                            <img src="Assests/img/slide3.jpg" class="image" alt="" style="width:100%;">
                            </div>
                            </div>

                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                            </a>
                            </div>
                            </div>
        </div>
 </body>
</html>

 