<%-- 
    Document   : listaUsuario
    Created on : 19/03/2016, 16:00:26
    Author     : thiag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRORIM - Usuários</title>
        <script src="../js/jquery-2.2.3.js"></script>
        <script src="../js/script.js"></script>
        <link rel="stylesheet" href="../CSS/datatables.min.css">
        <link rel="stylesheet" href="../CSS/estilo.css">
        <link rel="stylesheet" href="../CSS/table.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>

    <%@ page import="java.sql.*" %>

    <% Class.forName("com.mysql.jdbc.Driver"); %>

    <HTML>
        <HEAD>
            <TITLE>PRORIM - Usuários</TITLE>
        </HEAD>

        <BODY>
            <h1>Usuários cadastrados</h1>

            <%
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                        "root", "");
                Statement st = con.createStatement();

                Statement statement = con.createStatement();
                ResultSet resultset = statement.executeQuery("select * from usuario");
            %>

            <TABLE class="table table-striped" id="tabela">
                 <thead>
                <TR>
               
                    <TH>Codigo</TH>
                    <TH>Nome</TH>
                    <TH>Login</TH>
                  <!--  <TH>Senha</TH> -->
                    <TH>Setor</TH>
                    <TH>Email</TH>
                    <TH>Tipo</TH>  
                   
                </TR>
                </thead>
                <tbody>
                <% while (resultset.next()) {%>
                <TR>
                
                    <TD > <%= resultset.getString(1)%></td>
                    <TD > <%= resultset.getString(2)%></TD>
                    <TD > <%= resultset.getString(3)%></TD>
                   <!-- <TD > <%= resultset.getString(4)%></TD> -->
                    <TD > <%= resultset.getString(5)%></TD>
                    <TD > <%= resultset.getString(6)%></TD>
                    <TD > <%= resultset.getString(7)%></TD>
                    
                    
                </TR>
                <% }%>
                </tbody>

            </TABLE>

            <script src="../js/datatables.min.js"></script>
        </body>
    </html>

