<%-- 
    Document   : cadastraUnidade
    Created on : 19/03/2016, 16:03:47
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRORIM - Unidades</title>

       
        <script src="../js/script.js" type="text/javascript"></script>
        <script src="../js/jquery-2.2.3.js" type="text/javascript"></script>
         <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../CSS/estilo_form.css" rel="stylesheet" type="text/css"/>

    </head>
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
                        <li  class="active"><a href="#">Unidade</a></li> 
                        <li><a href="../fornecedor/fornecedor.jsp">Fornecedor</a></li>
                        <li><a href="../despesa/despesa.jsp">Despesa</a></li> 
                        <li><a href="../empenho/empenho.jsp">Empenho | AF</a></li> 
                        <li><a href="../notafiscal/notafiscal.jsp">Nota Fiscal</a></li> 
                        <li><a href="../listar.jsp">Relatórios</a></li> 
                    </ul>
                </div>
            </nav>
        </div>

        <div class="container">

            <header>


            </header>


            <main>

                <div class="row" id="conteudo">

                    <div class="col-md-2" id="coluna_esquerda"></div>

                    <div class="col-md-8">


                        <ul class="nav nav-tabs">

                            <li class="active"><a data-toggle="tab" href="#cadastrar">Cadastrar</a></li>

                            <li><a data-toggle="tab" href="#editar">Editar</a></li>

                            <li><a data-toggle="tab" href="#excluir">Excluir</a></li>

                        </ul>

                        <div class="tab-content">

                            <div id="cadastrar" class="tab-pane fade in active">

                                <div class="panel panel-default">

                                    <div class="panel-heading">

                                        <h4>CADASTRO DE UNIDADES</h4>

                                    </div>

                                    <div class="panel-body">


                                        <form class="form-inline" method="post" action="DAO/DAOcadastra.jsp" role="form">

                                            <!-- PRIMEIRA COLUNA DO FORMULARIO -->

                                            <div class="col-md-4" id="primeira_coluna_cadastrar">

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Unidade</label>

                                                        <input class="form-control" type="text" name="nome_unidade" placeholder="Identificação da Unidade solicitante" required>

                                                    </div>

                                                </div>

                                                <p>


                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Tipo Endereço</label>


                                                        <input class="form-control" type="text" name="tipo_unidade" placeholder="Rua, Avenida,..." required>

                                                    </div>

                                                </div>

                                                <p>


                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Endereço</label>

                                                        <input class="form-control" type="text" name="end_unidade" placeholder="Digite o endereço" required>

                                                    </div>

                                                </div>

                                                <p>


                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Nº</label>

                                                        <input class="form-control" type="text" name="nr_unidade" placeholder="Digite o nº associado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Bairro</label>


                                                        <input class="form-control" type="text" name="bairro_unidade" placeholder="Digite o Bairro" required>

                                                    </div>

                                                </div>

                                                <p>


                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Cidade</label>

                                                        <input class="form-control" type="text" name="cidade_unidade" placeholder="Digite a Cidade" required>

                                                    </div>

                                                </div>
                                            </div>



                                            <p>



                                                <!-- FIM DA PRIMEIRA COLUNA -->



                                                <!-- SEGUNDA COLUNA DO FORMULARIO -->



                                            <div class="col-md-4" id="segunda_coluna_cadastrar">



                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">UF</label>

                                                        <input class="form-control" type="text" name="uf_unidade" placeholder="Digite o Estado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone</label>

                                                        <input class="form-control" type="text" name="fone1_unidade" placeholder="Telefone 1" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone 2</label>

                                                        <input class="form-control" type="text" name="fone2_unidade" placeholder="Telefone 2" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Responsável</label>

                                                        <input class="form-control" type="text" name="resp_unidade" placeholder="Nome de contato" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone do Contato</label>

                                                        <input class="form-control" type="text" name="fone_contato" placeholder="Telefone do contato" required>


                                                    </div>




                                                </div>

                                                <p>

                                                <div class="col-md-4">

                                                    <br> 

                                                    <input type="submit" class="btn btn-primary" value="Cadastrar" />


                                                    </form>

                                                </div>

                                            </div>

                                    </div>

                                </div>

                            </div>



                            <!-- FIM DA ABA CADASTRAR -->

                            <!-- INICIO DA ABA EDITAR -->


                            <div id="editar" class="tab-pane fade">

                                <div class="panel panel-default">

                                    <div class="panel-heading"><h4>EDICAO DE UNIDADES</h4></div>

                                    <div class="panel-body">

                                        <form class="form-inline" method="post" action="DAO/DAOaltera.jsp" role="form">

                                            <!-- PRIMEIRA COLUNA DO FORMULARIO -->

                                            <div class="col-md-4">

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Codigo</label>

                                                        <input class="form-control" type="text" name="codigo" placeholder="Codigo da Unidade" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Unidade</label>

                                                        <input class="form-control" type="text" name="nome_unidade" placeholder="Identificação da Unidade solicitante" required>

                                                    </div>

                                                </div>

                                                <p>


                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Tipo Endereço</label>


                                                        <input class="form-control" type="text" name="tipo_unidade" placeholder="Rua, Avenida,..." required>

                                                    </div>

                                                </div>

                                                <p>


                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Endereço</label>

                                                        <input class="form-control" type="text" name="end_unidade" placeholder="Digite o endereço" required>

                                                    </div>

                                                </div>

                                                <p>


                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Nº</label>

                                                        <input class="form-control" type="text" name="nr_unidade" placeholder="Digite o nº associado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Bairro</label>


                                                        <input class="form-control" type="text" name="bairro_unidade" placeholder="Digite o Bairro" required>

                                                    </div>

                                                </div>

                                                <p>





                                            </div>

                                            <p>


                                                <!-- FIM DA PRIMEIRA COLUNA -->



                                                <!-- SEGUNDA COLUNA DO FORMULARIO -->



                                            <div class="col-md-4" id="segunda_coluna">

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Cidade</label>

                                                        <input class="form-control" type="text" name="cidade_unidade" placeholder="Digite a Cidade" required>

                                                    </div>

                                                </div>
                                                
                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">UF</label>

                                                        <input class="form-control" type="text" name="uf_unidade" placeholder="Digite o Estado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone</label>

                                                        <input class="form-control" type="text" name="fone1_unidade" placeholder="Telefone 1" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone 2</label>

                                                        <input class="form-control" type="text" name="fone2_unidade" placeholder="Telefone 2" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Responsável</label>

                                                        <input class="form-control" type="text" name="resp_unidade" placeholder="Nome de contato" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone do Contato</label>

                                                        <input class="form-control" type="text" name="fone_contato" placeholder="Telefone do contato" required>


                                                    </div>

                                                </div>

                                                <div class="col-md-8">

                                                    <br> 

                                                    <input type="submit" class="btn btn-primary" value="Editar" />

                                                    </form>
                                                </div>


                                            </div>


                                    </div>

                                </div>

                                <!-- FIM DA ABA EDITAR -->



                            </div>


                            <!-- INICIO DA EXCLUSAO -->

                            <div id="excluir"  class="tab-pane fade">


                                <div class="panel panel-default">

                                    <div class="panel-heading">

                                        <h4>EXCLUSÃO DE UNIDADES</h4>

                                    </div>

                                    <div class="panel-body">

                                        <form class="form-horizontal" method="post" action="DAO/DAOexclui.jsp" role="form">

                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <label class="control-label">Codigo do Usuário</label>
                                                    <input class="form-control" type="text" name="codigo" placeholder="Digite o código da unidade a ser excluída" value=<%=request.getParameter("codigo")%> required>
                                                </div>
                                            </div>

                                            <input type="submit" class="btn btn-primary" value="Excluir" />
                                        </form


                                    </div>


                                </div>



                            </div>

                        </div>

                    </div>

                </div>




                <div class="col-md-2" id="coluna_direita"></div>



            </main>



            <footer>


            </footer>

        </div>

    </body>
</html>
