s
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDriver" 
                   url="jdbc:derby://localhost:1527/MyHotel" user="app" 
                   password="app"/>
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration check</title>
    </head>
    <body>
        <c:set var="EMAIL" value="<%= request.getParameter("EMAIL") %>"/>   
        <c:set var="NAME" value="<%= request.getParameter("NAME") %>"/> 
        <c:set var="PASSWORD" value="<%= request.getParameter("PASSWORD") %>"/> 
        <c:if test="${(EMAIL!=null)&&(NAME!=null)&&(PASSWORD!=null)}" var="result">
            <sql:update var="result" dataSource="${myDatasource}">
                INSERT INTO APP.USERS (EMAIL, NAME, PASSWORD) 
	VALUES  ('${EMAIL}','${NAME}','${PASSWORD}')

            </sql:update>    
        </c:if>
        
        <script type="text/javascript">
     <c:if test="${result >=1}">
         window.alert("register sucessfully");
         window.location = "login.jsp";
     </c:if></script>
        
    </body>
</html>
