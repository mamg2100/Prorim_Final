<%-- 
    Document   : DAOlista
    Created on : 19/03/2016, 19:17:20
    Author     : Lucas
--%>

<%@ page import ="java.sql.*" %>
<%
    String fcodigoUnidade = request.getParameter("codigo");
    String fnomeUnidade = request.getParameter("nome_unidade");    
    String ftipoUnidade = request.getParameter("tipo_unidade");
    String fendUnidade = request.getParameter("end_unidade");
    String fnrUnidade = request.getParameter("nr_unidade");
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
     int i = st.executeUpdate("UPDATE unidade SET nome_unidade = '" + fnomeUnidade + "', tipo_unidade = '" + ftipoUnidade + "', end_unidade = '"+ fendUnidade + "', nr_endereco = '"+ fnrUnidade + "', bairro_unidade  = '" + fbairroUnidade + "', cidade_unidade = '"+ fcidadeUnidade + "', uf_unidade = '"+ fufUnidade +"' , Fone1_unidade= '" +ffoneumUnidade +"',Fone2_unidade = '"+ ffonedoisUnidade + "',Resp_unidade = '"+frespUnidade+"' ,Fone_contato= '" + ffoneUnidade +"' WHERE  Cod_unidade = "+fcodigoUnidade+"");
            
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("../../bemvindo.jsp");
        
    } else {
        response.sendRedirect("index.jsp");
    }
%>