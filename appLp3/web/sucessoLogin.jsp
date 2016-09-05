<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login bem sucedido</title>
        <link rel="stylesheet" href="/appLp3/css/bootstrap.min.css">
        <script src="/appLp3/js/jquery.min.js"></script>
        <script src="/appLp3/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            //allow access only if session exists
            String user = (String) session.getAttribute("usuario");
            String userName = null;
            String sessionID = null;
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("usuario")) {
                        userName = cookie.getValue();
                    }
                    if (cookie.getName().equals("JSESSIONID")) {
                        sessionID = cookie.getValue();
                    }
                }
            }
        %>
        <div class="jumbotron container">
            <div class="container text-center">
                <h2>Aplicação Inicial LP3 (Turma : 4J11)</h2>
                <h3>Hi <%=userName%>, Login successful. Your Session ID=<%=sessionID%></h3>
                <p> User = <%=user%></p>
                <br>
                <br>
                <a class="btn btn-primary" href="FrontControllerServlet?control=Lista">Listagem dos Usuarios</a>
                <a class="btn btn-danger" href="checkout.jsp">Checkout Page</a>
                <br><br>
                <form action="LogoutServlet" method="post">
                    <input class="btn btn-warning" type="submit" value="Logout" >
                </form>
            </div>
        </div>

    </body>
</html>