<%-- 
    Document   : profile
    Created on : Jan 17, 2022, 10:05:12 AM
    Author     : admin
--%>

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

    <body class="text-body">

        <c:set var="userid" value="<%= Integer.parseInt(session.getAttribute("userId").toString())%>" />

        <sql:query var="result" dataSource="${myDatasource}">
            SELECT * FROM APP.USERS where USERID =${userid}
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
                        <li class="nav-item"><a  class="btn btn-primary" role="button" style="color: rgb(0,0,0);background: rgb(254,102,54);" href="LogoutServlet">logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <section id="contact" style="background-image:url('assets/img/menu/background1.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center" style="color:white"  >
                        <h2 class="text-uppercase section-heading">Contact Details</h2>
                        <h3 class="section-subheading text-muted"></h3>

                        <form>

                            <c:forEach var="row" items="${result.rows}">
                                <center>
                                    <table width='804' border=2>
                                        <tr bgcolor='#CCCCCC'>
                                            <td><font color="black">USER ID</td>
                                            <td><font color="black">FULL NAME </td>
                                            <td><font color="black">EMAIL </td>
                                        </tr>

                                        <tr>
                                            <td><c:out value="${row.USERID}"/> </td>
                                            <td><c:out value="${row.NAME}"/> </td>
                                            <td><c:out value="${row.EMAIL}"/> </td>
                                        </tr>
                                    </table>
                                    <br><br><br>
                                </center>
                            </c:forEach>
                        </form>
                    </div>

                    <div class="col-lg-12 text-center">
                        <div id="success"></div>
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" name="update" type="submit">
                            <a href="editProfile.jsp" style="color:white">EDIT PROFILE</a>
                        </button>
                        <br><br>
                    </div>

                    <div class="col-lg-12 text-center">
                        <div id="history"></div>
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" name="update" type="submit">
                            <a href="bookingList.jsp" style="color:white">BOOKING LIST</a>
                        </button>
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
