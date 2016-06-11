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
        <title>PRORIM - N.F </title>
        <script src="../js/script.js" type="text/javascript"></script>
        <script src="../js/jquery-2.2.3.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../CSS/estilo_form.css" rel="stylesheet" type="text/css"/>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>

    <%@ page import="java.sql.*" %>

    <% Class.forName("com.mysql.jdbc.Driver");%>



    <body>        


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
                        <li><a href="../empenho/empenho.jsp">Empenho | AF</a></li> 
                        <li  class="active"><a href="#">Nota Fiscal</a></li> 
                        <li><a href="../listar.jsp">Relatórios</a></li> 
                    </ul>
                </div>
            </nav>
        </div>

        <div class="container">

            <header></header>

            <main>

                <div class="row">

                    <div id="coluna_esquerda" class="col-md-3"></div>

                    <div id="conteudo" class="col-md-8">


                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#cadastrar">Cadastrar</a></li>
                            <li><a data-toggle="tab" href="#editar">Editar</a></li>
                            <li><a data-toggle="tab" href="#excluir">Excluir</a></li>
                        </ul>

                        <!-- INICIO DO CADASTRO -->

                        <div class="tab-content">


                            <div id="cadastrar" class="tab-pane fade in active">

                                <div class="panel panel-default">

                                    <div class="panel-heading">

                                        <h4>

                                            CADASTRO DE NOTAS FISCAIS

                                        </h4>

                                    </div>


                                    <div class="panel-body">


                                        <!-- PRIMEIRA COLUNA -->

                                        <div class="col-md-6">

                                            <form class="form-inline" method="post" action="DAO/DAOcadastra.jsp" role="form">

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label>Codigo da Nota Fiscal</label>

                                                        <input class="form-control" type="text" name="codigonotafiscal" placeholder="" required disabled>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label>Requisição Vinculada</label>

                                                        <input class="form-control" type="text" name="codigorivinculada" placeholder="" required disabled>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">


                                                        <label>Código Fornecedor</label>

                                                        <input class="form-control" type="text" name="codigofornecedor" placeholder="" required  disabled>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label>Fornecedor</label>

                                                        <input class="form-control" type="text" name="nomefornecedor" placeholder="" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label>Nº Nota Fiscal</label>

                                                        <input class="form-control" type="text" name="numeronotafiscal" placeholder="" required>

                                                    </div>

                                                </div>

                                                <p>


                                                    </div>

                                                    <!-- FIM DA PRIMEIRA COLUNA -->


                                                    <!-- SEGUNDA COLUNA -->

                                                <div class="col-md-6">

                                                    <div class="form-group">

                                                        <div class="col-md-8">

                                                            <label>Data Nota Fiscal</label>

                                                            <input class="form-control" type="date" name="datanotafiscal" placeholder="" required>

                                                        </div>

                                                    </div>

                                                    <p>

                                                    <div class="form-group">

                                                        <div class="col-md-8">

                                                            <label>Valor Nota Fsical</label>

                                                            <input class="form-control" type="text" name="valornotafiscal" placeholder="R$ " required>

                                                        </div>

                                                    </div>


                                                    <p>

                                                    <div class="form-group">

                                                        <div class="col-md-8">

                                                            <label>Setor</label>

                                                            <input class="form-control" type="text" name="setorenviada" placeholder="" required>

                                                        </div>
                                                    </div>

                                                    <p>

                                                    <div class="form-group">
                                                        <div class="col-md-8">

                                                            <label>Valor Empenho</label>

                                                            <input class="form-control" type="text" name="valorEmpenho" value="" placeholder="R$ 0,00" requerid>

                                                        </div>
                                                    </div>

                                                    <p>

                                                    <div class="form-group">
                                                        <div class="col-md-8">
                                                            <label>Setor</label><br>
                                                            <select class="form-control" name="cmbsetor" value=""> 
                                                                <option value="aumoxcentral">Almox.Central</option>
                                                                <option value="almoxsaude">Almox.Saúde</option>
                                                                <option value="comras">Compras</option>
                                                                <option value="dcs">DCS</option>
                                                                <option value="dipe">Dipe</option>
                                                                <option value="expedientesaude">Expediente Sesau</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <p>

                                                    <div class="form-group">

                                                        <div class="col-md-8">

                                                            <label>Data envio</label>

                                                            <input class="form-control" type="date" name="datasetorenviada" placeholder="" required>

                                                            <br>

                                                            <input type="submit" class="btn btn-primary" value="Cadastrar" />


                                                        </div>

                                                    </div>

                                            </form>

                                        </div>

                                    </div>

                                    <!-- FIM DA SEGUNDA COLUNA -->

                                </div>


                            </div>

                            <!-- FIM DO CADASTRO -->


                            <!-- INICIO DA EDICAO -->

                            <div id="editar" class="tab-pane fade">

                                <div class="panel panel-default">

                                    <div class="panel-heading">

                                        <h4>

                                            EDIÇÃO DE NOTAS FISCAIS

                                        </h4>

                                    </div>


                                    <div class="panel-body">


                                        <!-- PRIMEIRA COLUNA -->

                                        <div class="col-md-6">

                                            <form class="form-inline" method="post" action="DAO/DAOcadastra.jsp" role="form">

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label>Codigo da Nota Fiscal</label>

                                                        <input class="form-control" type="text" name="codigonotafiscal" placeholder="" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label>Requisição Vinculada</label>

                                                        <input class="form-control" type="text" name="codigorivinculada" placeholder="" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">


                                                        <label>Código Fornecedor</label>

                                                        <input class="form-control" type="text" name="codigofornecedor" placeholder="" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label>Fornecedor</label>

                                                        <input class="form-control" type="text" name="nomefornecedor" placeholder="" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label>Nº Nota Fiscal</label>

                                                        <input class="form-control" type="text" name="numeronotafiscal" placeholder="" required>

                                                    </div>

                                                </div>

                                                <p>


                                                    </div>

                                                    <!-- FIM DA PRIMEIRA COLUNA -->


                                                    <!-- SEGUNDA COLUNA -->

                                                <div class="col-md-6">

                                                    <div class="form-group">

                                                        <div class="col-md-8">

                                                            <label>Data Nota Fiscal</label>

                                                            <input class="form-control" type="date" name="datanotafiscal" placeholder="" required>

                                                        </div>

                                                    </div>

                                                    <p>

                                                    <div class="form-group">

                                                        <div class="col-md-8">

                                                            <label>Valor Nota Fsical</label>

                                                            <input class="form-control" type="text" name="valornotafiscal" placeholder="R$ " required>

                                                        </div>

                                                    </div>


                                                    <p>

                                                    <div class="form-group">

                                                        <div class="col-md-8">

                                                            <label>Setor</label>

                                                            <input class="form-control" type="text" name="setorenviada" placeholder="" required>

                                                        </div>
                                                    </div>

                                                    <p>

                                                    <div class="form-group">
                                                        <div class="col-md-8">

                                                            <label>Valor Empenho</label>

                                                            <input class="form-control" type="text" name="valorEmpenho" value="" placeholder="R$ 0,00" requerid>

                                                        </div>
                                                    </div>

                                                    <p>

                                                    <div class="form-group">
                                                        <div class="col-md-8">
                                                            <label>Setor</label><br>
                                                            <select class="form-control" name="cmbsetor" value=""> 
                                                                <option value="aumoxcentral">Almox.Central</option>
                                                                <option value="almoxsaude">Almox.Saúde</option>
                                                                <option value="comras">Compras</option>
                                                                <option value="dcs">DCS</option>
                                                                <option value="dipe">Dipe</option>
                                                                <option value="expedientesaude">Expediente Sesau</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <p>

                                                    <div class="form-group">

                                                        <div class="col-md-8">

                                                            <label>Data envio</label>

                                                            <input class="form-control" type="date" name="datasetorenviada" placeholder="" required>

                                                            <br>

                                                            <input type="submit" class="btn btn-primary" value="Editar" />


                                                        </div>

                                                    </div>

                                            </form>

                                        </div>

                                    </div>

                                    <!-- FIM DA SEGUNDA COLUNA -->

                                </div>


                            </div>


                            <!-- FIM DA EDICAO -->


                            <!-- INICIO DA EXCLUSAO -->

                            <div id="excluir" class="tab-pane fade">

                                <div class="panel panel-default">

                                    <div class="panel-heading">

                                        <h4>EXCLUSÃO DE NOTA FISCAL</h4>

                                    </div>

                                    <div class="panel-body">



                                        <form method="post" action="DAO/DAOexclui.jsp">

                                            <div class="form group">
                                                <div class="col-md-8">
                                                    <label>Codigo da Nota Fiscal</label>
                                                    <input class="form-control" type="text" name="codigocalnotaf" placeholder="digite o código para exclusão" required>
                                                    
                                                    <br>
                                                    
                                                    <input type="submit" class="btn btn-primary" value="Excluir" />

                                                    
                                                </div>

                                            </div>
                                        </form>


                                    </div>

                                </div>


                            </div>



                            <!-- FIM DA EXCLUSAO -->


                        </div>

                    </div>

                    <div id="coluna_direita" class="col-md-3"></div>


                </div>


            </main>

            <footer></footer>

        </div>

    </body>
</html>
