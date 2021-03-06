<%-- 
    Document   : listaUsuario
    Created on : 19/03/2016, 16:00:26
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Requisição</title>

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
            <TITLE>PRORIM - Requisições</TITLE>
        </HEAD>

        <BODY>
            <h2>Requisições Cadastradas</h2>

            <%
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim", "root", "");
                Statement st = con.createStatement();
                Statement statement = con.createStatement();
                ResultSet resultset = statement.executeQuery("select * from rim order by cod_rim");
            %>

            <TABLE class="table table-striped" id="tabela">
                <thead>
                    <TR>
                        <TH>Codigo</TH>
                        <TH>Unidade</TH>
                        <TH>Descrição</TH>
                        <TH>Despesa</TH>
                        <TH>Tipo</TH>
                        <TH>Cetil</TH>  
                        <TH>Data</TH>
                        <TH>Data Cetil</TH> 
                        <TH>Valor Estimado</TH>
                        <TH>Valor Real</TH>
                        <TH>Processo</TH>
                        <TH>Ano Processo</TH>
                        <TH>Processo Contábil</TH>
                        <TH>Ano</TH>
                        <TH>Contabilidade</TH>
                        <TH>Ordenador</TH>
                        <TH>Compras</TH>
                        <TH>Ord.Empenho</TH>
                        <TH>Compras</TH>
                        <TH>Dipe
                        <TH>Cadastrante</TH>
                        <TH>Data Cadastro</TH>
                        <TH>Anotações</TH>
                        <TH>Empenho</TH>
                        <TH>Exclusão</TH>
                        <TH>Alteração</th>
                    </TR>
                </thead>
                <tbody>
                    <% while (resultset.next()) {%>
                    <TR>
                        <TD > <%= resultset.getString(1)%></td>
                        <TD > <%= resultset.getString(2)%></TD>
                        <TD > <%= resultset.getString(3)%></TD>
                        <TD > <%= resultset.getString(4)%></TD> 
                        <TD > <%= resultset.getString(5)%></TD>
                        <TD > <%= resultset.getString(6)%></TD>
                        <TD > <%= resultset.getString(7)%></TD>
                        <TD > <%= resultset.getString(8)%></TD>
                        <TD > <%= resultset.getString(9)%></TD>
                        <TD > <%= resultset.getString(10)%></TD>
                        <TD > <%= resultset.getString(11)%></TD>
                        <TD > <%= resultset.getString(12)%></TD>
                        <TD > <%= resultset.getString(13)%></TD>
                        <TD > <%= resultset.getString(14)%></TD>
                        <TD > <%= resultset.getString(15)%></TD>
                        <TD > <%= resultset.getString(16)%></TD>
                        <TD > <%= resultset.getString(17)%></TD>
                        <TD > <%= resultset.getString(18)%></TD>
                        <TD > <%= resultset.getString(19)%></TD>
                        <TD > <%= resultset.getString(20)%></TD>
                        <TD > <%= resultset.getString(21)%></TD>          
                        <TD > <%= resultset.getString(22)%></TD>          
                        <TD > <%= resultset.getString(23)%></TD>    
                        <TD><a href="../empenho/cadastraEmpenho.jsp?codigo=<%= resultset.getString(1)%>&despesa=<%= resultset.getString(4)%>&cetil=<%= resultset.getString(6)%>&tipoRI=<%= resultset.getString(5)%>&dataEmpenhoSQL=<%= resultset.getString(8)%>">Empenho</a></TD>
                        <TD><a href="../rim/excluiRim.jsp?codigoRIM=<%= resultset.getString(1)%>">Excluir</a></TD>
                        <TD><a href="../rim/editaRim.jsp?codigoRIM=<%= resultset.getString(1)%>&datacetil=<%= resultset.getString(7)%>&cmbunidade=<%= resultset.getString(2)%>&descricao=<%= resultset.getString(3)%>&processo=<%= resultset.getString(11)%>&anoprocesso=<%= resultset.getString(12)%>&processocontabil=<%= resultset.getString(13)%>&anoprocessocontabil=<%= resultset.getString(14)%>&despesa=<%= resultset.getString(4)%>&valorestimado=<%= resultset.getString(9)%>&valorreal=<%= resultset.getString(10)%>&contabilidade=<%= resultset.getString(15)%>&dataordenadorri=<%= resultset.getString(16)%>&datacomprasdcs=<%= resultset.getString(17)%>&dataordenadorempenho=<%= resultset.getString(18)%>&datacomprasdcsaf=<%= resultset.getString(19)%>&datadipe=<%= resultset.getString(20)%>&datacadastro=<%= resultset.getString(22)%>&cadastrante=<%= resultset.getString(21)%>&anotacoes=<%= resultset.getString(23)%>">Alterar</a></TD>
                    </TR>
                    <% }%>
                </tbody>
            </TABLE>

            <script src="../js/datatables.min.js"></script>
        </body>
    </html>

