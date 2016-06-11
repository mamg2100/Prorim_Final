<%-- 
    Document   : cadastroFornecedor
    Created on : 19/03/2016, 16:01:56
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRORIM - Fornecedor</title>

        <script src="../js/script.js" type="text/javascript"></script>
        <script src="../js/jquery-2.2.3.js" type="text/javascript"></script>
        <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../CSS/estilo_form.css" rel="stylesheet" type="text/css"/>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
                        <li><a href="../unidade/unidade.jsp">Unidade</a></li> 
                        <li  class="active"><a href="#">Fornecedor</a></li>
                        <li><a href="../despesa/despesa.jsp">Despesa</a></li> 
                        <li><a href="../empenho/empenho.jsp">Empenho | AF</a></li> 
                        <li><a href="../notafiscal/notafiscal.jsp">Nota Fiscal</a></li> 
                        <li><a href="../listar.jsp">Relatórios</a></li> 
                    </ul>
                </div>
            </nav>
        </div>

        <div class="container">

            <header></header>


            <main>

                <div class="row" id="conteudo">

                    <div class="col-md-2" id="coluna_esquerda"></div>

                    <div class="col-md-8" id="formulario">

                        <ul class="nav nav-tabs">

                            <li class="active"><a data-toggle="tab" href="#cadastrar">Cadastrar</a></li>

                            <li><a data-toggle="tab" href="#editar">Editar</a></li>

                            <li><a data-toggle="tab" href="#excluir">Excluir</a></li>

                        </ul>

                        <div class="tab-content">

                            <div id="cadastrar" class="tab-pane fade in active">

                                <div class="panel panel-default">

                                    <div class="panel-heading">

                                        <h4>CADASTRO DE FORNECEDORES</h4>

                                    </div>

                                    <div class="panel-body">

                                        <form class="form-inline" method="post" action="DAO/DAOcadastra.jsp" role="form">

                                            <div class="col-md-6" id="primeira_coluna_cadastrar">

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Nome</label>

                                                        <input class="form-control" type="text" name="nomefornecedor" placeholder="Fornecedor" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Tipo</label>

                                                        <input class="form-control" type="text" name="tipofornecedor" placeholder="PF ou PJ" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">CPF/CNPJ</label>

                                                        <input class="form-control" type="text" name="nrtipo" placeholder="nr do CPF ou CNPJ" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Logradouro</label>

                                                        <input class="form-control" type="text" name="logradouro" placeholder="Rua, Avenida,..." required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Endereço</label>

                                                        <input class="form-control" type="text" name="endereco" placeholder="Digite o endereço associado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Número</label>

                                                        <input class="form-control" type="text" name="numero" placeholder="Digite o nº associado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Bairro</label>

                                                        <input class="form-control" type="text" name="bairro" placeholder="Digite o Bairro" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Cidade</label>

                                                        <input class="form-control" type="text" name="cidade" placeholder="Digite a Cidade" required>

                                                    </div>

                                                </div>

                                            </div>

                                            <!-- FIM DA PRIMEIRA COLUNA -->

                                            <!-- FIM DA SEGUNDA COLUNA -->

                                            <div class="col-md-6" id="segunda_coluna_cadastrar">

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">UF</label>

                                                        <input class="form-control" type="text" name="estado" placeholder="Digite o Estado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone</label>

                                                        <input class="form-control" type="text" name="foneum" placeholder="Telefone 1" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone</label>

                                                        <input class="form-control" type="text" name="fonedois" placeholder="Telefone 2" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">e-mail</label>

                                                        <input class="form-control" type="text" name="email" placeholder="e-mail fornecedor" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">


                                                        <label class="control-label">site</label>

                                                        <input class="form-control" type="text" name="site" placeholder="site fornecedor" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Contato</label>

                                                        <input class="form-control" type="text" name="contato" placeholder="Nome de contato" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Email do Contato</label>

                                                        <input class="form-control" type="text" name="emailcontato" placeholder="Email do contato" required>

                                                        <p><br>

                                                            <input  type="submit" class="btn btn-primary" value="Cadastrar" />

                                                            </form>


                                                    </div>

                                                </div>


                                            </div>

                                            <!-- FIM DA SEGUNDA COLUNA -->
                                    </div>

                                </div>

                            </div>

                            <!-- FIM DO CADASTRO -->

                            <!-- INICIO DA EDICAO -->

                            <div id="editar" class="tab-pane fade">

                                <div class="panel panel-default">

                                    <div class="panel-heading">

                                        <h4>EDICAO DE FORNECEDORES</h4>

                                    </div>

                                    <div class="panel-body">

                                        <form class="form-inline" method="post" action="DAO/DAOaltera.jsp" role="form">

                                            <div class="col-md-6" id="primeira_coluna_cadastrar">

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Codigo</label>

                                                        <input class="form-control" type="text" name="codigo" placeholder="Fornecedor" required>

                                                    </div>

                                                </div>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Nome</label>

                                                        <input class="form-control" type="text" name="nomefornecedor" placeholder="Fornecedor" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Tipo</label>

                                                        <input class="form-control" type="text" name="tipofornecedor" placeholder="PF ou PJ" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">CPF/CNPJ</label>

                                                        <input class="form-control" type="text" name="nrtipo" placeholder="nr do CPF ou CNPJ" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Logradouro</label>

                                                        <input class="form-control" type="text" name="logradouro" placeholder="Rua, Avenida,..." required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Endereço</label>

                                                        <input class="form-control" type="text" name="endereco" placeholder="Digite o endereço associado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Número</label>

                                                        <input class="form-control" type="text" name="numero" placeholder="Digite o nº associado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Bairro</label>

                                                        <input class="form-control" type="text" name="bairro" placeholder="Digite o Bairro" required>

                                                    </div>

                                                </div>

                                                <p>



                                            </div>

                                            <!-- FIM DA PRIMEIRA COLUNA -->

                                            <!-- FIM DA SEGUNDA COLUNA -->

                                            <div class="col-md-6" id="segunda_coluna_cadastrar">

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Cidade</label>

                                                        <input class="form-control" type="text" name="cidade" placeholder="Digite a Cidade" required>

                                                    </div>

                                                </div>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">UF</label>

                                                        <input class="form-control" type="text" name="estado" placeholder="Digite o Estado" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone</label>

                                                        <input class="form-control" type="text" name="foneum" placeholder="Telefone 1" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Fone</label>

                                                        <input class="form-control" type="text" name="fonedois" placeholder="Telefone 2" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">e-mail</label>

                                                        <input class="form-control" type="text" name="email" placeholder="e-mail fornecedor" required>

                                                    </div>

                                                </div>


                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">


                                                        <label class="control-label">site</label>

                                                        <input class="form-control" type="text" name="site" placeholder="site fornecedor" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Contato</label>

                                                        <input class="form-control" type="text" name="contato" placeholder="Nome de contato" required>

                                                    </div>

                                                </div>

                                                <p>

                                                <div class="form-group">

                                                    <div class="col-md-8">

                                                        <label class="control-label">Email do Contato</label>

                                                        <input class="form-control" type="text" name="emailcontato" placeholder="Email do contato" required>

                                                        <p><br>

                                                            <input  type="submit" class="btn btn-primary" value="Editar" />

                                                            </form>


                                                    </div>

                                                </div>


                                            </div>

                                            <!-- FIM DA SEGUNDA COLUNA -->
                                    </div>

                                </div>

                            </div>

                            <!-- FIM DA EDICAO -->

                            <!-- INICIO DA EXCLUSAO -->

                            <div id="excluir" class="tab-pane fade">

                                <div class="panel panel-default">

                                    <div class="panel-heading">

                                        <h4>EXCLUSÃO DE FORNECEDORES</h4>

                                    </div>


                                    <div class="panel-body">

                                        <form method="post" action="DAO/DAOexclui.jsp">

                                            <div class="form-group">



                                                <label class="control-label">Codigo do Fornecedor</label>

                                                <input class="form-control" type="text" name="codigo" value="<%=request.getParameter("codigo")%>" required>

                                            </div>

                                            <input type="submit" class="btn btn-primary" value="Excluir" />

                                    </div>

                                    </form>

                                </div>

                                <!-- FIM DA EXCLUSAO -->

                            </div>

                        </div>

                        <div id="coluna_direita" class="col-md-2"></div>


                    </div>

            </main>

            <footer>             
            </footer>


        </div>



    </body>
</html>
