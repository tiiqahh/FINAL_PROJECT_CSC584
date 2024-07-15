
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:setDataSource var="myDatasource" driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/UiTMerch" user="app" password="app"/>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>About - UITM HBMS</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Product-Details.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/untitled.css">
</head>

<body class="text-body">
 <body class="text-body">
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
    
    
    <header class="masthead" style="background-image: url('assets/img/menu/background1.jpg');opacity: 1;filter: blur(0px) brightness(97%);margin-bottom: 0px;margin-top: 0px;background-repeat: space;">
        <div class="about-heading-content" style="margin-top: 148px;padding-top: 163px;margin-bottom: 83px;">
            <div class="row" style="margin-top: -1px;padding-top: 0px;filter: blur(0px);margin-bottom: 0px;">
                <div class="col-lg-10 col-xl-9 mx-auto" style="margin-bottom: 0px;margin-top: 0px;">
                    <div class="bg-faded rounded p-5" style="margin-top: 0px;padding: 48px;padding-top: 48px;background-position: center;margin-bottom: 154px;background-color: #fbd136;filter: blur(0px);">
                        <h2 class="section-heading mb-4"><span class="section-heading-upper" style="color: rgb(0,0,0);">About Us</span></h2>
                        <p style="color: rgb(0,0,0);">We welcome you with our own version of Malaysian hospitality to Hotel UiTM Shah Alam, the pioneer Training Hotel in the country. Ideally located at the Universiti Teknologi MARA (UiTM) main campus in Section 1, Shah Alam, the hotel which opens its door to the public in June 1992, is just a short walk from the heart of Shah Alam and its iconic lake. The hotel is definitely the right choice to explore the city’s main attractions.

Dine in our signature Anggerik Terrace Coffee House and other outlets, offering the best home-style Malaysian cuisine with the most affordable price in town. Our guest rooms offer spacious and comfortable stay for you and your family. In addition, we have ample space for your meeting, business event, conference or even a small birthday party! We will assist in every detail of your need to host your function.

The hotel is expanding and more facilities will be provided for you in the near future. In the meantime, feel free to contact us to explore local attractions nearby and our promotional rates available at the moment. Staying with us will definitely excite your curious mind with warmth Malaysian welcome.</p>
                        <p class="mb-0"></p>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    
    <h1 align="center">FOUNDER</h1>
    <section id="team" class="bg-bright">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/INTAN.jpg">
                        <h4>INTAN FARHANA BINTI SAMUDIN</h4>
                        <p class="text-muted">Lead Developer</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/SIR.jpg">
                        <h4>SIR RIDHWAN</h4>
                        <p class="text-muted">Lecturer</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/THIRA.jpg">
                        <h4>NURUL ATHIRAH BINTI ZAINURI</h4>
                        <p class="text-muted">UI Developer</p>
                    </div>
                </div>
                <div class="col-sm-4" style="padding: 0px;margin-left: 196px;">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/TIQA.jpg">
                        <h4>NUR ATIQAH BINTI HISHAM</h4>
                        <p class="text-muted">Documentation</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/nad.jfif">
                        <h4>NUR NADIRAH BINTI MOHAMAD RAFI</h4>
                        <p class="text-muted">Developer</p>
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
