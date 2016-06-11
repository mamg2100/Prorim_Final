<%-- 
    Document   : cadastroUsuario
    Created on : 19/03/2016, 15:58:40
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRORIM - Requisição</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="../js/script.js" type="text/javascript"></script>
        <script src="../js/jquery-2.2.3.js" type="text/javascript"></script>
        <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../CSS/estilo_form.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <%@ page import="java.sql.*" %>

    <% Class.forName("com.mysql.jdbc.Driver"); %>

    <body>        

        <!-- BARRA DE NAVEGACAO SUPERIOR -->

        <div id="barra_navegacao">
            <nav class="navbar navbar-default" id="barra">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">PRORIM</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Requisição</a></li> 
                        <li><a href="../usuario/usuario.jsp">Usuário</a></li> 
                        <li><a href="../unidade/unidade.jsp">Unidade</a></li> 
                        <li><a href="../fornecedor/fornecedor.jsp">Fornecedor</a></li>
                        <li><a href="../despesa/despesa.jsp">Despesa</a></li> 
                        <li><a href="../empenho/empenho.jsp">Empenho | AF</a></li> 
                        <li><a href="../notafiscal/notafiscal.jsp">Nota Fiscal</a></li> 
                        <li><a href="../listar.jsp">Relatórios</a></li> 
                    </ul>
                </div>
            </nav>
        </div>


        <!-- FIM DA BARRA DE NAVEGACAO -->


        <div class="container">


            <header></header>


            <main>

                <div class="col-md-2" id="coluna_esquerda"></div>

                <!-- CONTEUDO CENTRAL -->

                <div class="row" id="conteudo">


                    <!-- ABAS DE SELEÇÃO -->

                    <ul class="nav nav-tabs">

                        <li class="active"><a data-toggle="tab" href="#cadastrar">Cadastrar</a></li>

                        <li><a data-toggle="tab" href="#editar">Editar</a></li>

                        <li><a data-toggle="tab" href="#excluir">Excluir</a></li>

                    </ul>

                    <!-- FIM DAS ABAS -->


                    <!-- CONTEUDO DAS ABAS DE NAVEGACAO -->

                    <div id="conteudo_abas" class="tab-content">

                        <!-- INICIO DA ABA DE CADASTRO -->

                        <div id="cadastrar" class="tab-pane fade in active">

                            <!-- INICIO DO PAINEL SOB A ABA -->

                            <div class="panel panel-default">

                                <!-- INICIO DO CABECALHO DO PAINEL -->

                                <div class="panel-heading">

                                    <h4>CADASTRO DE REQUISIÇÃO</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">


                                    <!-- PRIMEIRA COLUNA -->
                                    <div class="col-md-4">

                                        <form method="post" action="DAO/DAOcadastra.jsp">

                                            <div class="form-group">

                                                <label>Cetil*</label>
                                                <input class="form-control" type="text" name="cetil" value="" placeholder="entre com o código cetil" required>

                                            </div>

                                            <div class="form-group">

                                                <label>Data Cetil*</label>

                                                <input class="form-control" type="date" name="datacetil" value="" required>
                                            </div>

                                            <%
                                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                                                        "root", "");
                                                Statement statement = con.createStatement();
                                                ResultSet resultset = statement.executeQuery("select nome_unidade from unidade order by nome_unidade");
                                            %>


                                            <div class="form-group">
                                                <label>Unidade | Setor Solicitante*</label><br>

                                                <select class="form-control"name="cmbunidade" value="" required>
                                                    <% while (resultset.next()) {%>
                                                    <option><%= resultset.getString(1)%></option>    
                                                    String escolha = request.getParameter("cmbunidade");                      
                                                    <% }%>

                                                </select>
                                            </div>


                                            <div class="form-group">

                                                <label> Tipo RI*</label><br>

                                                <select class="form-control" name="tiporim" placeholder="selecione um tipo" requerid> 

                                                    <option>RIM</option>   
                                                    <option>RRP</option>   

                                                </select>
                                            </div>    

                                            <div class="form-group">
                                                <label>Descrição</label>
                                                <textarea class="text_big form-control" name="descricao" value="" placeholder="Descreva aqui o objeto da requisição"></textarea>
                                            </div>


                                            <%
                                                /* Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                                                 "root", ""); */
                                                Statement stdespesa = con.createStatement();
                                                Statement statementdespesa = con.createStatement();
                                                ResultSet resultsetdespesa = statement.executeQuery("select despesa from dotacao order by despesa");
                                            %>

                                            <div class="form-group">
                                                <label>Despesa*</label>

                                                <select class="form-control" name="despesa" value="" requerid> 
                                                    <% while (resultsetdespesa.next()) {%>
                                                    <option><%= resultsetdespesa.getString(1)%> </option>   
                                                    <% }%>
                                                </select>

                                            </div>       


                                            <div class="form-group">
                                                <label>Processo</label>
                                                <input class="form-control" type="text" name="processo" value="" placeholder="processo gerado" >
                                            </div>
                                            <div class="form-group">
                                                <label>Ano Processo</label>
                                                <input class="form-control" type="text" name="anoprocesso" value="" placeholder="yyyy">
                                            </div>                                   

                                            <div class="form-group">
                                                <label>Processo Contábil</label>
                                                <input class="form-control" type="text" name="processocontabil" value="" placeholder="processo contabil gerado">
                                            </div>

                                            <div class="form-group">
                                                <label>Ano Processo Contábil</label>
                                                <input class="form-control" type="text" name="anoprocessocontabil"value=""  placeholder="yyyy" >
                                            </div>               

                                    </div>
                                    <!-- FIM DA PRIMEIRA COLUNA -->


                                    <!-- SEGUNDA COLUNA -->

                                    <div class="col-md-4">




                                        <div class="modal fade" id="myModal" role="dialog" requered>
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Confirmar os dados</h4>
                                                        <%
                                                            Statement statement2 = con.createStatement();
                                                            ResultSet resultset2 = statement.executeQuery("select despesa from dotacao order by despesa");

                                                        %>  

                                                    </div>
                                                    <div class="modal-body">
                                                        <!--<p>Despesa</p>-->
                                                        <input class="form-control" type="text" name="despesaInformada2" value="" placeholder="Despesa a ser vinculada" >

                                                        <select class="form-group_select" name="despesaInformada" value="" requerid> 
                                                            <% while (resultset2.next()) {%>
                                                            <option><%= resultset2.getString(1)%> </option>   
                                                            <% }%>
                                                        </select>    

                                                    </div>
                                                    <div class="modal-body">
                                                        <!-- <p>RIM</p>-->
                                                        <%
                                                            String fCetil = request.getParameter("cetil");
                                                        %>
                                                        <input class="form-control" type="text" name="rimInformada" value="<%=fCetil%>" placeholder="RI a ser vinculada">

                                                    </div>

                                                    <div class="modal-footer">
                                                        <input class="form-control" type="submit" class="btn btn-primary" data-dismiss="modal"/> 
                                                    </div>    
                                                </div>
                                            </div>
                                        </div>

                                        <%
                                            /* Connection con = DriverManager.getConnection("jdbc:mysnql://localhost:3306/prorim",
                                             "root", ""); */
                                            Statement streduzida = con.createStatement();
                                            Statement statementreduzida = con.createStatement();
                                            ResultSet resultsetreduzida = statement.executeQuery("select reduzida from dotacao where despesa=despesa order by despesa");
                                        %>



                                        <div class="form-group">                
                                            <label>Valor Estimado*</label>
                                            <input class="form-control" type="text" name="valorestimado" value="" placeholder="R$" required>
                                        </div>  

                                        <div class="form-group">                
                                            <label>Valor Real</label>
                                            <input class="form-control" type="text" name="valorreal" value="" placeholder="R$" >
                                        </div>    

                                        <div class="form-group">
                                            <label>Divisão Contábil</label>

                                            <input class="form-control" type="date" name="contabilidade" value="" >
                                        </div>
                                        <div class="form-group">
                                            <label>Ordenador | R.I</label>

                                            <input class="form-control" type="date" name="dataordenadorri"value="" >
                                        </div>
                                        <div class="form-group">
                                            <label>Divisão Compras | DCS</label>

                                            <input class="form-control" type="date" name="datacomprasdcs" value="">
                                        </div>
                                        <div class="form-group">
                                            <label>Ordenador | Empenho</label>

                                            <input class="form-control" type="date" name="dataordenadorempenho" value="">
                                        </div>
                                        <div class="form-group">
                                            <label>Divisão Compras | DCS | AF</label>

                                            <input class="form-control" type="date" name="datacomprasdcsaf" value="" >
                                        </div>
                                        <div class="form-group">
                                            <label>Divisão Planejamento Econômico - DIPE</label>

                                            <input class="form-control" type="date" name="datadipe" value="">
                                        </div>    

                                        <%
                                            /*Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                                             "root", "");*/
                                            //Statement st1 = con.createStatement();
                                            Statement statement1 = con.createStatement();
                                            ResultSet resultset1 = statement1.executeQuery("select login_usuario from usuario order by login_usuario");
                                        %>    
                                        <div class="form-group">
                                            <label>Cadastrante*<br>

                                                <select class="form-control" name="cadastrante" value="" requerid> 
                                                    <% while (resultset1.next()) {%>
                                                    <option><%= resultset1.getString(1)%> </option>   
                                                    <% }%>
                                                </select>
                                        </div>

                                        <div class="form-group">    
                                            <label>Data do Cadastro</label> 
                                            <input class="form-control" type="date" name="datacadastro" value="" >
                                        </div>  
                                        <div class="form-group">
                                            <label>Anotações</label>
                                            <textarea class="text_big form-control" name="anotacoes" placeholder="utilize este campo para anotações relevantes"></textarea>
                                        </div>

                                        <input type="submit" class="btn btn-primary" value="Cadastrar"/>    

                                        </form>



                                    </div>

                                    <!-- FIM DA SEGUNDA COLUNA -->



                                </div>

                                <!-- FIM DO CONTEUDO DO PAINEL -->




                            </div>

                            <!-- FIM DO PAINEL SOB A ABA -->


                        </div>

                        <!-- FIM DA ABA DE CADASTRO -->



                        <!-- INICIO DA ABA DE EDIÇÃO -->

                        <div id="editar" class="tab-pane fade">

                            <!-- INICIO DO PAINEL SOB A ABA -->

                            <div class="panel panel-default">

                                <!-- INICIO DO CABECALHO DO PAINEL -->

                                <div class="panel-heading">

                                    <h4>EDIÇÃO DE RIM</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">


                                    <!-- PRIMEIRA COLUNA -->
                                    <div class="col-md-4">

                                        <form method="post" action="DAO/DAOaltera.jsp">

                                            <div class="form-group">

                                                <label>Cetil*</label>
                                                <input class="form-control" type="text" name="cetil" value="" placeholder="entre com o código cetil" required>

                                            </div>

                                            <div class="form-group">

                                                <label>Data Cetil*</label>

                                                <input class="form-control" type="date" name="datacetil" value="" required>
                                            </div>

                                            <%

                                                Statement statement4 = con.createStatement();
                                                ResultSet resultset4 = statement4.executeQuery("select nome_unidade from unidade order by nome_unidade");
                                            %>


                                            <div class="form-group">
                                                <label>Unidade | Setor Solicitante*</label><br>

                                                <select class="form-control" name="cmbunidade" value="" required>
                                                    <% while (resultset4.next()) {%>
                                                    <option><%= resultset4.getString(1)%></option>    
                                                    String escolha = request.getParameter("cmbunidade");                      
                                                    <% }%>

                                                </select>
                                            </div>



                                            <div class="form-group">

                                                <label> Tipo RI*</label><br>

                                                <select class="form-control" name="tiporim" placeholder="selecione um tipo" requerid> 

                                                    <option>RIM</option>   
                                                    <option>RRP</option>   

                                                </select>
                                            </div>    

                                            <div class="form-group">
                                                <label>Descrição</label>
                                                <textarea class="text_big form-control" name="descricao" value="" placeholder="Descreva aqui o objeto da requisição"></textarea>
                                            </div>


                                            <%
                                                /* Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                                                 "root", ""); */

                                                Statement statementdespesa1 = con.createStatement();
                                                ResultSet resultsetdespesa1 = statement1.executeQuery("select despesa from dotacao order by despesa");
                                            %>

                                            <div class="form-group">
                                                <label>Despesa*</label>

                                                <select class="form-control" name="despesa" value="" requerid> 
                                                    <% while (resultsetdespesa1.next()) {%>
                                                    <option><%= resultsetdespesa1.getString(1)%> </option>   
                                                    <% }%>
                                                </select>

                                            </div>       


                                            <div class="form-group">
                                                <label>Processo</label>
                                                <input class="form-control" type="text" name="processo" value="" placeholder="processo gerado" >
                                            </div>
                                            <div class="form-group">
                                                <label>Ano Processo</label>
                                                <input class="form-control" type="text" name="anoprocesso" value="" placeholder="yyyy">
                                            </div>                                   

                                            <div class="form-group">
                                                <label>Processo Contábil</label>
                                                <input class="form-control" type="text" name="processocontabil" value="" placeholder="processo contabil gerado">
                                            </div>

                                            <div class="form-group">
                                                <label>Ano Processo Contábil</label>
                                                <input class="form-control" type="text" name="anoprocessocontabil"value=""  placeholder="yyyy" >
                                            </div>               

                                    </div>
                                    <!-- FIM DA PRIMEIRA COLUNA -->


                                    <!-- SEGUNDA COLUNA -->

                                    <div class="col-md-4">




                                        <div class="modal fade" id="myModal" role="dialog" requered>
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Confirmar os dados</h4>
                                                        <%
                                                            Statement statement3 = con.createStatement();
                                                            ResultSet resultset3 = statement3.executeQuery("select despesa from dotacao order by despesa");

                                                        %>  

                                                    </div>
                                                    <div class="modal-body">
                                                        <!--<p>Despesa</p>-->
                                                        <input class="form-control" type="text" name="despesaInformada2" value="" placeholder="Despesa a ser vinculada" >

                                                        <select class="form-group_select" name="despesaInformada" value="" requerid> 
                                                            <% while (resultset3.next()) {%>
                                                            <option><%= resultset3.getString(1)%> </option>   
                                                            <% }%>
                                                        </select>    

                                                    </div>
                                                    <div class="modal-body">
                                                        <!-- <p>RIM</p>-->
                                                        <%

                                                        %>
                                                        <input class="form-control" type="text" name="rimInformada" value="<%=fCetil%>" placeholder="RI a ser vinculada">

                                                    </div>

                                                    <div class="modal-footer">
                                                        <input class="form-control" type="submit" class="btn btn-primary" data-dismiss="modal"/> 
                                                    </div>    
                                                </div>
                                            </div>
                                        </div>

                                        <%
                                            /* Connection con = DriverManager.getConnection("jdbc:mysnql://localhost:3306/prorim",
                                             "root", ""); */

                                            Statement statementreduzida2 = con.createStatement();
                                            ResultSet resultsetreduzida2 = statementreduzida2.executeQuery("select reduzida from dotacao where despesa=despesa order by despesa");
                                        %>



                                        <div class="form-group">                
                                            <label>Valor Estimado*</label>
                                            <input class="form-control" type="text" name="valorestimado" value="1.578,00" placeholder="R$" required>
                                        </div>  

                                        <div class="form-group">                
                                            <label>Valor Real</label>
                                            <input class="form-control" type="text" name="valorreal" value="1.567,00" placeholder="R$" >
                                        </div>    

                                        <div class="form-group">
                                            <label>Divisão Contábil</label>

                                            <input class="form-control" type="date" name="contabilidade" value="" >
                                        </div>
                                        <div class="form-group">
                                            <label>Ordenador | R.I</label>

                                            <input class="form-control" type="date" name="dataordenadorri"value="" >
                                        </div>
                                        <div class="form-group">
                                            <label>Divisão Compras | DCS</label>

                                            <input class="form-control" type="date" name="datacomprasdcs" value="">
                                        </div>
                                        <div class="form-group">
                                            <label>Ordenador | Empenho</label>

                                            <input class="form-control" type="date" name="dataordenadorempenho" value="">
                                        </div>
                                        <div class="form-group">
                                            <label>Divisão Compras | DCS | AF</label>

                                            <input class="form-control" type="date" name="datacomprasdcsaf" value="" >
                                        </div>
                                        <div class="form-group">
                                            <label>Divisão Planejamento Econômico - DIPE</label>

                                            <input class="form-control" type="date" name="datadipe" value="">
                                        </div>    

                                        <%
                                            /*Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                                             "root", "");*/
                                            //Statement st1 = con.createStatement();
                                            Statement statement5 = con.createStatement();
                                            ResultSet resultset5 = statement5.executeQuery("select login_usuario from usuario order by login_usuario");
                                        %>    
                                        <div class="form-group">
                                            <label>Cadastrante*<br>

                                                <select class="form-control" name="cadastrante" value="" requerid> 
                                                    <% while (resultset5.next()) {%>
                                                    <option><%= resultset5.getString(1)%> </option>   
                                                    <% }%>
                                                </select>
                                        </div>

                                        <div class="form-group">    
                                            <label>Data do Cadastro</label> 
                                            <input class="form-control" type="date" name="datacadastro" value="" >
                                        </div>  
                                        <div class="form-group">
                                            <label>Anotações</label>
                                            <textarea class="text_big form-control" name="anotacoes" placeholder="utilize este campo para anotações relevantes"></textarea>
                                        </div>

                                        <input type="submit" class="btn btn-primary" value="Editar"/>    

                                        </form>



                                    </div>

                                    <!-- FIM DA SEGUNDA COLUNA -->



                                </div>

                                <!-- FIM DO CONTEUDO DO PAINEL -->




                            </div>

                            <!-- FIM DO PAINEL SOB A ABA -->


                        </div>

                        <!-- FIM DA ABA DE EDIÇÃO -->



                        <!-- INICIO DA ABA DE EXCLUSÃO -->

                        <div id="excluir" class="tab-pane fade">

                            <!-- INICIO DO PAINEL SOB A ABA -->

                            <div class="panel panel-default">

                                <!-- INICIO DO CABECALHO DO PAINEL -->

                                <div class="panel-heading">

                                    <h4>EXCLUSÃO DE REQUISIÇÃO</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">

                                    <form class=form-horizontal" method="post" action="DAO/DAOexclui.jsp">

                                        <div class="form-group">
                                            <label>Codigo da Requisição</label>
                                            <input class="form-control" type="text" name="codigorim" placeholder="Digite o código para exclusão" required>

                                        </div>
                                        <input type="submit" class="btn btn-primary" value="Excluir" />
                                    </form

                                </div>

                                <!-- FIM DO CONTEUDO DO PAINEL -->




                            </div>

                            <!-- FIM DO PAINEL SOB A ABA -->


                        </div>

                        <!-- FIM DA ABA DE EXCLUSÃO -->



                    </div>

                    <!-- FIM DO CONTEUDO DAS ABAS DE NAVEGACAO -->




                </div>



                <!-- FIM DO CONTEUDO CENTRAL -->

                <div id="coluna_direita" class="col-md-2"></div>

            </main>

            <footer></footer>




        </div>



    </body>

</html>

























