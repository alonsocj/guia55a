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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${not empty sessionScope.user}">
              <c:if test="${sessionScope.user != 'Anonimo'}">
              <div style="color:blue;font-size:5mm;">
                  Usuario: ${sessionScope.user}</div><br>
                  <a href="logout.jsp">Logout</a>
              </c:if>
          </c:if>
         <c:if test="${empty sessionScope.user or sessionScope.user eq 'Anonimo'}">
          <span style="color:brown;font-size:5mm;">
              <a href="frmlogin.jsp">Login</a>
        </span>
        </c:if>
        <h1>Hello World!</h1>
        <c:if test="${sessionScope.nivel eq 1}">
        <form name="insertar" method="post" action="javascript:insertar();">
            ISBN: <input type="text" name="isbn">
            Titulo: <input type="text" name="titulo">
            Autor: <input type="text" name="autor">
            Editorial: <input type="text" name="editorial">
            <input type="SUBMIT" name="enviar" value="Enviar">
        </form>
        </c:if>
        <sql:query dataSource="${Books}" var="data">
            SELECT * FROM libros;
        </sql:query>
        <table>
            <tr>
                <th>Id</th>
                <th>isbn</th>
                <th>titulo</th>
                <th>autor</th>
                <th>editorial</th>
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
