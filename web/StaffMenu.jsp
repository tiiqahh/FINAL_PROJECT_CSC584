

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
    <title>Menu - UITM HBMS</title>
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
            <div class="container"><a class="navbar-brand" href="#page-top">UITM HBMS STAFF</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" data-toogle="collapse" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left: 0px;padding-left: 0px;">
                    <ul class="navbar-nav ml-auto text-uppercase" style="margin-bottom: 0px;margin-left: 0px;padding-left: 0px;">
                        <li class="nav-item" style="padding-right: 0px;padding-left: 0px;"><a class="nav-link js-scroll-trigger" href="StaffHome.jsp">Home</a></li>
                        <li class="nav-item" style="padding-right: 0px;padding-left: 0px;"><a class="nav-link js-scroll-trigger" href="StaffMenu.jsp">Menu</a></li>
                        <li class="nav-item" style="margin-left: 0px;"><a class="nav-link js-scroll-trigger" href="Staffindex.jsp" style="margin-left: 0px;">Booking List</a></li>
                        <li class="nav-item" style="padding-right: 100px;padding-left: 0px;"><a class="nav-link js-scroll-trigger" href="StaffUserList.jsp">User list</a></li>
                        <li class="nav-item"><a  class="btn btn-primary" role="button" style="color: rgb(0,0,0);background: rgb(254,102,54);" href="LogoutStaffServlet">logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    <section class="projects-horizontal">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">MENU</h2>
                <p class="text-center">Select your room!</p>
            </div>
            <div class="row projects">
                <div class="col-sm-6 item">
                        <div class="row">
                            <div class="col-md-12 col-lg-5"><a href="KingAdmin.jsp"><img class="img-fluid" src="assets/img/menu/KING.jpeg"></a></div>
                            <div class="col">
                                <h3 class="name">Superior King with Sofa Bed</h3>
                                <p class="description">PAX<br>2 ADULTS<br><br><br>RM145<br><br></p>
                            </div>
                        </div>
                    </div>
                <div class="col-sm-6 item">
                        <div class="row">
                            <div class="col-md-12 col-lg-5"><a href="TwinAdmin.jsp"><img class="img-fluid" src="assets/img/menu/TWIN.png"></a></div>
                            <div class="col">
                                <h3 class="name">Superior Twin Room</h3>
                                <p class="description">PAX<br> 4 ADULTS<br><br>RM 155<br><br></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 item">
                        <div class="row">
                            <div class="col-md-12 col-lg-5"><a href="FamilyAdmin.jsp"><img class="img-fluid" src="assets/img/menu/FAMILY.png"></a></div>
                            <div class="col">
                                <h3 class="name">Family Room-1 King Bed</h3>
                                <p class="description">PAX<br>6 ADULTS<br><br>RM 175<br><br></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 item">
                        <div class="row">
                            <div class="col-md-12 col-lg-5"><a href="BigFamilyAdmin.jsp"><img class="img-fluid" src="assets/img/menu/BIGFAMILY.jpg"></a></div>
                            <div class="col">
                                <h3 class="name">Family Room-1 King + 2 Single Bed</h3>
                                <p class="description">PAX<br>8 ADULTS<br><br><br>RM 200 <br><br></p>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </section>
    <footer style="background-color: blueviolet">
    <div class="container text-center">
        <div class="row justify-content-center">
            <div class="col-md-4" style="margin-left: 337px;"><span class="copyright">Copyright © SmartCookies</span></div>
            <div class="col-md-4" style="padding-left: 114px;"><span class="copyright">019-8547046</span></div>
        </div>
    </div>
</footer>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="assets/js/agency.js"></script>
</body>

</html>
