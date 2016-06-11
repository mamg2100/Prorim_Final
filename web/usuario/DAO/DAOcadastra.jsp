<%-- 
    Document   : DAOcadastro
    Created on : 19/03/2016, 18:11:08
    Author     : thiag
--%>

<%@ page import ="java.sql.*" %>
<%
    String femail = request.getParameter("email");    
    String flogin = request.getParameter("login");
    String fnome = request.getParameter("nome");
    String fsenha = request.getParameter("senha");
    String fsetor = request.getParameter("setor");
    String ftipo = request.getParameter("tipo");
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into usuario (email_usuario, login_usuario, nome_usuario, senha_usuario, setor_usuario, tipo_usuario) values ('" + femail + "','" + flogin + "','" + fnome + "','" + fsenha + "','" + fsetor + "','" + ftipo + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("../../bemvindo.jsp");
        out.println("Cadastrado com sucesso!");        
        response.sendRedirect("../usuario.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>