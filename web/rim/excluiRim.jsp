<%-- 
    Document   : excluiUsuario
    Created on : 19/03/2016, 16:00:47
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Requisição</title>
        <link rel="stylesheet" href="../CSS/estilo.css">
        <script src="js/script.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>       
           <h2>Exclusão de Requisição</h2>
            <form method="post" action="DAO/DAOexclui.jsp">
               
                <div class="group">
                    <label>Codigo da Requisição</label>
                    <input type="text" name="codigorim" placeholder="Digite o código para exclusão" required><span class="highlight"></span><span class="bar"></span>

                </div>
                <input type="submit" class="button buttonBlue" value="Confirmar" />
            </form
    </body>
</html>
