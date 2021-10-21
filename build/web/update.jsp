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
        <meta name="author" content="Miguel Angel Amaya Rodriguez">
        <meta name="author" content="Christian Javier Ayala Guerra">
        <meta name="author" content="Diego José Ayala Guerra">
        <meta name="author" content="Luis Alonso Cornejo Jiménez">
        <meta name="author" content="Carolina Isabel Pineda Delgado">
        <meta name="author" content="José Gustavo Pineda Delgado">
        <meta name="author" content="William Enrique Vásquez Mancia">
        <meta name="keywords" content="JSP, GUIA 55ab">
        <meta name="description" content="Guia 55ab update.jsp">
        <link rel="stylesheet" href="public/css/sytle.css">
    </head>
    <body>
        <h1 class="h1title">Actualizar Registro</h1>
        <c:if test="${empty param.titulo or empty param.autor or empty param.editorial or empty param.isbn}">
            <c:redirect url="error.jsp">
                <c:param name="tipo" value="parametro"/>
                <c:param name="destino" value="index.jsp"/>
            </c:redirect>
        </c:if>           
        <c:if test="${sessionScope.nivel != 2}">
            <c:redirect url='error.jsp'>
                <c:param name="operacion" value="${pageId}"/>
                <c:param name="logeado" value="not"/>
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
            
            <p class="resultupdate">Se ha Actualizado El siguiente libro:</p>
            <p class="resultupdate">ISBN: <c:out value="${param.isbn}"/></p>
            <p class="resultupdate">Titulo: <c:out value="${param.titulo}"/></p>
            <p class="resultupdate">Autor: <c:out value="${param.autor}"/></p>
            <p class="resultupdate">Editorial: <c:out value="${param.editorial}"/></p>
        
        <a href="index.jsp" class="linkaceptar">Aceptar</a>
            
    </body>
</html>
