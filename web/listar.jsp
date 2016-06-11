<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>

<%@ page import="java.sql.*" %>

<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRORIM - Requisições</title>
        <script src="js/jquery-2.2.3.js" type="text/javascript"></script>
        <link href="CSS/datatables.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/script.js" type="text/javascript"></script>
        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link href="CSS/estilo_form.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


    </head>

    <body> 

        <!-- BARRA DE NAVEGACAO SUPERIOR -->

        <div id="barra_navegacao">
            <nav class="navbar navbar-default" id="barra">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">PRORIM</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="rim/rim.jsp">Requisição</a></li>
                        <li><a href="usuario/usuario.jsp">Usuário</a></li> 
                        <li><a href="unidade/unidade.jsp">Unidade</a></li> 
                        <li><a href="fornecedor/fornecedor.jsp">Fornecedor</a></li>
                        <li><a href="despesa/despesa.jsp">Despesa</a></li> 
                        <li><a href="empenho/empenho.jsp">Empenho | AF</a></li> 
                        <li><a href="notafiscal/notafiscal.jsp">Nota Fiscal</a></li> 
                        <li class="active"><a href="#">Relatórios</a></li> 
                    </ul>
                </div>
            </nav>
        </div>


        <!-- FIM DA BARRA DE NAVEGACAO -->


        <div class="container">


            <header></header>


            <main>
                <%
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                            "root", "");
                    Statement st = con.createStatement();

                    Statement statement = con.createStatement();

                %>

                <!-- CONTEUDO CENTRAL -->

                <div class="row" id="conteudo">


                    <!-- ABAS DE SELEÇÃO -->

                    <ul class="nav nav-tabs">

                        <li class="active"><a data-toggle="tab" href="#requisicao">Requisições</a></li>

                        <li><a data-toggle="tab" href="#fornecedor">Fornecedor</a></li>

                        <li><a data-toggle="tab" href="#unidade">Unidade</a></li>

                        <li><a data-toggle="tab" href="#empenho">Empenho | AF</a></li>

                        <li><a data-toggle="tab" href="#despesa">Despesa</a></li>

                        <li><a data-toggle="tab" href="#usuario">Usuário</a></li>



                    </ul>

                    <!-- FIM DAS ABAS -->


                    <!-- CONTEUDO DAS ABAS DE NAVEGACAO -->

                    <div id="conteudo_abas" class="tab-content">

                        <!-- INICIO DA ABA DE REQUISIÇÕES -->

                        <div id="requisicao" class="tab-pane fade in active">

                            <!-- INICIO DO PAINEL SOB A ABA -->

                            <div class="panel panel-default">

                                <!-- INICIO DO CABECALHO DO PAINEL -->

                                <div class="panel-heading">

                                    <h4>RELATÓRIO DE REQUISIÇÕES</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">

                                    <% ResultSet resultreq = statement.executeQuery("select * from rim order by Cod_rim desc"); %>

                                    <TABLE class="table table-striped display" id="">
                                        <thead>
                                            <TR>
                                                <TH>Codigo</TH>
                                                <TH>Unidade</TH>
                                                <TH>Descrição</TH>
                                                <TH>Despesa</TH>
                                                <TH>Tipo</TH>
                                                <TH>Cetil</TH>  
                                                <TH>Data</TH>
                                                <!--<TH>Data Cetil</TH> -->
                                                <TH>Valor Estimado</TH>
                                                <TH>Valor Real</TH>
                                                <TH>Processo</th>
                                                <TH>Ano</th>
                                                <TH>Proc.Contábil</th>
                                                <TH>Ano</th>
                                                <TH>Contabilidade</th>  
                                                <TH>Ordenador</TH>
                                                <TH>Compras/DCS</TH>
                                                <TH>Ordenador</TH>
                                                <TH>Compras</TH>
                                                <TH>Dipe</TH>
                                                <TH>Cadastrante</TH>
                                                <TH>Data Cadastrado</TH>
                                                <TH>Observação</TH>

                                            </TR>
                                        </thead>
                                        <tbody>
                                            <% while (resultreq.next()) {%>
                                            <TR>
                                                <TD > <%= resultreq.getString(1)%></td>
                                                <TD > <%= resultreq.getString(2)%></TD>
                                                <TD > <%= resultreq.getString(3)%></TD>
                                                <TD > <%= resultreq.getString(4)%></TD> 
                                                <TD > <%= resultreq.getString(5)%></TD>
                                                <TD > <%= resultreq.getString(6)%></TD>
                                                <TD > <%= resultreq.getString(7)%></TD>
                                                <!--<TD > <%= resultreq.getString(8)%></TD>-->
                                                <TD > <%= resultreq.getString(9)%></TD>
                                                <TD > <%= resultreq.getString(10)%></TD>
                                                <TD > <%= resultreq.getString(11)%></TD>
                                                <TD > <%= resultreq.getString(12)%></TD>
                                                <TD > <%= resultreq.getString(13)%></TD>
                                                <TD > <%= resultreq.getString(14)%></TD>
                                                <TD > <%= resultreq.getString(15)%></TD>
                                                <TD > <%= resultreq.getString(16)%></TD>
                                                <TD > <%= resultreq.getString(17)%></TD>
                                                <TD > <%= resultreq.getString(18)%></TD>
                                                <TD > <%= resultreq.getString(19)%></TD>
                                                <TD > <%= resultreq.getString(20)%></TD>
                                                <TD > <%= resultreq.getString(21)%></TD>
                                                <TD > <%= resultreq.getString(22)%></TD>
                                                <TD > <%= resultreq.getString(23)%></TD>
                                                
                                                    <% }%>
                                        </tbody>
                                    </TABLE>

                                    <script src="../js/datatables.min.js"></script>

                                </div>

                                <!-- FIM DO CONTEUDO DO PAINEL -->




                            </div>

                            <!-- FIM DO PAINEL SOB A ABA -->


                        </div>

                        <!-- FIM DA ABA DE REQUISIÇÕES -->



                        <!-- INICIO DA ABA DE FORNECEDOR -->

                        <div id="fornecedor" class="tab-pane fade">

                            <!-- INICIO DO PAINEL SOB A ABA -->

                            <div class="panel panel-default">

                                <!-- INICIO DO CABECALHO DO PAINEL -->

                                <div class="panel-heading">

                                    <h4>RELATÓRIO DE FORNECEDORES</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">

                                    <TABLE class="table table-striped display" id="">
                                        <thead>
                                            <TR>
                                                <TH>Codigo</TH>
                                                <TH>Nome Fornecedor</TH>
                                                <TH>Tipo Fornecedor</TH> 
                                                <TH>Número Tipo</TH> 
                                                <TH>Tipo</TH> 
                                                <TH>Endereço</TH>
                                                <TH>Nr</TH>
                                                <TH>Bairro</TH>
                                                <TH>Cidade</TH>



                                            </TR>
                                        </thead>

                                        <% ResultSet resultsetforn = statement.executeQuery("select * from fornecedor"); %>

                                        <tbody>
                                            <% while (resultsetforn.next()) {%>
                                            <TR>
                                                <TD> <%= resultsetforn.getString(1)%></td>
                                                <TD> <%= resultsetforn.getString(2)%></TD>
                                                <TD> <%= resultsetforn.getString(3)%></TD> 
                                                <TD> <%= resultsetforn.getString(4)%></TD>
                                                <TD> <%= resultsetforn.getString(5)%></TD>
                                                <TD> <%= resultsetforn.getString(6)%></TD>
                                                <TD> <%= resultsetforn.getString(7)%></TD>
                                                <TD> <%= resultsetforn.getString(8)%></TD>
                                                <TD> <%= resultsetforn.getString(9)%></TD>

                                            </TR>
                                            <% } %>
                                        </tbody>
                                    </TABLE>


                                    <script src="../js/datatables.min.js"></script>

                                </div>

                                <!-- FIM DO CONTEUDO DO PAINEL -->




                            </div>

                            <!-- FIM DO PAINEL SOB A ABA -->


                        </div>

                        <!-- FIM DA ABA DE FORNECEDOR -->



                        <!-- INICIO DA ABA DE UNIDADE -->

                        <div id="unidade" class="tab-pane fade">

                            <!-- INICIO DO PAINEL SOB A ABA -->

                            <div class="panel panel-default">

                                <!-- INICIO DO CABECALHO DO PAINEL -->

                                <div class="panel-heading">

                                    <h4>RELATÓRIO DE UNIDADES</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body col-lg-10">

                                    <%

                                        ResultSet resultsetuni = statement.executeQuery("select * from unidade");
                                    %>

                                    <TABLE class="table table-striped display" id="">
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
                                            <% while (resultsetuni.next()) {%>
                                            <TR>
                                                <TD> <%= resultsetuni.getString(1)%></td>
                                                <TD> <%= resultsetuni.getString(2)%></TD>
                                                <TD> <%= resultsetuni.getString(3)%></TD> 
                                                <TD> <%= resultsetuni.getString(4)%></TD>
                                                <TD> <%= resultsetuni.getString(5)%></TD>
                                                <TD> <%= resultsetuni.getString(6)%></TD>
                                                <TD> <%= resultsetuni.getString(7)%></TD>
                                                <TD> <%= resultsetuni.getString(8)%></TD>
                                                <TD> <%= resultsetuni.getString(9)%></TD>
                                                <TD> <%= resultsetuni.getString(10)%></TD>
                                                <TD> <%= resultsetuni.getString(11)%></TD>
                                                <TD> <%= resultsetuni.getString(12)%></TD>


                                            </TR>
                                            <% }%>
                                        </tbody>
                                    </TABLE>


                                    <script src="js/datatables.min.js" type="text/javascript"></script>


                                </div>

                                <!-- FIM DO CONTEUDO DO PAINEL -->




                            </div>

                            <!-- FIM DO PAINEL SOB A ABA -->


                        </div>

                        <!-- FIM DA ABA DE UNIDADE -->

                        <!-- INICIO DA ABA DE EMPENHO -->

                        <div id="empenho" class="tab-pane fade">

                            <!-- INICIO DO PAINEL SOB A ABA -->

                            <div class="panel panel-default">

                                <!-- INICIO DO CABECALHO DO PAINEL -->

                                <div class="panel-heading">

                                    <h4>RELATÓRIO DE EMPENHO</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">

                                    <%
                                        ResultSet resultsetemp = statement.executeQuery("select * from rim_has_dotacao");    
                                    %>

                                    <TABLE class="table table-striped display" id="">
                                        <thead>
                                            <TR>
                                                <TH>Codigo Sequencial</TH>
                                                <TH>Codigo RI</TH>
                                                <TH>Codigo Despesa</TH>
                                                <TH>Cetil</TH>
                                                <TH>Empenho</TH>
                                                <TH>Data</TH>
                                                <TH>Valor</TH>
                                                <TH>Autorização</TH>
                                                <TH>Data AF</TH>
                                                <TH>Valor</TH>
                                                <TH>Fornecedor</TH>
                                            </TR>
                                        </thead>
                                        <tbody>
                                            <% while (resultsetemp.next()) {%>
                                            <TR>
                                                <TD > <%= resultsetemp.getString(1)%></td>
                                                <TD > <%= resultsetemp.getString(2)%></TD> 
                                                <TD > <%= resultsetemp.getString(3)%></TD> 
                                                <TD > <%= resultsetemp.getString(4)%></TD> 
                                                <TD > <%= resultsetemp.getString(5)%></TD> 
                                                <TD > <%= resultsetemp.getString(6)%></TD> 
                                                <TD > <%= resultsetemp.getString(7)%></TD> 
                                                <TD > <%= resultsetemp.getString(8)%></TD> 
                                                <TD > <%= resultsetemp.getString(9)%></TD> 
                                                <TD > <%= resultsetemp.getString(10)%></TD> 
                                                <TD > <%= resultsetemp.getString(11)%></TD> 


                                            </TR>
                                            <% }%>

                                        </tbody>

                                    </TABLE>

                                    <script src="js/datatables.min.js" type="text/javascript"></script>

                                </div>

                                <!-- FIM DO CONTEUDO DO PAINEL -->




                            </div>

                            <!-- FIM DO PAINEL SOB A ABA -->


                        </div>



                        <!-- FIM DA ABA DE EMPENHO -->

                        <!-- INICIO DA ABA DE DESPESA -->

                        <div id="despesa" class="tab-pane fade">

                            <!-- INICIO DO PAINEL SOB A ABA -->

                            <div class="panel panel-default">

                                <!-- INICIO DO CABECALHO DO PAINEL -->

                                <div class="panel-heading">

                                    <h4>RELATÓRIO DE DESPESA</h4>

                                </div>

                                <!-- FIM DO CABECALHO DO PAINEL -->

                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">

                                    <%
                                        ResultSet resultsetdespesa = statement.executeQuery("select * from dotacao");
                                    %>

                                    <TABLE class="table table-striped display" id="">
                                        <thead>
                                            <TR>
                                                <TH>Codigo</TH>
                                                <TH>Despesa</TH>
                                                <TH>Reduzida</TH>
                                                <TH>Programa</TH>
                                                <TH>Acao</TH> 
                                                <TH>Ações</TH>
                                            </TR>
                                        </thead>
                                        <tbody>
                                            <% while (resultsetdespesa.next()) {%>
                                            <TR>
                                                <TD > <%= resultsetdespesa.getString(1)%></td>
                                                <TD > <%= resultsetdespesa.getString(2)%></TD>
                                                <TD > <%= resultsetdespesa.getString(3)%></TD>
                                                <TD > <%= resultsetdespesa.getString(4)%></TD>
                                                <TD > <%= resultsetdespesa.getString(5)%></TD>
                                            </TR>
                                            <% }%>
                                        </tbody>
                                    </TABLE>
                                    <script src="../js/datatables.min.js"></script>
                                </div>

                                <!-- FIM DO CONTEUDO DO PAINEL -->
                            </div>

                            <!-- FIM DO PAINEL SOB A ABA -->

                        </div>
                                        <!-- INICIO DA ABA DE USUARIO -->


                    <div id="usuario" class="tab-pane fade">

                        <!-- INICIO DO PAINEL SOB A ABA -->

                        <div class="panel panel-default">

                            <!-- INICIO DO CABECALHO DO PAINEL -->

                            <div class="panel-heading">

                                <h4>RELATÓRIO DE USUARIO</h4>

                            </div>

                            <!-- FIM DO CABECALHO DO PAINEL -->

                            <!-- INICIO DO CONTEUDO DO PAINEL -->

                            <div class="panel-body">

                                <%

                                    ResultSet resultsetusuario = statement.executeQuery("select * from usuario");
                                %>

                                <TABLE class="table table-striped display" id="">
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
                                        <% while (resultsetusuario.next()) {%>
                                        <TR>
                                            <TD > <%= resultsetusuario.getString(1)%></td>
                                            <TD > <%= resultsetusuario.getString(2)%></TD>
                                            <TD > <%= resultsetusuario.getString(3)%></TD>
                                            <!--<TD > <%= resultsetusuario.getString(4)%></TD>-->
                                            <TD > <%= resultsetusuario.getString(5)%></TD>
                                            <TD > <%= resultsetusuario.getString(6)%></TD>
                                            <TD > <%= resultsetusuario.getString(7)%></TD>
                                            
                                        </TR>
                                        <% }%>
                                    </tbody>
                                </TABLE>
                                <script src="../js/datatables.min.js"></script>
                            </div>

                            <!-- FIM DO CONTEUDO DO PAINEL -->
                        </div>

                        <!-- FIM DO PAINEL SOB A ABA -->

                    </div>
                                        
                                        
                    </div>

                    <!-- FIM DA ABA DE DESPESA -->

                    
                </div>

                <!-- FIM DA ABA DE USUARIO -->

        </div>

        <!-- FIM DO CONTEUDO DAS ABAS DE NAVEGACAO -->




    </div>



    <!-- FIM DO CONTEUDO CENTRAL -->


</main>

<footer></footer>




</div>


</body>
</html>