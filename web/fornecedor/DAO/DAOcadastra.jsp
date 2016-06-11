<%-- 
    Document   : DAOcadastro
    Created on : 19/03/2016, 18:11:08
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
    String femailcontatoFornecedor = request.getParameter("emailcontato");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;

    int i = st.executeUpdate("insert into fornecedor(nome_fornecedor, tipo_fornecedor, numero_tipo, tipo_logradouro, end_fornecedor, nr_endereco, bairro_fornecedor, cidade_fornecedor, uf_fornecedor, fone1_fornecedor, fone2_fornecedor, email_Fornecedor,site_fornecedor, contato, email_contato) values ('"
            + fnomeFornecedor + "','" + ftipoFornecedor + "','" + fnumeroTipo + "','"
            + ftipoLogradouro + "','" + fendFornecedor + "','"
            + fnrEndereco + "','" + fbairroFornecedor + "','" + fcidadeFornecedor + "','"
            + fufFornecedor + "','" + ffoneumFornecedor + "','" + ffonedoisFornecedor + "','"
            + femailFornecedor + "','" + fsiteFornecedor + "','" + fcontatoFornecedor + "','"
            + femailcontatoFornecedor + "')");

    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");

    } else {
        response.sendRedirect("index.jsp");
    }
%>