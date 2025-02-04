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


    <title>Club de Baloncesto - Luis José Sánchez</title>
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


    // Comprueba la existencia del número de socio introducido
    String consultaNumSocio = "SELECT * FROM socio WHERE socioID="
            + Integer.valueOf(request.getParameter("socioID"));


    ResultSet numeroDeSocios = s.executeQuery (consultaNumSocio);




    if (numeroDeSocios.next()) {
        out.println("Lo siento, no se ha podido dar de alta, ya existe un socio con el número "
                + request.getParameter("socioID") + ".");
    } else {
        String insercion = "INSERT INTO socio VALUES (" + Integer.valueOf(request.getParameter("socioID"))
                + ", '" + request.getParameter("nombre")
                + "', " + Integer.valueOf(request.getParameter("edad"))
                + ", " + Integer.valueOf(request.getParameter("estatura"))
                + ", '" + request.getParameter("localidad") + "')";
        s.execute(insercion);
        out.println("Socio dado de alta correctamente.");
    }
    conexion.close();
%>
<br>
<a href="index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Página principal</button>
</a>
</body>
</html>
