<%--
  Created by IntelliJ IDEA.
  User: dani
  Date: 2/12/24
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


    <title>C.Baloncesto</title>
</head>
<body>
<%
    Class.forName("org.postgresql.Driver");
    Connection conexion = DriverManager.
            getConnection("jdbc:postgresql://127.0.0.1:5432/baloncesto",
                    "postgres",
                    "secret");

    Statement s = conexion.createStatement();

    request.setCharacterEncoding("UTF-8");

    String actualizacion = "UPDATE socio SET "
            + "nombre='" + request.getParameter("nombre")
            + "', estatura=" + request.getParameter("estatura")
            + ", edad=" + request.getParameter("edad")
            + ", localidad='" + request.getParameter("localidad")
            + "' WHERE socioID=" + request.getParameter("socioID");
    s.execute(actualizacion);

    out.println("Socio Modificado Correctamente");

    conexion.close();
%>
<br>
<a href="index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span>Volver a Inicio</a>
</body>
</html>
