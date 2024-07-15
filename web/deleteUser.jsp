<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource" driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/MyHotel" user="app" password="app"/>
<!DOCTYPE html>
<html>
    <body>
        <c:set var="userId" value="${param.userID}" />

        <c:catch var="exception">
            <c:if test="${not empty userId}">
                <sql:update var="result" dataSource="${myDatasource}">
                    DELETE FROM APP.USERS WHERE USERID = ?
                    <sql:param value="${userId}" />
                </sql:update>
            </c:if>

            <c:choose>
                <c:when test="${result >= 1}">
                    <script type="text/javascript">
                        window.alert("User deleted successfully.");
                        window.location = "StaffUserList.jsp";
                    </script>
                </c:when>
                <c:when test="${result == 0}">
                    <script type="text/javascript">
                        window.alert("Failed to delete user.");
                        window.location = "StaffUserList.jsp";
                    </script>
                </c:when>
                <c:otherwise>
                    <script type="text/javascript">
                        window.alert("An unexpected error occurred.");
                        window.location = "StaffUserList.jsp";
                    </script>
                </c:otherwise>
            </c:choose>
        </c:catch>

        <c:if test="${not empty exception}">
            <h3>Error Details:</h3>
            <pre>${exception.message}</pre>
            <pre>${exception}</pre>
        </c:if>
    </body>
</html>
