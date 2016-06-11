<%--  
    Document   : DAOcadastro
    Created on : 19/03/2016, 18:11:08
    Author     : Marco Antonio
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.GregorianCalendar"%>
<!-- codigo seguinte inclui dados na relvar RIM no BD PRORIM -->

<%@page import="java.text.SimpleDateFormat"%>
<%@ page import ="java.sql.*" %>
<%
    // dados a serem gravados na relvar RIM
    String fnomeunidade = request.getParameter("cmbunidade");
    String fdescricao = request.getParameter("descricao");
    String fdotacao = request.getParameter("despesa");
    String ftiporim = request.getParameter("tiporim");
    String fcetil = request.getParameter("cetil");
    String fdatacetil = request.getParameter("datacetil");
    String fdatacetilsql = request.getParameter("DataCetilSQL");
    String fvalorestimado = request.getParameter("valorestimado");
    String fvalorreal = request.getParameter("valorreal");
    String fprocesso = request.getParameter("processo");
    String fanoprocesso = request.getParameter("anoprocesso");
    String fprocessocontabil = request.getParameter("processocontabil");
    String fanoprocessocontabil = request.getParameter("anoprocessocontabil");
    String fcontabilidade = request.getParameter("contabilidade");
    String fordenadorass = request.getParameter("dataordenadorri");
    String fcomprasprim = request.getParameter("datacomprasdcs");
    String fordenadorempenho = request.getParameter("dataordenadorempenho");
    String fcomprasseg = request.getParameter("datacomprasdcsaf");
    String fdipe = request.getParameter("datadipe");
    String fcadastrante = request.getParameter("cadastrante");
    String fdatacadastro = request.getParameter("datacadastro");
    String fobservacao = request.getParameter("anotacoes");
    String fcdusuario = request.getParameter("Cd_Usuario");
    String fcdunidade = request.getParameter("Cd_unidade");
 
    if (fanoprocessocontabil.isEmpty()) {
        fanoprocessocontabil = "2016";
    } else {
        //fanoprocessocontabil = request.getParameter("anoprocessocontabil");
    }

    if (fanoprocesso.isEmpty()) {
        fanoprocesso = "2016";
    } else {
        //fanoprocessocontabil = request.getParameter("anoprocessocontabil");
    }
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");

    //obtendo o codigo do usuário escolhido no select ref.ao usuário na página de cadastro da requisição.
    Statement stusuario = con.createStatement();
    ResultSet resultsetusuario = stusuario.executeQuery("SELECT Cod_usuario FROM usuario Where login_usuario='" + fcadastrante + "'");
    //ResultSet resultsetusuario = stusuario.executeQuery("SELECT Cod_usuario FROM usuario Where login_usuario='giu'");
    resultsetusuario.next();
    fcdusuario = resultsetusuario.getString("Cod_usuario");
    int cdusuariovalor = Integer.parseInt(fcdusuario);

    //obtendo o codigo da unidade escolhido no select ref.a unidade na página de cadastro da requisição.
    Statement stunidade = con.createStatement();
    ResultSet resultsetunidade = stunidade.executeQuery("SELECT Cod_unidade FROM unidade Where Nome_unidade='" + fnomeunidade + "'");
    //ResultSet resultsetusuario = stusuario.executeQuery("SELECT Cod_usuario FROM usuario Where login_usuario='giu'");
    resultsetunidade.next();
    String fcdunidadevalor = resultsetunidade.getString("Cod_unidade");
    int cdunidadevalor = Integer.parseInt(fcdunidadevalor);

    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into rim (Nome_Unidade,Descricao,"
            + "Dotacao,Tipo_RIM,Cetil,DataCetil,ValorEstimado,"
            + "ValorReal,Processo,ano_processo,ProcessoContabil,ano_processo_contabil,"
            + "Contabilidade,OrdenadorAss,ComprasPrim,OrdenadorEmpenho,ComprasSeg,Dipe,"
            + "Cadastrante,DataCadastro,Observacao,Cd_Usuario,CD_unidade) values "
            + "('" + fnomeunidade + "','" + fdescricao
            + "','" + fdotacao + "','" + ftiporim + "','" + fcetil + "','" + fdatacetil + "','" + fvalorestimado + "','"
            + fvalorreal + "','" + fprocesso + "','" + fanoprocesso + "','" + fprocessocontabil + "','" + fanoprocessocontabil
            + "','" + fcontabilidade + "','" + fordenadorass + "','" + fcomprasprim + "','" + fordenadorempenho
            + "','" + fcomprasseg + "','" + fdipe + "','" + fcadastrante + "','" + fdatacadastro + "','"
            + fobservacao + "','" + cdusuariovalor + "','" + cdunidadevalor + "')");

    // dados a serem gravados na relvar RIM
    String fcodigorim = request.getParameter("cetil");
    String fcodigodotacao = request.getParameter("despesa");

    // obtendo codigo sequencial da RI para gravação na realvar rim_has_dotacao
    Statement statement = con.createStatement();
    // observar que foi necessária a renomeação da coluna MAX(Cod_rim)
    ResultSet resultset = statement.executeQuery("SELECT MAX(Cod_rim) as Cod_rim FROM prorim.rim");
    resultset.next();
    String teste = resultset.getString("Cod_rim");
    int valor = Integer.parseInt(teste);

    // dados iniciais a serem gravados na relvar him_has_dotacao
    Statement st1 = con.createStatement();
    st1.executeUpdate("insert into rim_has_dotacao(Cod_rim, Cod_despesa, Cetil) values('" + valor + "','"
            + fcodigodotacao + "','" + fcodigorim + "')");

    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");
            
    } else {
        response.sendRedirect("index.jsp");
    }

%>
