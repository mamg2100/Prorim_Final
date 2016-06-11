<%-- 
    Document   : DAOlista
    Created on : 19/03/2016, 19:17:20
    Author     : thiag
--%>

<%@ page import ="java.sql.*" %>
<%
        
    try{
    String fcodigori = request.getParameter("codigoRIM");
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

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();
             
        /*int i = st.executeUpdate("UPDATE rim SET Nome_unidade='" + fnomeunidade + "' WHERE cod_rim=2195");*/
         
        
         int i = st.executeUpdate("UPDATE rim SET "
                + "Nome_unidade = '" + fnomeunidade + "'," 
                + "Descricao = '" + fdescricao + "'," 
                + "Dotacao = '" + fdotacao + "'," 
                + "Tipo_RIM = '" + ftiporim + "'," 
                + "Cetil = '" + fcetil + "'," 
                + "DataCetil = '" + fdatacetil + "'," 
                + "DataCetilSQL = '" + fdatacetilsql + "',"
                + "ValorEstimado = '" + fvalorestimado + "'," 
                + "ValorReal = '" + fvalorreal + "'," 
                + "Processo = '" + fprocesso + "'," 
                + "ano_processo = '" + fanoprocesso + "'," 
                + "ProcessoContabil = '" + fprocessocontabil + "'," 
                + "ano_processo_contabil = '" + fanoprocessocontabil + "',"
                + "Contabilidade = '" + fcontabilidade + "'," 
                + "OrdenadorAss = '" + fordenadorass + "'," 
                + "CompraspRim = '" + fcomprasprim + "'," 
                + "OrdenadorEmpenho = '" + fordenadorempenho + "',"
                + "ComprasSeg = '" + fcomprasseg + "'," 
                + "Dipe = '" + fdipe + "'," 
                + "Cadastrante = '" + fcadastrante + "'," 
                + "DataCadastro = '" + fdatacadastro + "'," 
                + "Observacao = '" + fobservacao + "'"
                + "WHERE Cod_rim = '" + fcodigori + "'");
       
        
     
         
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");

    } 
    
    }catch(SQLException e)
    {
        e.printStackTrace();
    }
        
    
       
%>
