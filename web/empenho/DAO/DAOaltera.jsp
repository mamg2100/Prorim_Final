<%-- 
    Document   : DAOlista
    Created on : 19/03/2016, 19:17:20
    Author     : thiag
--%>

<%@ page import ="java.sql.*" %>
<%
    String fcodigoempenhosequencial = request.getParameter("codigoEmpenhoSequencial");
    String fcodigorivinculada = request.getParameter("codigoRIvinculada");
    String fcodigodespesavinculada = request.getParameter("codigoDespesaVinculada");
    String fcetil = request.getParameter("cetil");
    String fautorizacao = request.getParameter("autorizacao");    
    String fdataautorizacao = request.getParameter("dataAutorizacao");
    String fvaloraf = request.getParameter("valorAf");
    String fempenho = request.getParameter("empenho");
    String fdataempenho = request.getParameter("dataEmpenho");
    String fvalorempenho = request.getParameter("valorEmpenho");
    String fcmbfornecedor = request.getParameter("cmbFornecedor");
    String ftiporim = request.getParameter("tipoRim");
    String fdataempenhosql = request.getParameter("dataempenhoSQL");
    String fanori = request.getParameter("anori");
            
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("UPDATE rim_has_dotacao SET nome_unidade =  fnomeUnidade, "
            + " WHERE codigo = fcodigoempenhosequencial");
       
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>
