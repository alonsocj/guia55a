<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ include file="fuentedatos.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validar Usuarios</title>
    </head>
    <body>
        <h1>Verificacion de Usuarios</h1>
        
    <!--Verificacion de que el campo no este vacio -->
        <c:if test="${empty param.Usuario or empty param.Password}">
            <c:redirect url="frmlogin.jsp">
                <c:param name="msg" value="Usuario o Clave vacios"/>
            </c:redirect>
        </c:if>
    
    <!--Verificacion de usuarios -->
    
   <!--El var = "Books", es el que maneja la base de datos -->
   
    <sql:query dataSource = "${Books}" var = "result">
            SELECT count(*) as cant from usuarios where login=? and clave=?;
            <sql:param value="${param.Usuario}"/>
            <sql:param value="${param.Password}"/>
    </sql:query>
    
    <!--Verificacion de datos incorrectos-->
    
    <c:if test="${result.rows[0].cant < 1}"> 
            <c:redirect url="frmlogin.jsp">
                <c:param name="msg" value="Usuario o Clave Incorrectos"/>
            </c:redirect>
    </c:if>
           
    <sql:query dataSource = "${Books}" var = "datos">
            SELECT login,nombre,nivel from usuarios where login=? and clave=?;
            <sql:param value="${param.Usuario}"/>
            <sql:param value="${param.Password}"/>
    </sql:query>
    <c:set var="user" value="${datos.rows[0].login}" scope="session" />
        <c:set var="nombre" value="${datos.rows[0].nombre}" scope="session" />
        <c:set var="nivel" value="${datos.rows[0].nivel}" scope="session" />
        <p style="color:red;"><br><br>En unos segundos se redirijirá a index</p>
                <script>
            setTimeout(function () {
                location.href = "index.jsp";
            }, 1000);
        </script>
    </body>
</html>
