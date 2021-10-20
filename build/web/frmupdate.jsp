<%-- 
    Document   : frmupdate
    Created on : Oct 17, 2021, 1:03:23 PM
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
        <title>Actualizar</title>
    </head>
    <body>
        <h1>Actualizando datos...</h1>
        <form name="actualizar" method="get" action="javascript:actualizar();">
            ISBN: <input type="text" name="isbn" value="${param.isbn}"></br></br>
            Titulo: <input type="text" name="titulo" value = "${param.titulo}"></br></br>
            Autor: <input type="text" name="autor" value = "${param.autor}"></br></br>
            Editorial: <input type="text" name="editorial" value = "${param.editorial}"></br></br>
            <input type="SUBMIT" name="actualizar" value="Actualizar">
        </form>
            <script type="application/javascript" src="public/js/update.js"></script>
    </body>
</html>
