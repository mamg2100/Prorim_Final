<%--  
    Document   : DAOcadastro
    Created on : 19/03/2016, 18:11:08
    Author     : Marco Antonio
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@ page import ="java.sql.*" %>

<%
    String fcodigoempenhosequencial = request.getParameter("codigoEmpenhoSequencial");
    String fcodigorivinculada = request.getParameter("codigo");
    String fcodigodespesavinculada = request.getParameter("despesa");
    String fcetil = request.getParameter("cetil");
    String fempenho = request.getParameter("empenho");
    String fdataempenho = request.getParameter("dataEmpenho");
    String fvalorempenho = request.getParameter("valorEmpenho");
    String fautorizacao = request.getParameter("autorizacao");
    String fdataautorizacao = request.getParameter("dataAutorizacao");
    String fvaloraf = request.getParameter("valorAf");
    String fcmbfornecedor = request.getParameter("cmbFornecedor");
    String ftiporim = request.getParameter("tipoRI");
    String fdataempenhosql = request.getParameter("dataEmpenhoSQL");
    String fanori = request.getParameter("anoRI");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into rim_has_dotacao (Cod_rim, Cod_despesa, Cetil, empenho, dataempenho, valorempenho, autorizacao, dataAF, valorAF, nome_fornecedor, tipo_rim, dataempenhoSQL, anoRI) values ('" + fcodigorivinculada + "','" + fcodigodespesavinculada + "','" + fcetil + "','" + fempenho + "','" + fdataempenho + "','" + fvalorempenho + "','" + fautorizacao + "','" + fdataautorizacao + "','" + fvaloraf + "','" + fcmbfornecedor + "','" + ftiporim + "','" + fdataempenhosql + "','" + fanori + "')");
   
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");

    } else {
        response.sendRedirect("index.jsp");
    }
%>








