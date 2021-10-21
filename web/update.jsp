<%-- 
    Document   : update
    Created on : Oct 17, 2021, 1:03:43 PM
    Author     : alonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>

<!--Base de datos -->
<%@ include file="fuentedatos.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Registro</title>
    </head>
    <body>
        <h1>Actualizar Registro</h1>
        <c:if test="${empty param.titulo or empty param.autor or empty param.editorial or empty param.isbn}">
            <c:redirect url="error.jsp">
                <c:param name="tipo" value="parametro"/>
                <c:param name="destino" value="index.jsp"/>
            </c:redirect>
        </c:if>           
        
        <sql:update dataSource="${Books}" var="result">
             UPDATE libros SET titulo= ?, autor= ?, editorial= ? WHERE  isbn= ?
            <sql:param value="${param.titulo}"/>
            <sql:param value="${param.autor}"/>
            <sql:param value="${param.editorial}"/>
            <sql:param value="${param.isbn}"/>
        </sql:update>        
        
        <sql:query dataSource = "${Books}" var = "result">
            SELECT * from libros;
        </sql:query>
            
            <p>Se ha Actualizado El siguiente libro:</p>
            <p>ISBN: <c:out value="${param.isbn}"/></p>
            <p>Titulo: <c:out value="${param.titulo}"/></p>
            <p>Autor: <c:out value="${param.autor}"/></p>
            <p>Editorial: <c:out value="${param.editorial}"/></p>
        
        <a href="index.jsp">Aceptar</a>
            
    </body>
</html>
