<%-- 
    Document   : insert
    Created on : Oct 17, 2021, 1:03:06 PM
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
        <sql:setDataSource var ="datos" driver="org.mariadb.jdbc.Driver"
                           url="jdbc:mariadb://localhost:3308/biblioteca"
                           user="root" password=""/>
        
        <sql:update dataSource="${datos}" var="result">
            INSERT INTO libro (isbn,titulo,autor,editorial) VALUES(?,?,?,?);
            <sql:param value="${param.isbn}"/>
            <sql:param value="${param.titulo}"/>
            <sql:param value="${param.autor}"/>
            <sql:param value="${param.editorial}"/>
        </sql:update>
            <sql:query dataSource="${datos}" var="result">
                SELECT * FROM libro WHERE isbn = ?;
                <sql:param value="$isbn"/>
            </sql:query>
            <h1>Se ha registrado exitosamente el libro:</h1>
            <c:forEach var="row" items="${result.rows}">
            <p>ISBN: <c:out value="${row.isbn}"/></p>
            <p>Titulo: <c:out value="${row.titulo}"/></p>
            <p>Autor: <c:out value="${row.autor}"/></p>
            <p>Editorial: <c:out value="${row.editorial}"/></p>
            </c:forEach>
            <a href="index.jsp">ACEPTAR</a>
    </body>
</html>
