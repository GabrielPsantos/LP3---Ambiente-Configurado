<%-- 
    Document   : visualizaUsuario
    Created on : 01/09/2016, 16:46:23
    Author     : gsantos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type"
              content="text/html; charset=UTF-8">
        <title>Pagina de Usuarios</title>
        <link rel="stylesheet" href="/appLp3/css/bootstrap.min.css">
        <script src="/appLp3/js/jquery.min.js"></script>
        <script src="/appLp3/js/bootstrap.min.js"></script>
    </head>

    <div class="container">
        <h1>Visualiza de Usuario</h1>
        <div class="form-group">
                <label>Nome :</label>
                <label class="form-control">${usuario.getNome()}</label>
            </div>
            <div class="form-group">
                <label>Sobrenome :</label>
                <label class="form-control">${usuario.getSobrenome()}</label>
            </div>
            <a href="FrontControllerServlet?control=Lista" class="btn btn-warning">Voltar</a>
    </div>

</html>
