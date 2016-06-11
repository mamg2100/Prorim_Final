<%-- 
    Document   : editaUsuario
    Created on : 19/03/2016, 16:01:14
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Requisição</title>
        <link rel="stylesheet" href="../CSS/estilo.css">
        <!-- <link rel="stylesheet" href="../CSS/form.css">-->
        <script src="js/script.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>

    <%@ page import="java.sql.*" %>

    <% Class.forName("com.mysql.jdbc.Driver");%>


    <body>        
        <h2>Atualização das Requisições</h2>
        <form method="post" action="DAO/DAOaltera.jsp">
            <div class="group">

                <label>Cetil*</label>
                <input type="text" name="codigoRIM" value="<%=request.getParameter("codigoRIM")%>" placeholder="entre com o código cetil" disabled ><span class="highlight"></span><span class="bar"></span>

            </div>
            <div class="group">
                <label>Data Cetil*</label>

                <!--alterado type para 'text' no lugar de 'date' -->
                <input type="text" name="datacetil" value="<%=request.getParameter("datacetil")%>" disabled><span class="highlight"></span><span class="bar"></span>
            </div>

            <%
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                        "root", "");
                Statement st = con.createStatement();

                Statement statement = con.createStatement();
                ResultSet resultset = statement.executeQuery("select nome_unidade from unidade");
            %>


            <div class="group">
                <label>Unidade | Setor Solicitante*</label><br>
                <input type="text" name="cmbunidade" value="<%=request.getParameter("cmbunidade")%>" disabled><span class="highlight"></span><span class="bar"></span>

                <%--
                <select class="group_select"name="cmbunidade" value="<%=request.getParameter("cmbunidade")%>"> 
                    <% while (resultset.next()) {%>
                    <option><%= resultset.getString(1)%> </option>   
                    <% }%>
                </select>
                --%>

            </div>

            <div class="group">

                <label> Tipo RI</label><br>

                <select class="group_select" name="tiporim" placeholder="selecione um tipo" requerid> 

                    <option>RIM</option>   
                    <option>RRP</option>   

                </select>
            </div>    

            <div class="group">
                <label>Descrição</label>
                <input type="text" name="descricao" value="<%=request.getParameter("descricao")%>" disabled><span class="highlight"></span><span class="bar"></span>

            </div>
            <div class="group">
                <label>Processo</label>
                <input type="text" name="processo" value="<%=request.getParameter("processo")%>" placeholder="processo gerado" ><span class="highlight"></span><span class="bar"></span>
            </div>
            <div class="group">
                <label>Ano Processo</label>
                <input type="text" name="anoprocesso" value="<%=request.getParameter("anoprocesso")%>" placeholder="yyyy" ><span class="highlight"></span><span class="bar"></span>
            </div>                                   

            <div class="group">
                <label>Processo Contábil</label>
                <input type="text" name="processocontabil" value="<%=request.getParameter("processocontabil")%>" placeholder="processo contabil gerado"><span class="highlight"></span><span class="bar"></span>
            </div>

            <div class="group">
                <label>Ano Processo Contábil</label>
                <input type="text" name="anoprocessocontabil" value="<%=request.getParameter("anoprocessocontabil")%>" placeholder="yyyy" ><span class="highlight"></span><span class="bar"></span>
            </div>               


            <%
                /* Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                 "root", ""); */
                Statement stdespesa = con.createStatement();
                Statement statementdespesa = con.createStatement();
                ResultSet resultsetdespesa = statement.executeQuery("select despesa from dotacao order by despesa");
            %>

            <%--
            <div class="group">
                <label>Despesa*<br>

                    <select class="group_select" name="despesa" value="" requerid> 
                        <% while (resultsetdespesa.next()) {%>
                        <option><%= resultsetdespesa.getString(1)%> </option>   
                        <% }%>
                    </select>
                    <br></br>
                    <label> Reduzida </label>
                    <label> </label>
                    <br></br>                   
                    <label> Código de Aplicação </label>
                    <label> </label>
                    <br></br> 
                    <label> Programa </label>
                    <label> </label>
            </div>
            --%>

            <div class="group">
                <label>Despesa*<br>
                    <input type="text" name="despesa" value="<%=request.getParameter("despesa")%>" ><span class="highlight"></span><span class="bar"></span>
            </div>  



            <div class="group">                
                <label>Valor Estimado*</label>
                <input type="text" name="valorestimado" value="<%=request.getParameter("valorestimado")%>" placeholder="R$" required><span class="highlight"></span><span class="bar"></span>
            </div>  

            <div class="group">                
                <label>Valor Real</label>
                <input type="text" name="valorreal" value="<%=request.getParameter("valorreal")%>" placeholder="R$" ><span class="highlight"></span><span class="bar"></span>
            </div>    

            <div class="group">
                <label>Divisão Contábil</label>

                <input type="text" name="contabilidade" value="<%=request.getParameter("contabilidade")%>" ><span class="highlight"></span><span class="bar"></span>
            </div>
            <div class="group">
                <label>Ordenador | R.I</label>

                <input type="text" name="dataordenadorri" value="<%=request.getParameter("dataordenadorri")%>" ><span class="highlight"></span><span class="bar"></span>
            </div>
            <div class="group">
                <label>Divisão Compras | DCS</label>

                <input type="text" name="datacomprasdcs" value="<%=request.getParameter("datacomprasdcs")%>"><span class="highlight"></span><span class="bar"></span>
            </div>
            <div class="group">
                <label>Ordenador | Empenho</label>

                <input type="text" name="dataordenadorempenho" value="<%=request.getParameter("dataordenadorempenho")%>"><span class="highlight"></span><span class="bar"></span>
            </div>
            <div class="group">
                <label>Divisão Compras | DCS | AF</label>

                <input type="text" name="datacomprasdcsaf" value="<%=request.getParameter("datacomprasdcsaf")%>" ><span class="highlight"></span><span class="bar"></span>
            </div>
            <div class="group">
                <label>Divisão Planejamento Econômico - DIPE</label>

                <input type="text" name="datadipe" value="<%=request.getParameter("datadipe")%>"><span class="highlight"></span><span class="bar"></span>
            </div>    

            <%
                /*Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                 "root", "");*/
                Statement st1 = con.createStatement();

                Statement statement1 = con.createStatement();
                ResultSet resultset1 = statement.executeQuery("select nome_usuario from usuario");
            %>    
            <div class="group">
                <label>Cadastrante*<br>
                <input type="text" name="cadastrante" value="<%=request.getParameter("cadastrante")%>" ><span class="highlight"></span><span class="bar"></span>
                    <!--
                    <select class="group_select" name="cadastrante" value="" requerid> 
                        <%--
                        <% while (resultset1.next()) {%>
                        <option><%= resultset1.getString(1)%> </option>   
                        <% }%>
                        --%>
                    </select>
                    -->
            </div>

            <div class="group">
                <label>Data do Cadastro</label>

                <!-- <input type="date" name="datacadastro" value="" ><span class="highlight"></span><span class="bar"></span>-->
                <input type="text" name="datacadastro" value="<%=request.getParameter("datacadastro")%>" ><span class="highlight"></span><span class="bar"></span>

            </div>  
            <div class="group">
                <label>Anotações</label>
                <!--<textarea class="text_big" name="anotacoes" placeholder="Utilize este campo para anotações relevantes"></textarea>-->
                <input type="text" name="anotacoes" value="<%=request.getParameter("anotacoes")%>" ><span class="highlight"></span><span class="bar"></span>

            </div>

            <input type="submit" class="button buttonBlue" value="Atualizar" />   
        </form>
    </body>
</html>
