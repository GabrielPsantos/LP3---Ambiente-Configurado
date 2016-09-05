<%-- 
    Document   : cadastraUsuario
    Created on : 31/08/2016, 12:07:32
    Author     : gsantos
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="mack.entities.Usuario"%>
<%@page import="java.util.List"%>
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
        <h1>Cadastro de Usuario</h1>
        <form method="post" action="FrontControllerServlet?control=Cadastra">
            <div class="form-group">
                <label>Nome :</label>
                <input type="text" class="form-control" id="nome" name="nome" placeholder="Digite o nome:"/>
            </div>
            <div class="form-group">
                <label>Sobrenome :</label>
                <input type="text" class="form-control" id="sobrenome" name="sobrenome" placeholder="Digite o sobrenome:"/>
            </div>
            <input class="btn btn-success" type="submit" value="Cadastrar Usuario" />
            <br><br>
            <a href="FrontControllerServlet?control=Lista" class="btn btn-warning">Voltar</a>
        </form>
    </div>

</html>




