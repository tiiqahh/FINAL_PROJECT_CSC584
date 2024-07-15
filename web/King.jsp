

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDriver" 
                   url="jdbc:derby://localhost:1527/MyHotel" user="app" 
                   password="app"/>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Menu - UiTM Hotel Booking Management System</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/Product-Details.css">
        <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
    </head>

    <body class="text-body">

        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav">
            <div class="container"><a class="navbar-brand" href="#page-top">HotelBooking</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" data-toogle="collapse" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left: 0px;padding-left: 0px;">
                    <ul class="navbar-nav ml-auto text-uppercase" style="margin-bottom: 0px;margin-left: 0px;padding-left: 0px;">
                        <li class="nav-item" style="margin-left: 0px;"><a class="nav-link js-scroll-trigger" href="index.jsp" style="margin-left: 0px;">Home</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="menu.jsp">Menu</a></li>
                        <li class="nav-item" style="padding-right: 205px;padding-left: 0px;"><a class="nav-link js-scroll-trigger" href="about.jsp">About</a></li>
                        <li class="nav-item" style="padding-left: 0px;padding-right: 14px;padding-bottom: 13px;"><a class="btn btn-primary" role="button" style="color: rgb(0,0,0);opacity: 1;" href="bookingForm.jsp">Book Now!</a></li>
                        <li class="nav-item"><a class="btn btn-primary" role="button" style="color: rgb(0,0,0);margin-right: 19px;" href="profile.jsp">Account</a></li>
                        <li class="nav-item"><a  class="btn btn-primary" role="button" style="color: rgb(0,0,0);background: rgb(254,102,54);" href="LogoutServlet">logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <form action="bookingForm.jsp" method="post" >

            <div class="container" style="margin-bottom: 128px;margin-top: 151px;">
                <h1 class="text-center" style="margin-top: -30px;">Room Details</h1>
                <div class="row">
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-12"><img class="img-thumbnail img-fluid center-block" src="assets/img/menu/KING.jpeg" width="400" height="300"></div>
                        </div>
                    </div>

                    <div class="col-md-5">
                        <h1>Superior King with Sofa Bed</h1>
                        <p style="margin-bottom: 20px;">Welcome to our Superior King Room with Sofa Bed, 
                            a blend of comfort and functionality designed with your relaxation in mind. 
                            This spacious room features a luxurious king-size bed, ensuring a restful night's sleep. 
                            The accompanying sofa bed offers versatility, perfect for accommodating an additional guest or simply lounging in comfort.
                        <p><b>PAX: 2 ADULTS <br> ROOM NUMBER: K01-1, K02-1, K01-2, K02-2</b>
                        <h2 class="text-center text-success">RM 145.00 per room</h2>
                        <div class="quanity-cart-row clearfix">

                            <div class="add-to-cart"  class="input-group" align="center">
                                <button class="btn btn-primary" type="button">
                                    <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> 
                                    <input type="hidden" name="ROOM_NAME" value="Superior King with Sofa Bed"/>
                                    <input type="submit" name="submit" value="Book" class="purchase button">
                                </button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </form>

        <footer style="background-color: blueviolet">
            <div class="container text-center">
                <div class="row justify-content-center">
                    <div class="col-md-4" style="margin-left: 337px;"><span class="copyright">Copyright © SmartCookies</span></div>
                    <div class="col-md-4" style="padding-left: 114px;"><span class="copyright">019-8547046</span></div>
                </div>
            </div>
        </footer

        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="assets/js/agency.js"></script>
    </body>
</html>


