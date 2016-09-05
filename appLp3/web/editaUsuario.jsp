<%-- 
    Document   : editaUsuario
    Created on : 01/09/2016, 21:23:34
    Author     : Gabriel
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
        <h1>Edita Usuario</h1>
        
        <form method="post" action="FrontControllerServlet?control=Edita">
            <input type="hidden" name="id" id="id" value="${pageContext.request.getParameter("id")}"/>
            <div class="form-group">
                <label>Nome :</label>
                <input type="text" class="form-control" id="nome" name="nome" value="${usuario.getNome()}" placeholder="Digite o nome:"/>
            </div>
            <div class="form-group">
                <label>Sobrenome :</label>
                <input type="text" class="form-control" id="sobrenome" value="${usuario.getSobrenome()}" name="sobrenome" placeholder="Digite o sobrenome:"/>
            </div>
            <input class="btn btn-success" type="submit" value="Atualizar Usuario" />
            <br><br>
            <a href="FrontControllerServlet?control=Lista" class="btn btn-warning">Voltar</a>
        </form>
    </div>

</html>
