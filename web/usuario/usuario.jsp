<%-- 
    Document   : cadastroUsuario
    Created on : 19/03/2016, 15:58:40
    Author     : thiag
--%>

<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="com.mysql.jdbc.*"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PRORIM - Usuários</title>
        <link href="../CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/script.js" type="text/javascript"></script>
        <script src="../js/jquery-2.2.3.js" type="text/javascript"></script>
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
                     <li><a href="../rim/cadastraRim.jsp">Requisição</a></li>
                        <li  class="active"><a href="../usuario/usuario.jsp">Usuário</a></li> 
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

        <div class="container">




            <!-- TEMPLATE DE SEPARACAO -->
            <header>


            </header>

            <main>



                <div class="row" id="conteudo">
                    <div class="col-md-3" id="coluna_esquerda"></div>
                    <div class="col-md-6">


                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#cadastrar">Cadastrar</a></li>
                            <li><a data-toggle="tab" href="#editar">Editar</a></li>
                            <li><a data-toggle="tab" href="#excluir">Excluir</a></li>
                            <li><a data-toggle="tab" href="#listar">Listar</a></li>
                        </ul>

                        <div class="tab-content">
                            <div id="cadastrar" class="tab-pane fade in active">

                                <!-- Todo conteudo de cadastro -->
                                <div class="panel panel-default">

                                    <div class="panel-heading">

                                        <h4>CADASTRO DE USUARIOS<h4>

                                                </div>

                                                <div class="panel-body">
                                                    <form method="post" action="DAO/DAOcadastra.jsp" class="form-horizontal" role="form">

                                                        <div class="form-group">


                                                            <div class="col-md-8">
                                                                <label class="control-label" >Nome</label>
                                                                <input class="form-control" type="text" name="nome" placeholder="Nome" required>
                                                            </div>

                                                        </div>


                                                        <div class="form-group ">

                                                            <div class="col-md-8">

                                                                <label class="control-label">Email</label>

                                                                <input class="form-control col-md-9" type="text" name="email" placeholder="E-mail" required>

                                                            </div>

                                                        </div>


                                                        <div class="form-group">

                                                            <div class="col-md-8">
                                                                <label class="control-label  col-md-offset-0">Setor</label>

                                                                <input class="form-control col-md-9" type="text" name="setor" placeholder="Setor lotado" required>
                                                            </div>

                                                        </div>


                                                        <div class="form-group">
                                                            <div class="col-md-8">

                                                                <label>Tipo de usuário</label>

                                                                <input class="form-control col-md-9" type="text" name="tipo" placeholder="Tipo de usuário" required>
                                                            </div>
                                                        </div>


                                                        <div class="form-group">
                                                            <div class="col-md-8">

                                                                <label>Login</label>

                                                                <input class="form-control col-md-9" type="text" name="login" placeholder="Digite seu login"  required>
                                                            </div>

                                                        </div>


                                                        <div class="form-group">
                                                            <div class="col-md-8">

                                                                <label>Senha</label>
                                                                <input class="form-control col-md-9" name="senha" type="password" placeholder="Digite sua senha"  required>
                                                            </div>
                                                        </div>

                                                        <br>

                                                        <input type="submit" class="btn btn-primary" value="Cadastrar" />
                                                    </form>

                                                    <!-- FIM DO CADASTRO -->
                                                </div>
                                                </div>
                                                </div>
                            
                            <!-- INICIO DO EDITAR -->
                                                <div id="editar" class="tab-pane fade">

                                                    <div class="panel panel-default">

                                                        <div class="panel-heading"><h4>EDITAR USUÁRIO</h4></div>

                                                        <div class="panel-body">
                                                            <form method="post" action="DAO/DAOaltera.jsp" class="form-horizontal" role="form">


                                                                <div class="form-group">
                                                                    <div class="col-md-8">
                                                                        <label class="control-label">Codigo</label>

                                                                        <input class="form-control" type="text" name="codigo"value="<%=request.getParameter("codigo")%>" placeholder="Digite o codigo" disable>
                                                                    </div>
                                                                </div>




                                                                <div class="form-group">

                                                                    <div class="col-md-8">

                                                                        <label class="control-label">Nome</label>

                                                                        <input class="form-control" type="text" name="nome"value="<%=request.getParameter("nome")%>" placeholder="Digite seu nome" required>

                                                                    </div>

                                                                </div>

                                                                <div class="form-group">
                                                                    <div class="col-md-8">
                                                                        <label>Email</label>

                                                                        <input class="form-control" type="text" name="email" value="<%=request.getParameter("email")%>"placeholder="Digite seu email" required>

                                                                    </div>
                                                                </div>



                                                                <div class="form-group">
                                                                    <div class="col-md-8">
                                                                        <label>Setor</label>

                                                                        <input class="form-control" type="text" name="setor" value="<%=request.getParameter("setor")%>"placeholder="Digite seu setor" required>
                                                                    </div>
                                                                </div>



                                                                <div class="form-group">

                                                                    <div class="col-md-8">
                                                                        <label>Tipo de usuário</label>

                                                                        <input class="form-control" type="text" name="tipo" value="<%=request.getParameter("tipo")%>" placeholder="Digite o tipo de usuário" required>

                                                                    </div>

                                                                </div>



                                                                <div class="form-group">

                                                                    <div class="col-md-8">

                                                                        <label>Login</label>

                                                                        <input class="form-control" type="text" name="login" value="<%=request.getParameter("login")%>" placeholder="DESABILITADO" disabled style="background-color: #F3f3f3">

                                                                    </div>
                                                                </div>



                                                                <div class="form-group">
                                                                    <div class="col-md-8">
                                                                        <label>Senha</label>
                                                                        <input class="form-control" type="password" name="senha" placeholder="Digite sua senha" required>
                                                                    </div>


                                                                </div>

                                                                <input type="submit" class="btn btn-primary" value="Atualizar" />

                                                            </form>

                                                        </div>


                                                    </div>




                                                </div>
                                                <div id="excluir" class="tab-pane fade">

                                                    <div class="panel panel-default">

                                                        <div class="panel-heading"><h4>Excluir usuário</h4></div>

                                                        <div class="panel-body">


                                                            <form method="post" action="DAO/DAOexclui.jsp" class="form-horizontal" role="form">

                                                                <div class="col-md-8">


                                                                    <label>Codigo do Usuário</label>
                                                                    <input class=form-control" type="text" name="codigo" placeholder="Digite o código do usuário a ser excluído" value=<%=request.getParameter("codigoRIM")%> required>

                                                                </div>
                                                                <input type="submit" class="btn btn-primary" value="Excluir" />
                                                            </form>


                                                        </div>



                                                    </div>


                                                </div>



                                                </div>

                                                </div>

                                                </div>

                                                <div class="col-md-3" id="coluna_direita"></div>



                                                </main>



                                                <footer>


                                                </footer>




                                                </body>
                                                </html>
