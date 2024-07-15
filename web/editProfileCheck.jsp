<%-- 
    Document   : editProfileCheck
    Created on : Jan 18, 2022, 10:38:41 AM
    Author     : deskt
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
    <body>
        <c:set var="userId" value="${sessionScope.userId}"/>  
        <c:set var="email" value="${param.email}"/>   
        <c:set var="name" value="${param.name}"/> 
        <c:set var="password" value="${param.password}"/> 
        <c:if test="${email != null && name != null && password != null && userId != null}">
            <sql:update var="result" dataSource="${myDatasource}">
                UPDATE APP.USERS
                SET EMAIL=?, NAME=?, PASSWORD=?
                WHERE USERID=?
                <sql:param value="${email}" />
                <sql:param value="${name}" />
                <sql:param value="${password}" />
                <sql:param value="${userId}" />
            </sql:update>    
        </c:if>
                
        <script type="text/javascript">
            <c:if test="${result >= 1}">
                window.alert("Your account has been successfully updated.");
                window.location = "profile.jsp";
            </c:if>
        </script>       
    </body>
</html>