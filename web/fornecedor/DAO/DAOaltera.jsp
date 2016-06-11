<%-- 
    Document   : DAOlista
    Created on : 19/03/2016, 19:17:20
    Author     : Marco Antonio
--%>

<%@ page import ="java.sql.*" %>
<%
    String fnomeFornecedor = request.getParameter("nomefornecedor");
    String ftipoFornecedor = request.getParameter("tipofornecedor");
    String fnumeroTipo = request.getParameter("nrtipo");
    String ftipoLogradouro = request.getParameter("logradouro");
    String fendFornecedor = request.getParameter("endereco");
    String fnrEndereco = request.getParameter("numero");
    String fbairroFornecedor = request.getParameter("bairro");
    String fcidadeFornecedor = request.getParameter("cidade");
    String fufFornecedor = request.getParameter("estado");
    String ffoneumFornecedor = request.getParameter("foneum");
    String ffonedoisFornecedor = request.getParameter("fonedois");
    String femailFornecedor = request.getParameter("email");
    String fsiteFornecedor = request.getParameter("site");
    String fcontatoFornecedor = request.getParameter("contato");
    String femailcontatoFornecedor = request.getParameter("emailcontato");;
    String fcodigo = request.getParameter("codigo");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();

    int i = st.executeUpdate("UPDATE fornecedor SET nome_fornecedor =  '"+fnomeFornecedor+"', tipo_fornecedor = '"+ftipoFornecedor+"',numero_tipo= '"+fnumeroTipo+"', tipo_logradouro= '"+ftipoLogradouro+"', end_Fornecedor= '"+fendFornecedor+"', nr_endereco= '"+fnrEndereco+"', bairro_fornecedor='"+fbairroFornecedor+"',cidade_fornecedor='"+fcidadeFornecedor+"', uf_fornecedor='"+fufFornecedor+"', fone1_fornecedor='"+ffoneumFornecedor+"', fone2_fornecedor=  '"+ffonedoisFornecedor+"', email_fornecedor= '"+femailFornecedor+"',site_fornecedor= '"+fsiteFornecedor+"', contato= '"+fcontatoFornecedor+"',email_contato= '"+femailcontatoFornecedor+"' WHERE cod_Fornecedor = "+fcodigo+" ");

    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>