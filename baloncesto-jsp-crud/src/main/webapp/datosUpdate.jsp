<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: dani
  Date: 3/12/24
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

</head>
<body>
<form method="post" action="grabaSocioModificado.jsp">
  <input type="hidden" name="socioID" value="<%=request.getParameter("socioID")%>">
  <br><br>
  Nombre <input type="text" name="nombre" value="<%=request.getParameter("nombre")%>">
  <br><br>
  Estatura <input type="number" name="estatura" value="<%=request.getParameter("estatura")%>">
  <br><br>
  Edad <input type="number" name="edad" value="<%=request.getParameter("edad")%>">
  <br><br>
  Localidad <input type="text" name="localidad" value="<%=request.getParameter("localidad")%>">
  <br><br>
  <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span>Modificar Datos</button>
</form>
</body>
</html>
