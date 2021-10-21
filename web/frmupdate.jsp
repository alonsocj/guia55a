<%-- 
    Document   : frmupdate
    Created on : Oct 17, 2021, 1:03:23 PM
    Author     : alonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<c:set var="pageId" value="Actualizar" />
<c:set var="standalone" value="not" />
<%@ include file="fuentedatos.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
        <meta name="author" content="Miguel Angel Amaya Rodriguez">
        <meta name="author" content="Christian Javier Ayala Guerra">
        <meta name="author" content="Diego José Ayala Guerra">
        <meta name="author" content="Luis Alonso Cornejo Jiménez">
        <meta name="author" content="Carolina Isabel Pineda Delgado">
        <meta name="author" content="José Gustavo Pineda Delgado">
        <meta name="author" content="William Enrique Vásquez Mancia">
        <meta name="keywords" content="JSP, GUIA 55ab">
        <meta name="description" content="Guia 55ab frmupdate.jsp">
        <link rel="stylesheet" href="public/css/sytle.css">
    </head>
    <body>
        <h1 class="h1title">Actualizando datos...</h1>
        <form name="actualizar" method="get" action="javascript:actualizar();" class="formsytleupdate">
            ISBN: <input type="text" name="isbn" value="${param.isbn}" pattern="[0-9]{13}" required title="Debe ingresar 13 digitos"></br></br>
            Titulo: <input type="text" name="titulo" value = "${param.titulo}" pattern="[a-zA-Z0-9\,]{0,50}" title="Solo debe ingresar texto y maximo 50 caracteres"></br></br>
            Autor: <input type="text" name="autor" value = "${param.autor}" pattern="[a-zA-Z\,]{0,50}" title="Solo debe ingresar texto sin acento y maximo 50 caracteres"></br></br>
            Editorial: <input type="text" name="editorial" value = "${param.editorial}" pattern="[a-zA-Z\,]{0,50}" title="Solo debe ingresar texto sin acento y maximo 50 caracteres"></br></br>
            <input type="SUBMIT" name="actualizar" value="Actualizar" class="boton">
        </form>
        <c:if test="${empty param.titulo or empty param.autor or empty param.editorial or empty param.isbn}">
            <c:redirect url="error.jsp">
                <c:param name="tipo" value="parametro"/>
                <c:param name="destino" value="index.jsp"/>
            </c:redirect>
        </c:if>           
            <script type="application/javascript" src="public/js/update.js"></script>
        <c:if test="${sessionScope.nivel != 2}">
            <c:redirect url='error.jsp'>
                <c:param name="operacion" value="${pageId}"/>
                <c:param name="logeado" value="not"/>
            </c:redirect>
        </c:if>
    </body>
</html>
