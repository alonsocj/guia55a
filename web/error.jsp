<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP error de contexto</title>
    </head>
    <body>
        <h1>Control de acceso</h1>
        <h4>
            <c:choose>
                <c:when test="${param.tipo eq 'contexto'}">
                    Error, intento de ejecutar una jsp, la cual debe estar en un contexto dentro de otra jsp
                </c:when>
                <c:when test="${param.tipo eq 'parametro'}">
                    Error, intento de ejecutar una instrucción, sin proporcionar los parametros necesarios, se le redigirá a la página de inicio.
                </c:when>
                <c:when test="${param.logeado eq 'not'}">
                    Hemos detectado que usted intenta realizar  la operacion: ${param.operacion}, sin haberse logeado.
                    A continuación se le permite ingresar con su sesión actual, pero solo tiene derechos para realizar Consultas.               
                </c:when>
                <c:when test="${param.logeado eq 'yes'}">
                    Hemos detectado que usted intenta realizar  la operacion: ${param.operacion},
                    pero su nivel de seguridad es: ${sessionScope.nivel}, el cual solo le permite realizar:
                    <c:set var="permiso" value="${sessionScope.nivel}"/>
                    <c:choose>
                        <c:when test="${permiso eq '0'}">
                            Consultas
                        </c:when>
                        <c:when test="${permiso eq '1'}">
                            Consultas e Inserciones
                        </c:when>
                        <c:when test="${permiso eq '2'}">
                            Consultas, Actualizaciones, Eliminaciones
                        </c:when>                      
                    </c:choose>

                </c:when>                 
            </c:choose>
  
        </h4>
        <p style="color:blue;">
                            <br>Dentro de unos segundos sera redirigido a la pagina de INICIO</p>
            <script>
                setTimeout(function () {
                    location.href = "${param.destino}";
                }, 5000);
            </script>
    </body>
</html>