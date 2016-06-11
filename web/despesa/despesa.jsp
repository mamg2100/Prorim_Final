<%-- 
    Document   : cadastroUsuario
    Created on : 19/03/2016, 15:58:40
    Author     : Willian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRORIM - Despesa</title>
        <script src="../js/script.js" type="text/javascript"></script>
        <script src="../js/jquery-2.2.3.js" type="text/javascript"></script>
        <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../CSS/estilo_form.css" rel="stylesheet" type="text/css"/>
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
                        <li><a href="../rim/rim.jsp">Requisição</a></li>
                        <li><a href="../usuario/usuario.jsp">Usuário</a></li> 
                        <li><a href="../unidade/unidade.jsp">Unidade</a></li> 
                        <li><a href="../fornecedor/fornecedor.jsp">Fornecedor</a></li>
                        <li  class="active"><a href="#">Despesa</a></li> 
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

                <div class="row col-md-6" id="conteudo">


                    <!-- ABAS DE SELEÇÃO -->

                    <ul class="nav nav-tabs">

                        <li class="active"><a data-toggle="tab" href="#cadastrar">Cadastrar</a></li>

                        <li><a data-toggle="tab" href="#editar">Editar</a></li>

                        <li><a data-toggle="tab" href="#excluir">Excluir</a></li>

                    </ul>

                    <!-- FIM DAS ABAS -->

                    <!-- ############################################################ -->

                    <!-- CONTEUDO DAS ABAS DE NAVEGACAO -->

                    <div id="conteudo_abas" class="tab-content">

                        <!-- INICIO DA ABA DE CADASTRO -->

                        <div id="cadastrar" class="tab-pane fade in active">

                            <!-- INICIO DO PAINEL SOB A ABA -->

                            <div class="panel panel-default">

                                <!-- INICIO DO CABECALHO DO PAINEL -->

                                <div class="panel-heading">

                                    <h4>CADASTRO DE DESPESAS</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">

                                    <form class="form-horizontal" method="post" action="DAO/DAOcadastra.jsp" role="form">


                                        <div class="form-group">

                                            <div class="col-md-8">

                                                <label class="control-label">Despesa</label>

                                                <input class="form-control" type="text" name="despesa" placeholder="" required>

                                            </div>

                                        </div>



                                        <div class="form-group">

                                            <div class="col-md-8">                                                                                 

                                                <label class="control-label">Reduzida</label>

                                                <input class="form-control" type="text" name="reduzida" placeholder="" required>

                                            </div>

                                        </div>



                                        <div class="form-group">

                                            <div class="col-md-8">

                                                <label class="control-label">Ação</label>

                                                <input class="form-control" type="text" name="acao" placeholder="" required>

                                            </div>

                                        </div>



                                        <div class="form-group">

                                            <div class="col-md-8">

                                                <label class="control-label">Programa</label>

                                                <input class="form-control" type="text" name="programa" placeholder="" required>

                                                <br>

                                                <input type="submit" class="btn btn-primary" value="Cadastrar" />

                                            </div>

                                        </div>


                                    </form>

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

                                    <h4>EDIÇÃO DE DESPESAS</h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">

                                    <form class="form-horizontal" method="post" action="DAO/DAOaltera.jsp" role="form">



                                        <div class="form-group">

                                            <div class="col-md-8">

                                                <label>Codigo Despesa</label>

                                                <input class="form-control" type="text" name="codigo" value="<%=request.getParameter("codigo")%>" required>

                                            </div>

                                        </div>



                                        <div class="form-group">

                                            <div class="col-md-8">

                                                <label>Despesa</label>

                                                <input class="form-control" type="text" name="despesa" value="<%=request.getParameter("despesa")%>" required>

                                            </div>

                                        </div>



                                        <div class="form-group">

                                            <div class="col-md-8">

                                                <label>Reduzida</label>

                                                <input class="form-control" type="text" name="reduzida" value="<%=request.getParameter("reduzida")%>" required>

                                            </div>

                                        </div>



                                        <div class="form-group">

                                            <div class="col-md-8">

                                                <label>Ação</label>

                                                <input class="form-control" type="text" name="acao" value="<%=request.getParameter("acao")%>" required>

                                            </div>

                                        </div>



                                        <div class="form-group">

                                            <div class="col-md-8">

                                                <label>Programa</label>

                                                <input class="form-control" type="text" name="programa" value="<%=request.getParameter("programa")%>" required>

                                            </div>

                                        </div>

                                        <input type="submit" class="btn btn-primary" value="Atualizar" />
                                    </form>




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

                                    <h4></h4>

                                </div>


                                <!-- FIM DO CABECALHO DO PAINEL -->



                                <!-- INICIO DO CONTEUDO DO PAINEL -->

                                <div class="panel-body">


                                    <form class="form-horizontal" method="post" action="DAO/DAOexclui.jsp" role="form">

                                        <div class="form-group">
                                            
                                            <div class="col-md-8">
                                                
                                                <label>Codigo da Despesa</label>
                                                
                                                <input class="form-control" type="text" name="codigo" value="<%=request.getParameter("codigo")%>" required><span class="highlight">
                                                    
                                            </div>
      
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
