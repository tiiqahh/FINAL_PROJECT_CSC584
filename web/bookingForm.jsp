<%-- 
    Document   : bookingForm
    Created on : Jul 13, 2024, 2:04:54 PM
    Author     : ASUS
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDriver" 
                   url="jdbc:derby://localhost:1527/MyHotel" user="app" 
                   password="app"/>
<!DOCTYPE html>
<html lang="en">
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
    <body>

        <c:set var="USERID" value="<%= session.getAttribute("userId")%>"/>
        <c:set var="ROOMID" value="<%=request.getParameter("roomid")%>"/>

        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav">
            <div class="container"><a class="navbar-brand" href="#page-top">UITM HBMS</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" data-toogle="collapse" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left: 0px;padding-left: 0px;">
                    <ul class="navbar-nav ml-auto text-uppercase" style="margin-bottom: 0px;margin-left: 0px;padding-left: 0px;">
                        <li class="nav-item" style="margin-left: 0px;"><a class="nav-link js-scroll-trigger" href="index.jsp" style="margin-left: 0px;">Home</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="menu.jsp">Menu</a></li>
                        <li class="nav-item" style="padding-right: 205px;padding-left: 0px;"><a class="nav-link js-scroll-trigger" href="about.jsp">About</a></li>
                        <li class="nav-item"><a class="btn btn-primary" role="button" style="color: rgb(0,0,0);margin-right: 19px;" href="profile.jsp">Account</a></li>
                        <li class="nav-item"><a  class="btn btn-primary" role="button" style="color: rgb(0,0,0);background: rgb(254,102,54);" href="LogoutServlet">logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="container" style="margin-top: 150px; padding-left: 25%">

            <form action="bookingFormInsert.jsp" method="POST">
                <div class="row">

                    <div class="col">

                        <h3 class="title">Booking Form</h3>
                        
                        <p>Please enter the details following the order of the fields from top to bottom.</p>

                        <!-- Return from USERS -->
                        <b>USER DETAIL</b>

                        <c:set var="userid" value="<%= session.getAttribute("userId")%>" /> 

                        <sql:query var="result" dataSource="${myDatasource}">
                            SELECT * FROM APP.USERS where USERID=${userid}
                        </sql:query>

                        <c:forEach var="row" items="${result.rows}">    

                            <div class="inputBox">
                                <label>
                                    <span>Name :</span>
                                    <input type="text" name="NAME" value="<c:out value="${row.NAME}"/>" readonly style="background: lightgray">
                                </label>
                            </div>
                            <div class="inputBox">
                                <label>
                                    <span>Email :</span>
                                    <input type="text" name="EMAIL" value="<c:out value="${row.EMAIL}"/>" readonly style="background: lightgray">
                                </label>
                            </div>

                            <div class="inputBox">
                                <label>
                                    <span>Phone Number :</span>
                                    <input type="text" name="PHONE_NUM" required>
                                </label>
                            </div>

                        </c:forEach>



                        <br><b>ROOM DETAIL</b>
                        
                        
                        <div class="inputBox">
                            <label>
                                <span>Total Days :</span>
                                <input type="number" id="days" name="DAYS" min="1" required>
                            </label>
                        </div>

                        <div class="inputBox">
                            <label>Room Name :
                                <select id="roomname" name="ROOM_NAME" onchange="updateRoomSelections()" required>
                                    <option value="">--Select an option--</option>
                                    <option value="Superior King with Sofa Bed">Superior King with Sofa Bed</option>
                                    <option value="Superior Twin Room">Superior Twin Room</option>
                                    <option value="Family Room-1 King Bed">Family Room-1 King Bed</option>
                                    <option value="Family Room-1 King + 2 Single Bed">Family Room-1 King + 2 Single Bed</option>
                                </select>
                            </label>
                        </div>
                        

                        <div id="roomSelectionContainer"></div>

                        <div class="inputBox">
                            <label>
                                <span>Price :</span>
                                <input type="number" id="price" name="TOTAL" readonly>
                            </label>
                        </div>

                        <!-- Code to change choose room num based on room name-->
                        <script>
                            function updateRoomSelections() {
                                var firstSelect = document.getElementById('roomname').value;
                                var days = document.getElementById('days').value;
                                var container = document.getElementById('roomSelectionContainer');

                                // Clear previous room selections
                                container.innerHTML = '';

                                // Create room selection dropdowns based on the quantity
                                var inputBox = document.createElement('div');
                                inputBox.className = 'inputBox';

                                var label = document.createElement('label');
                                label.textContent = `Room Num :`;

                                var select = document.createElement('select');
                                select.id = `roomid`;
                                select.name = `ROOM_NUM`;

                                var options = [];

                                if (firstSelect === 'Superior King with Sofa Bed')
                                {
                                    options = [
                                        {value: '', text: '--Select an option--'},
                                        {value: 'K01-1', text: 'K01-1'},
                                        {value: 'K02-1', text: 'K02-1'},
                                        {value: 'K01-2', text: 'K01-2'},
                                        {value: 'K02-2', text: 'K02-2'}
                                    ];

                                } else if (firstSelect === 'Superior Twin Room')
                                {
                                    options = [
                                        {value: '', text: '--Select an option--'},
                                        {value: 'T01-1', text: 'T01-1'},
                                        {value: 'T02-1', text: 'T02-1'},
                                        {value: 'T01-2', text: 'T01-2'},
                                        {value: 'T02-2', text: 'T02-2'}
                                    ];

                                } else if (firstSelect === 'Family Room-1 King Bed')
                                {
                                    options = [
                                        {value: '', text: '--Select an option--'},
                                        {value: 'FR01-1', text: 'FR01-1'},
                                        {value: 'FR02-1', text: 'FR02-1'},
                                        {value: 'FR01-2', text: 'FR01-2'},
                                        {value: 'FR02-2', text: 'FR02-2'}
                                    ];

                                } else if (firstSelect === 'Family Room-1 King + 2 Single Bed')
                                {
                                    options = [
                                        {value: '', text: '--Select an option--'},
                                        {value: 'FRS01-1', text: 'FRS01-1'},
                                        {value: 'FRS02-1', text: 'FRS02-1'},
                                        {value: 'FRS01-2', text: 'FRS01-2'},
                                        {value: 'FRS02-2', text: 'FRS02-2'}
                                    ];

                                }

                                options.forEach(function (optionData) {
                                    var option = document.createElement('option');
                                    option.value = optionData.value;
                                    option.textContent = optionData.text;
                                    select.appendChild(option);
                                });

                                label.appendChild(select);
                                inputBox.appendChild(label);
                                container.appendChild(inputBox);

                                var price = 0;
                                if (firstSelect === 'Superior King with Sofa Bed')
                                {
                                    price = 145.00 * days;
                                } else if (firstSelect === 'Superior Twin Room') {
                                    price = 155.00 * days;
                                } else if (firstSelect === 'Family Room-1 King Bed') {
                                    price = 175.00 * days;
                                } else if (firstSelect === 'Family Room-1 King + 2 Single Bed') {
                                    price = 200.00 * days;
                                }

                                document.getElementById('price').setAttribute('value', price);
                            }
                        </script>

                        <!-- end code-->

                        <div class="flex">
                            <div class="inputBox">
                                <label for="checkin-date">Check-in Date : </label>
                                <input type="date" id="checkin-date" name="CHECK_IN">
                            </div>
                            <div class="inputBox">
                                <label for="checkout-date">Check-out Date : </label>
                                <input type="date" id="checkout-date" name="CHECK_OUT">
                            </div>
                        </div>
                        <br>
                        <button type="submit">Book</button>
                        <a href="#" onclick="location.href = document.referrer; return false;" style="border: solid black; background-color: #ffdc2b; color: black; padding: 10px; border-radius: 20%;">Go Back</a>


                    </div>

            </form>
        </div>
    </body>
</html>