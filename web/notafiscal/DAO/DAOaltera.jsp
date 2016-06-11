<%-- 
    Document   : DAOlista
    Created on : 19/03/2016, 19:17:20
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
    int i = st.executeUpdate("UPDATE dotacao SET despesa =  fdespesa, reduzida = freduzida, programa = fprograma, acao = facao");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>