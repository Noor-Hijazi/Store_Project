<%-- 
    Document   : addItemsForEmplyee
    Created on : Jan 3, 2024, 9:54:21 AM
    Author     : DELL-H
--%>
<%@page import= "java.sql.* ,javax.swing.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file = "connection.jsp"%>
         <% 
         
         PreparedStatement pst = null;
         String query = "insert into items values(?,?,?,?,?)";
         
         try{
             pst = conn.prepareStatement(query);
             pst.setString(1, request.getParameter("id"));
             pst.setString(2, request.getParameter("name"));
             pst.setString(3, request.getParameter("price"));
             pst.setString(4, request.getParameter("type"));
             pst.setString(5, request.getParameter("made"));
            
             pst.execute();
         }
         catch(Exception e){
             out.println(e);
         }
         %>
         <jsp:forward page="../html/forward.html"/>
    </body>
</html>
