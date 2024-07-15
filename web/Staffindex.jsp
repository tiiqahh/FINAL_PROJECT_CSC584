

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
        <title>Home - UITM HBMS STAFF</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/Product-Details.css">
        <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
    </head>

    <body class="text-body">


        <c:set var="staffid" value="<%= session.getAttribute("staffId")%>" />


        <c:set var="ROOM_name" value="<%=request.getParameter("room_name")%>"/>




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






        <br><br><br><br><br><br>
        <!-- Feature -->
        <h1 class="text-center">BOOKING LIST</h1><center>

        <p>---------------------------------------------------</p>
        <form action='Staffindex.jsp' method='POST'>
            <c:set var="bookingid" value="<%= session.getAttribute("bookingid")%>" />
            <sql:query var="result" dataSource="${myDatasource}">
                SELECT * FROM APP.BOOKING
            </sql:query>

            <sql:query var="resultstaff" dataSource="${myDatasource}">
                SELECT * FROM APP.STAFF
            </sql:query>
        <div class="pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                        <span></span><span></span><span></span>

                        <!-- Shopping cart table -->
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="p-2 px-3 text-uppercase">BOOK ID</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">USER ID</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">ROOM ID</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">CHECK-IN DATE</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">CHECK-OUT DATE</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">TOTAL PRICE</div>
                                        </th>
                                        
                                    </tr>
                                    </tr>
                                </thead>
                                <tbody>




                                    <c:forEach var="row" items="${result.rows}">
                                        <tr>
                                            <th scope="row" class="border-0">
                                                <div class="p-2">
                                                    <div class="ml-3 d-inline-block align-middle">
                                                        <h5 class="mb-0"><a href="#" class="text-dark d-inline-block align-middle"><c:out value="${row.BOOKID}"/></a></h5>
                                                    </div>
                                                </div> 
                                            </th>
                                            <td class="border-0 align-middle"><strong><c:out value="${row.USERID}"/></strong></td>  
                                            <td class="border-0 align-middle"><strong><c:out value="${row.ROOMID}"/></strong></td> 
                                            <td class="border-0 align-middle"><strong><c:out value="${row.CHECK_IN}"/></strong></td>  
                                            <td class="border-0 align-middle"><strong><c:out value="${row.CHECK_OUT}"/></strong></td> 
                                            <td class="border-0 align-middle"><strong><c:out value="${row.TOTAL}"/></strong></td>  
                                            <td class="remove"><a href="deleteBookingList.jsp?bookId=<c:out value="${row.BOOKID}"/>"><button type="button" class="btn btn-primary"type="submit">Delete</button></a></td>
                                        </tr>      


                                    </c:forEach>


                                </tbody>
                            </table>
                        </div>
                        <!-- End -->
                    </div>
                </div></div></div>


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

