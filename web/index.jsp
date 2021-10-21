<%-- 
    Document   : index
    Created on : Oct 17, 2021, 9:51:39 AM
    Author     : alonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<%@ include file="fuentedatos.jsp" %>
<c:set var="pageId" value="Index" />
<c:set var="standalone" value="not" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <meta name="author" content="Miguel Angel Amaya Rodriguez">
        <meta name="author" content="Christian Javier Ayala Guerra">
        <meta name="author" content="Diego José Ayala Guerra">
        <meta name="author" content="Luis Alonso Cornejo Jiménez">
        <meta name="author" content="Carolina Isabel Pineda Delgado">
        <meta name="author" content="José Gustavo Pineda Delgado">
        <meta name="author" content="William Enrique Vásquez Mancia">
        <meta name="keywords" content="JSP, GUIA 55ab">
        <meta name="description" content="Guia 55ab index.jsp">
        <link rel="stylesheet" href="public/css/sytle.css">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        
        <nav class="navbar navbar-dark bg-dark">
            <a></a>
            <c:if test="${empty sessionScope.user or sessionScope.user eq 'Anonimo'}">
                <a style="color:white" href="frmlogin.jsp" class="">Iniciar Sesion</a>  
            </c:if>

            <c:if test="${not empty sessionScope.user}">
              <c:if test="${sessionScope.user != 'Anonimo'}">
              <div class="user">
                  Usuario: ${sessionScope.user}</div><br>
                  <a style="color:white" href="logout.jsp">Logout</a>
              </c:if>
          </c:if>
        </nav><br>         
        <h1 class="biblioteca">Biblioteca del Grupo 5 TPI115</h1>

        <c:if test="${sessionScope.nivel eq 1}">
        <form name="insertar" method="post" action="javascript:insertar();" class="forminsert">
            ISBN: <input type="text" name="isbn" pattern="[0-9]{13}" required title="Debe ingresar 13 digitos">
            Titulo: <input type="text" name="titulo" pattern="[a-zA-Z0-9\,]{0,50}" title="Solo debe ingresar texto y maximo 50 caracteres">
            Autor: <input type="text" name="autor" pattern="[a-zA-Z\,]{0,50}" title="Solo debe ingresar texto sin acento y maximo 50 caracteres">
            Editorial: <input type="text" name="editorial" pattern="[a-zA-Z\,]{0,50}" title="Solo debe ingresar texto sin acento y maximo 50 caracteres">
            <input type="SUBMIT" name="enviar" value="Enviar" class="boton">
        </form>
        </c:if>
        <sql:query dataSource="${Books}" var="data">
            SELECT * FROM libros;
        </sql:query>
        <table>
            <tr>
                <th>Id</th>
                <th>Isbn</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Editorial</th>
                <c:if test="${sessionScope.nivel eq 2}">
                <th colspan="2">Acciones</th>
                </c:if>
            </tr>
            <c:forEach var="row" items="${data.rows}">
                <tr>
                    <td><c:out value="${row.Id}"/></td>
                    <td><c:out value="${row.isbn}"/></td>
                    <td><c:out value="${row.titulo}"/></td>
                    <td><c:out value="${row.autor}"/></td>
                    <td><c:out value="${row.editorial}"/></td>
                   <c:if test="${sessionScope.nivel eq 2}"> 
                    <td><a href="frmupdate.jsp?id=${row.Id}&isbn=${row.isbn}&titulo=${row.titulo}&autor=${row.autor}&editorial=${row.editorial}">Actualizar</a></td>
                    <td><a href="delete.jsp?Id=${row.Id}&ISBN=${row.isbn}&Titulo=${row.titulo}&Autor=${row.autor}&Editorial=${row.editorial}">Eliminar</a></td>
                    </c:if>
                </tr>
            </c:forEach>
        </table>
        <script type="application/javascript" src="public/js/insert.js"></script>
        <!--<script type="application/javascript" src="public/js/select.js"></script>-->
    </body>
</html>
