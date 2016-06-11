<%-- 
    Document   : DAOlista
    Created on : 19/03/2016, 19:17:20
    Author     : Thiag
--%>

<%@ page import ="java.sql.*" %>
<%
    String femail = request.getParameter("email");    
    String flogin = request.getParameter("login");
    String fnome = request.getParameter("nome");
    String fsenha = request.getParameter("senha");
    String fsetor = request.getParameter("setor");
    String ftipo = request.getParameter("tipo");         
    String fcod = request.getParameter("codigo");         
   
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("UPDATE usuario SET email_usuario = '"+ femail+"', nome_usuario = '"+ fnome+"', senha_usuario = '"+fsenha+"', setor_usuario = '"+fsetor+"', tipo_usuario = '"+ftipo+"' WHERE cod_usuario = '"+fcod+"'");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>