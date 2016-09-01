<%-- 
    Document   : index
    Created on : 31/08/2016, 12:07:32
    Author     : gsantos
--%>
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

    <%
        List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
    %>
    <div class="container">
        <h2>Usuarios</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Sobrenome</th>
                    <th colspan="3">Ações</th>
                </tr>
            </thead>
            <%if (usuarios.size() > 0) { %>
            <tbody>
                <% for (Usuario u : usuarios) {%>
                <tr>
                    <td><%=u.getNome()%></td>
                    <td><%=u.getSobrenome()%></td>
                    <td><a href="FrontControllerServlet?control=Visualiza&id=<%=u.getId()%>" class="btn btn-primary">Visualizar</a></td>
                    <td><a href="" class="btn btn-default">Editar</a></td>
                    <td><a href="" class="btn btn-danger">Excluir</a></td>
                </tr>
                <%}%>
            </tbody>
            <%}%>
        </table>
        <a href="cadastraUsuario.jsp" class="btn btn-success">Cadastro de Usuario</a>
    </div>
    

</html>




