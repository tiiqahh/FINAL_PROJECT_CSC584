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
        <title>Profile - UITM HBMS</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/Product-Details.css">
        <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
    </head>

    <body>

        <c:set var="userid" value="<%= session.getAttribute("userId")%>"/>
        <sql:query var="result" dataSource="${myDatasource}">
            SELECT * FROM APP.USERS 
            where USERID=${userid}
        </sql:query>

        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav">
            <div class="container"><a class="navbar-brand" href="#page-top">UITM HBMS</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" data-toogle="collapse" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left: 0px;padding-left: 0px;">
                    <ul class="navbar-nav ml-auto text-uppercase" style="margin-bottom: 0px;margin-left: 0px;padding-left: 0px;">
                        <li class="nav-item" style="margin-left: 0px;"><a class="nav-link js-scroll-trigger" href="index.jsp" style="margin-left: 0px;">Home</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="menu.jsp">Menu</a></li>
                        <li class="nav-item" style="padding-right: 205px;padding-left: 0px;"><a class="nav-link js-scroll-trigger" href="about.jsp">About</a></li>
                        <li class="nav-item" style="padding-left: 0px;padding-right: 14px;padding-bottom: 13px;"><a class="btn btn-primary" role="button" style="color: rgb(0,0,0);opacity: 1;" href="bookingForm.jsp">Book Now!</a></li>
                        <li class="nav-item"><a class="btn btn-primary" role="button" style="color: rgb(0,0,0);margin-right: 19px;" href="profile.jsp">Account</a></li>
                        <li class="nav-item"><a  class="btn btn-primary" role="button" style="color: rgb(0,0,0);background: rgb(254,102,54);" href="LogoutServlet">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <section id="contact" style="background-image:url('assets/img/menu/background1.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="text-uppercase section-heading">Contact Details</h2>
                        <h3 class="section-subheading text-muted"></h3>
                    </div>
                </div>


                <form class="form-horizontal" role="form" action="editProfileCheck.jsp" method="post">
                    <c:forEach var="row" items="${result.rows}">
                        <div class="form-group">
                            <label class="col-lg-3 control-label" style="color:white" >User ID:</label>
                            <div class="col-lg-8" style="color:white">
                                <c:out value="${row.USERID}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label"style="color:white"  >EMAIL:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="email" name="email" value="<c:out value="${row.EMAIL}"/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label" style="color:white">NAME:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="name" name="name" value="<c:out value="${row.NAME}"/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label" style="color:white"  >Password:</label>
                            <div class="col-md-8">
                                <input class="form-control" type="password" name="password" value="<c:out value="${row.PASSWORD}"/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label"></label>
                            <div class="col-md-8">

                                <input type="submit" class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" name="update" value="Save Change" align="center"  style="color:white"></button>
                                <span></span><span></span>
                                <a  href="profile.jsp">Cancel</a>
                            </div>
                        </div>
                    </form></c:forEach>
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
