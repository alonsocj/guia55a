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
        
        <!-- Creacion de Formulario -->
       
    <h1>Inicio de Sesion</h1>    
  
    <!--En caso de campos vacios -->
    
    <c:if test="${not empty param.msg}">
        <p>Error: ${param.msg}</p>
    </c:if>
    
    <!-- el action del form capturara lo que contenga el validar.jsp -->
    <form name="login" action="validar.jsp" method="post">
        <label for="usuario">Usuario:</label>
        <input type="text" name = "Usuario" size="40">
        <label for="clave">Clave:</label>
        <input type="text" name = "Password" size="40">
        <input type="submit" value="Iniciar Sesion">
    </form>
        
        
    </head>
    <body>
       
    </body>
</html>
