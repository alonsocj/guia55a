<%-- 
    Document   : delete
    Created on : Oct 17, 2021, 1:03:55 PM
    Author     : alonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<%@ include file="fuentedatos.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
    </head>
    <body>
        <h1>Eliminación de libro</h1>
        <p>Se ha eliminado exitosamente el libro:</p>
        <p>Id: <c:out value = "${param.Id}"/></p>
        <p>ISBN: <c:out value = "${param.ISBN}"/></p>
        <p>Título: <c:out value = "${param.Titulo}"/></p>
        <p>Autor: <c:out value = "${param.Autor}"/></p>
        <p>Editorial: <c:out value = "${param.Editorial}"/></p>   
        <sql:update dataSource="${Books}" var="result">
            DELETE FROM libros WHERE Id=?;
            <sql:param value="${param.Id}"/>
        </sql:update>
        <a href="index.jsp">ACEPTAR</a>
    </body>
    </body>
</html>
