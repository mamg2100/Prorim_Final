<%-- 
    Document   : login.jsp
    Created on : 19/03/2016, 16:52:55
    Author     : thiag
--%>

<%@ page import ="java.sql.*" %>
<%
    String login = request.getParameter("login");    
    String senha = request.getParameter("senha");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prorim","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from usuario where login_usuario='" + login + "' and senha_usuario='" + senha + "'");
    if (rs.next()) {
        session.setAttribute("nomeUsuario", login);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("principal.jsp");
    } else {
        out.println("Falha no login, <a href='index.html'>tente novamente.</a>");
    }
%> 

