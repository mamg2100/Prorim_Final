<%-- 
    Document   : listaUnidade
    Created on : 19/03/2016, 16:03:55
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unidades</title>
        
        <script src="../js/jquery-2.2.3.js"></script>
        <script src="../js/script.js"></script>
        <link rel="stylesheet" href="../CSS/datatables.min.css">
        <link rel="stylesheet" href="../CSS/estilo.css">
        <link rel="stylesheet" href="../CSS/table.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <script src="js/script.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>
         
<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
        <TITLE>PRORIM - Unidades</TITLE>
    </HEAD>

    <BODY>
        <h2>Unidades cadastradas</h2>

        <% 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
            Statement st = con.createStatement();

            Statement statement = con.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from unidade"); 
        %>

        <TABLE class="table table-striped" id="tabela">
            <thead>
            <TR>
                <TH>Codigo</TH>
                <TH>Unidade</TH>
                <TH>Tipo</TH> 
                <TH>Endereço</TH>
                <TH>Nr</TH>
                <TH>Bairro</TH>
                <TH>Cidade</TH>
                <TH>UF</TH>
                <TH>Fone 1</TH>
                <TH>Fone 2</TH>
                <TH>Contato</TH>
                <TH>Fone</TH>
               
            </TR>
            </thead>
            
            <tbody>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD> 
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
                <TD> <%= resultset.getString(7) %></TD>
                <TD> <%= resultset.getString(8) %></TD>
                <TD> <%= resultset.getString(9) %></TD>
                <TD> <%= resultset.getString(10) %></TD>
                <TD> <%= resultset.getString(11) %></TD>
                <TD> <%= resultset.getString(12) %></TD>
                <TD><a href="unidade/unidade.jsp?codigo=<%= resultset.getString(1)%>">Excluir</a></TD>
                <TD><a href="unidade/unidade.jsp?codigo=<%= resultset.getString(1)%>&unidade=<%= resultset.getString(2)%>&endereco=<%= resultset.getString(4)%>
                       &nr=<%= resultset.getString(5)%>&bairro=<%= resultset.getString(6)%>&cidade=<%= resultset.getString(7)%>&uf=<%= resultset.getString(8)%>
                       &foneum=<%= resultset.getString(9)%>&fonedois=<%= resultset.getString(10)%>&contato=<%= resultset.getString(11)%>
                       &fonecont=<%= resultset.getString(12)%>&tipo=<%= resultset.getString(3)%>">Alterar</a></TD>

            </TR>
            <% } %>
            </tbody>
        </TABLE>
            
        <script src="../js/datatables.min.js"></script>


    </body>
</html>
