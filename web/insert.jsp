<%-- 
    Document   : insert
    Created on : Oct 17, 2021, 1:03:06 PM
    Author     : alonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<%@ include file="fuentedatos.jsp" %>
<c:set var="pageId" value="Insertar" />
<c:set var="standalone" value="not" />
<link rel="stylesheet" href="public/css/sytle.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AGREGAR</title>
    </head>
    <body>  
        <c:if test="${empty param.titulo or empty param.autor or empty param.editorial or empty param.isbn}">
            <c:redirect url="error.jsp">
                <c:param name="tipo" value="parametro"/>
                <c:param name="destino" value="index.jsp"/>
            </c:redirect>
        </c:if>     
        <c:if test="${sessionScope.nivel != 1}">
            <c:redirect url='error.jsp'>
                <c:param name="operacion" value="${pageId}"/>
                <c:param name="logeado" value="not"/>
            </c:redirect>
        </c:if>
        <sql:update dataSource="${Books}" var="result">
            INSERT INTO libros (isbn,titulo,autor,editorial) VALUES(?,?,?,?);
            <sql:param value="${param.isbn}"/>
            <sql:param value="${param.titulo}"/>
            <sql:param value="${param.autor}"/>
            <sql:param value="${param.editorial}"/>
        </sql:update>
        <h1 class="h1title">Se ha registrado exitosamente el libro:</h1>
        <p class="resultinsert">ISBN: ${param.isbn}</p>
        <p class="resultinsert">Titulo: ${param.titulo}</p>
        <p class="resultinsert">Autor: ${param.autor}</p>
        <p class="resultinsert">Editorial: ${param.editorial}</p>
        <a href="index.jsp" class="linkaceptar">ACEPTAR</a>
       
        
    </body>
</html>
