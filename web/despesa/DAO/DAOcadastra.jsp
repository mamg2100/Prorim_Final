<%-- 
    Document   : DAOcadastro
    Created on : 19/03/2016, 18:11:08
    Author     : Willian
--%>

<%@ page import ="java.sql.*" %>
<%
    String fdespesa = request.getParameter("despesa");    
    String freduzida = request.getParameter("reduzida");
    String fprograma = request.getParameter("programa");
    String facao = request.getParameter("acao");
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into dotacao (despesa, reduzida, programa, acao) values ('" + fdespesa + "','" + freduzida + "','" + fprograma+ "','" + facao + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>