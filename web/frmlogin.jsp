<%-- 
    Document   : frmlogin
    Created on : 10-19-2021, 09:40:29 PM
    Author     : Chris y Mamá
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>

<%-- Manejo de Base de datos--%>
<%@ include file="fuentedatos.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autenticacion de Usuarios</title>
        <meta name="author" content="Miguel Angel Amaya Rodriguez">
        <meta name="author" content="Christian Javier Ayala Guerra">
        <meta name="author" content="Diego José Ayala Guerra">
        <meta name="author" content="Luis Alonso Cornejo Jiménez">
        <meta name="author" content="Carolina Isabel Pineda Delgado">
        <meta name="author" content="José Gustavo Pineda Delgado">
        <meta name="author" content="William Enrique Vásquez Mancia">
        <meta name="keywords" content="JSP, GUIA 55ab">
        <meta name="description" content="Guia 55ab frmlogin.jsp">
        <link rel="stylesheet" href="public/css/sytle.css">
    </head>
    <body>
        <!-- Creacion de Formulario -->
       
    <h1 class="tituloform">Inicio de Sesion</h1>    
  
    <!--En caso de campos vacios -->
    
    <c:if test="${not empty param.msg}">
        <p class="errormessage">Error: ${param.msg}</p>
    </c:if>
    
    <!-- el action del form capturara lo que contenga el validar.jsp -->
    <form name="login" action="validar.jsp" method="post" class="formstyle">
        <label for="usuario" class="etiquetas">Usuario:</label>
        <input type="text" name = "Usuario" size="40"><br><br>
        <label for="clave"  class="etiquetas">Clave:</label>
        <input type="text" name = "Password" size="40"><br><br>
        <input type="submit" value="Iniciar Sesion" class="boton">
    </form>
        
        
    </body>
</html>
