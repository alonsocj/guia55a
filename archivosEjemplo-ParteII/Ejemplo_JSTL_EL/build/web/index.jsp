
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Ejemplo usando JSTL + EL</title>
        <script>
        function insertar() {
            alert("A continuación debe ingresar los datos de la persona.");
            var first = prompt("Ingrese el nombre: ");            
            var last = prompt("Ingrese el apellido");
            var age = prompt("Ingrese la edad: ");
            var xage = parseInt(Math.random()*(100-18)+18);
            location.href="insertar.jsp?first="+first+"&last="+last+"&age="+age+"&xage="+xage;
        }    
        
        </script>
            
    </head>
    <body>
        <h1>Ejemplo JSP con JSTL(Jsp Standard Tags Library) 
            + EL (Expression Language)</h1>
        <h2>TPI-115, Ing. Balmore Ortiz</h2>
        <ul>
            <li><a href="consultar.jsp">Mostrar Listado Actual(ACTUALIZAR ó BORRAR)</a></li>
            <li><a href="javascript:insertar();">Agregar y mostrar Listado Actualizado</a></li>
        </ul>

    </body>
</html>
