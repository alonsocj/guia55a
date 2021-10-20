<%-- 
    Document   : delete
    Created on : Oct 17, 2021, 1:03:55 PM
    Author     : alonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Eliminación de libro</h1>
        <sql:setDataSource var ="datos" driver="org.mariadb.jdbc.Driver"
                           url="jdbc:mariadb://localhost:3308/biblioteca"
                           user="root" password=""/>
        <p>Se ha eliminado exitosamente el libro:</p>
        <sql:query dataSource = "${datos}" var = "result">
            SELECT * from libro WHERE Id=?;
            <sql:param value="${param.Id}"/>
        </sql:query>
        <c:forEach var = "row" items = "${result.rows}">
            <p>Id: <c:out value = "${row.Id}"/></p>
            <p>ISBN: <c:out value = "${row.ISBN}"/></p>
            <p>Título: <c:out value = "${row.Titulo}"/></p>
            <p>Autor: <c:out value = "${row.Autor}"/></p>
            <p>Editorial: <c:out value = "${row.Editorial}"/></p>
        </c:forEach>    
        <sql:update dataSource="${datos}" var="result">
            DELETE FROM libro WHERE Id=?;
            <sql:param value="${param.Id}"/>
        </sql:update>
        <a href="index.jsp">ACEPTAR</a>
    </body>
    </body>
</html>
