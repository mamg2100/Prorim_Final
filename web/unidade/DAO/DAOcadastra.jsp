<%-- 
    Document   : DAOcadastro
    Created on : 19/03/2016, 18:11:08
    Author     : Lucas
--%>

<%@ page import ="java.sql.*" %>
<%
    String fnomeUnidade = request.getParameter("nome_unidade");    
    String ftipoUnidade = request.getParameter("tipo_unidade");
    String fendUnidade = request.getParameter("end_unidade");
    String fnrEndereco = request.getParameter("nr_unidade");
    String fbairroUnidade = request.getParameter("bairro_unidade");
    String fcidadeUnidade = request.getParameter("cidade_unidade");
    String fufUnidade = request.getParameter("uf_unidade");
    String ffoneumUnidade = request.getParameter("fone1_unidade");    
    String ffonedoisUnidade = request.getParameter("fone2_unidade");
    String frespUnidade = request.getParameter("resp_unidade");
    String ffoneUnidade = request.getParameter("fone_contato");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into unidade (nome_unidade, tipo_unidade, end_unidade, nr_endereco, bairro_unidade, cidade_unidade, uf_unidade, fone1_unidade, fone2_unidade, resp_unidade, fone_contato) values ('" + fnomeUnidade + "','" + ftipoUnidade + "','" + fendUnidade + "','" + fnrEndereco + "','" + fbairroUnidade + "','" + fcidadeUnidade + "','" + fufUnidade + "','" + ffoneumUnidade + "','" + ffonedoisUnidade +  "','" + frespUnidade + "','" + ffoneUnidade + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>