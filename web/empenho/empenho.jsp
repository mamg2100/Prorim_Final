
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
        <title>PRORIM - Empenho</title>
        <script src="../js/script.js" type="text/javascript"></script>
        <script src="../js/jquery-2.2.3.js" type="text/javascript"></script>
        <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../CSS/estilo_form.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">



    </head>

    <%@ page import="java.sql.*" %>

    <% Class.forName("com.mysql.jdbc.Driver");%>


    <body>          

        <!-- BARRA DE NAVEGACAO SUPERIOR -->

        <div id="barra_navegacao">
            <nav class="navbar navbar-default" id="barra">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">PRORIM</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="../rim/rim.jsp">Requisição</a></li>
                        <li><a href="../usuario/usuario.jsp">Usuário</a></li> 
                        <li><a href="../unidade/unidade.jsp">Unidade</a></li> 
                        <li><a href="../fornecedor/fornecedor.jsp">Fornecedor</a></li>
                        <li><a href="../despesa/despesa.jsp">Despesa</a></li> 
                        <li  class="active"><a href="#">Empenho | AF</a></li> 
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

                                    <h4>CADASTRO DE EMPENHO</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">


                                    <div class="col-md-4" id="primeira_coluna_cadastrar">

                                        <form  method="post" action="DAO/DAOcadastra.jsp">


                                            <div class="form-group">

                                                <label>Codigo Empenho</label>
                                                <input class="form-control" type="text" name="codigoEmpenhoSequencial" value="" disabled >

                                            </div>

                                            <div class="form-group">

                                                <label>Codigo RI Vinculada</label>
                                                <input class="form-control" type="text" name="codigo" value="<%=request.getParameter("codigo")%>"  disabled>

                                            </div>

                                            <div class="form-group">
                                                <label>Despesa</label>

                                                <input class="form-control" type="text" name="despesa" value="<%=request.getParameter("despesa")%>" disabled>
                                            </div>

                                            <div class="form-group">  
                                                <label>Cetil</label>

                                                <input class="form-control" type="text" name="cetil" value="<%=request.getParameter("cetil")%>" disabled>
                                            </div>            

                                            <div class="form-group">
                                                <label>Empenho</label>
                                                <input class="form-control" type="text" name="empenho" value="" requerid>
                                            </div>

                                            <div class="form-group">
                                                <label>Data Empenho</label>

                                                <input class="form-control" type="date" name="dataEmpenho" value="" requerid>
                                            </div>

                                            <div class="form-group">
                                                <label>Valor Empenho</label>
                                                <input class="form-control" type="text" name="valorEmpenho" value="" placeholder="R$" requerid>
                                            </div>



                                    </div>


                                    <div class="col-md-4" id="segunda_coluna_cadastrar">


                                        <div class="form-group">

                                            <label>Autorização</label>

                                            <input class="form-control" type="text" name="autorizacao" value="" requerid><span class="highlight" ></span><span class="bar"></span>
                                        </div>

                                        <div class="form-group">
                                            <label>Data AF</label>

                                            <input class="form-control" type="date" name="dataAutorizacao" value="" requerid >
                                        </div>

                                        <div class="form-group">
                                            <label>Valor AF</label>
                                            <input class="form-control" type="text" name="valorAf" value="" placeholder="R$" requerid >
                                        </div>

                                        <%
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
                                                    "root", "");
                                            Statement statementfornecedor = con.createStatement();
                                            ResultSet resultsetfornecedor = statementfornecedor.executeQuery("select nome_fornecedor from fornecedor order by nome_fornecedor");
                                        %>                   


                                        <div class="form-group">
                                            <label>Fornecedor</label><br>

                                            <select class="form-control"name="cmbfornecedor" value=""> 
                                                <% while (resultsetfornecedor.next()) {%>
                                                <option><%= resultsetfornecedor.getString(1)%> </option>   
                                                <% }%>
                                            </select>

                                        </div>

                                        <div class="form-group">
                                            <label>Tipo RI</label>
                                            <input class="form-control" type="text" name="tipoRI" value="<%=request.getParameter("tipoRI")%>" placeholder="" requerid>
                                        </div>

                                        <div class="form-group">
                                            <label>Data Empenho SQL</label>

                                            <input class="form-control" type="date" name="dataEmpenhoSQL" value="<%=request.getParameter("dataEmpenhoSQL")%>">
                                        </div>

                                        <div class="form-group">
                                            <label>Ano RI</label>

                                            <input class="form-control" type="text" name="anoRI" value="2016" >
                                        </div>

                                        <input Type="submit" class="btn btn-primary" value="Cadastrar" />   
                                        </form>



                                    </div>



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

                                    <h4>EDIÇÃO DE EMPENHO</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">


                                    <!-- PRIMEIRA COLUNA DA EDICAO -->

                                    <div class="col-md-4" id="primeira_coluna_cadastrar">

                                        <form  method="post" action="DAO/DAOaltera.jsp">


                                            <div class="form-group">

                                                <label>Codigo Empenho</label>
                                                <input class="form-control" type="text" name="codigoEmpenhoSequencial" value=""  >

                                            </div>

                                            <div class="form-group">

                                                <label>Codigo RI Vinculada</label>
                                                <input class="form-control" type="text" name="codigo" value="<%=request.getParameter("codigo")%>">

                                            </div>

                                            <div class="form-group">
                                                <label>Despesa</label>

                                                <input class="form-control" type="text" name="despesa" value="<%=request.getParameter("despesa")%>" >
                                            </div>

                                            <div class="form-group">  
                                                <label>Cetil</label>

                                                <input class="form-control" type="text" name="cetil" value="<%=request.getParameter("cetil")%>" >
                                            </div>            

                                            <div class="form-group">
                                                <label>Empenho</label>
                                                <input class="form-control" type="text" name="empenho" value="" requerid>
                                            </div>

                                            <div class="form-group">
                                                <label>Data Empenho</label>

                                                <input class="form-control" type="date" name="dataEmpenho" value="" requerid>
                                            </div>

                                            <div class="form-group">
                                                <label>Valor Empenho</label>
                                                <input class="form-control" type="text" name="valorEmpenho" value="" placeholder="R$" requerid>
                                            </div>



                                    </div>


                                    <div class="col-md-4" id="segunda_coluna_cadastrar">


                                        <div class="form-group">

                                            <label>Autorização</label>

                                            <input class="form-control" type="text" name="autorizacao" value="" requerid><span class="highlight" ></span><span class="bar"></span>
                                        </div>

                                        <div class="form-group">
                                            <label>Data AF</label>

                                            <input class="form-control" type="date" name="dataAutorizacao" value="" requerid >
                                        </div>

                                        <div class="form-group">
                                            <label>Valor AF</label>
                                            <input class="form-control" type="text" name="valorAf" value="" placeholder="R$" requerid >
                                        </div>




                                        <div class="form-group">
                                            <label>Fornecedor</label><br>

                                            <select class="form-control"name="cmbfornecedor" value=""> 
                                                <% while (resultsetfornecedor.next()) {%>
                                                <option><%= resultsetfornecedor.getString(1)%> </option>   
                                                <% }%>
                                            </select>

                                        </div>

                                        <div class="form-group">
                                            <label>Tipo RI</label>
                                            <input class="form-control" type="text" name="tipoRI" value="<%=request.getParameter("tipoRI")%>" placeholder="" requerid>
                                        </div>

                                        <div class="form-group">
                                            <label>Data Empenho SQL</label>

                                            <input class="form-control" type="date" name="dataEmpenhoSQL" value="<%=request.getParameter("dataEmpenhoSQL")%>">
                                        </div>

                                        <div class="form-group">
                                            <label>Ano RI</label>

                                            <input class="form-control" type="text" name="anoRI" value="2016" >
                                        </div>

                                        <input Type="submit" class="btn btn-primary" value="Cadastrar" />   
                                        </form>



                                    </div>


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

                                    <h4>EXCLUSÃO DE EMPENHO</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">

                                    <form method="post" action="DAO/DAOexclui.jsp">

                                        <div class="form-group">
                                            <label>Codigo da Empenho</label>
                                            <input class="form-control" type="text" name="codigoempenho" placeholder="Digite o código para exclusão" required>

                                        </div>
                                        <input type="submit" class="button buttonBlue" value="Excluir" />
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










