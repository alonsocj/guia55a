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
<c:set var="pageId" value="Eliminar" />
<c:set var="standalone" value="not" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
        <meta name="author" content="Miguel Angel Amaya Rodriguez">
        <meta name="author" content="Christian Javier Ayala Guerra">
        <meta name="author" content="Diego José Ayala Guerra">
        <meta name="author" content="Luis Alonso Cornejo Jiménez">
        <meta name="author" content="Carolina Isabel Pineda Delgado">
        <meta name="author" content="José Gustavo Pineda Delgado">
        <meta name="author" content="William Enrique Vásquez Mancia">
        <meta name="keywords" content="JSP, GUIA 55ab">
        <meta name="description" content="Guia 55ab delete.jsp">
        <link rel="stylesheet" href="public/css/sytle.css">
    </head>
    <body>
        <h1 class="h1title">Eliminación de libro</h1>
        <p class="resultdelete">Se ha eliminado exitosamente el libro:</p>
        <p class="resultdelete">Id: <c:out value = "${param.Id}"/></p>
        <p class="resultdelete">ISBN: <c:out value = "${param.ISBN}"/></p>
        <p class="resultdelete">Título: <c:out value = "${param.Titulo}"/></p>
        <p class="resultdelete">Autor: <c:out value = "${param.Autor}"/></p>
        <p class="resultdelete">Editorial: <c:out value = "${param.Editorial}"/></p>
        
        <c:if test="${empty param.ISBN}">
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
            DELETE FROM libros WHERE isbn=?;
            <sql:param value="${param.ISBN}"/>
        </sql:update>
        <a href="index.jsp" class="linkaceptar">ACEPTAR</a>
        
    </body>
    </body>
</html>
