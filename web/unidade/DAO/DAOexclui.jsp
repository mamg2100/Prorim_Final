<%-- 
    Document   : DAOexclui
    Created on : 19/03/2016, 18:51:57
    Author     : Lucas
--%>

<%@ page import ="java.sql.*" %>
<%
    String fcodigo = request.getParameter("codigo");    
        
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("delete from unidade where cod_unidade=" + fcodigo + ";");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>