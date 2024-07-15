<%-- 
    Document   : bookingForm
    Created on : Jul 12, 2024, 6:01:43 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDriver"  
                   url="jdbc:derby://localhost:1527/MyHotel" user="app" 
                   password="app"/>
<!DOCTYPE html>
<html>


    <c:set var="userid" value="<%= session.getAttribute("userId")%>" />

    <%-- to call/get the parameters from bookingForm.jsp --%>
    <c:set var="phone_num" value="<%=request.getParameter("PHONE_NUM")%>"/>
    <c:set var="room_name" value="<%=request.getParameter("ROOM_NAME")%>"/>
    <c:set var="room_num" value="<%=request.getParameter("ROOM_NUM")%>"/>
    <c:set var="total" value="<%=request.getParameter("TOTAL")%>"/>

    <%

        double total = Double.parseDouble(request.getParameter("TOTAL"));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date checkinDate = sdf.parse(request.getParameter("CHECK_IN"));
        Date checkoutDate = sdf.parse(request.getParameter("CHECK_OUT"));

        java.sql.Date checkin = new java.sql.Date(checkinDate.getTime());
        java.sql.Date checkout = new java.sql.Date(checkoutDate.getTime());

        request.setAttribute("total", total);
        request.setAttribute("checkin", checkin);
        request.setAttribute("checkout", checkout);

    %>


    <sql:query var="result" dataSource="${myDatasource}">

        SELECT * FROM APP.USERS
        WHERE USERID=${userid}

    </sql:query>

    <sql:query var="resulty" dataSource="${myDatasource}">

        SELECT * FROM APP.BOOKING

    </sql:query>

    <sql:update var="result" dataSource="${myDatasource}">

        UPDATE APP.USERS 
        SET PHONE_NUM = '${phone_num}'
        WHERE USERID = ${userid}

    </sql:update> 

    <sql:update var="resulty" dataSource="${myDatasource}">
        INSERT INTO APP.BOOKING (USERID, TOTAL, CHECK_IN, CHECK_OUT)
        VALUES (?, ?, ?, ?)

        <sql:param value="${userid}" />
        <sql:param value="${requestScope.total}" />
        <sql:param value="${requestScope.checkin}" />
        <sql:param value="${requestScope.checkout}" />

    </sql:update>

    <sql:update var="resulty" dataSource="${myDatasource}">
        UPDATE APP.BOOKING
        SET ROOMID = (SELECT ROOMID FROM APP.ROOM WHERE ROOM_NAME = '${room_name}' AND ROOM_NUM = '${room_num}')
        WHERE USERID = ${userid} AND CHECK_IN = ? AND CHECK_OUT = ?

        <sql:param value="${requestScope.checkin}" />
        <sql:param value="${requestScope.checkout}" />

    </sql:update>                      

    <script type="text/javascript">
        <c:if test="${resulty >=1 || resulty2 >= 1}">
            window.alert("Reservation made successfully");
            window.location = "bookingList.jsp"; //nanti tukar ke reservation.jsp
        </c:if></script>     

</html>