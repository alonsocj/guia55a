<%-- 
    Document   : frmupdate
    Created on : Oct 17, 2021, 1:03:23 PM
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
        <sql:setDataSource var ="fuenteDatos" driver="org.mariadb.jdbc.Driver"
                           url="jdbc:mariadb://localhost:3308/biblioteca"
                           user="root" password=""/>
        <h1>Hello World!</h1>
        
        <sql:query dataSource="${fuentedatos}" var="result">
                SELECT * FROM libro WHERE Id = ?;
            </sql:query>
            <c:forEach var="row" items="${result.rows}">
            <p>ISBN: <c:out value="${row.isbn}"/></p>
            <p>Titulo: <c:out value="${row.titulo}"/></p>
            <p>Autor: <c:out value="${row.autor}"/></p>
            <p>Editorial: <c:out value="${row.editorial}"/></p>
            </c:forEach>
            <a href="index.jsp">ACTUALIZAR</a>
        
    </body>
</html>
