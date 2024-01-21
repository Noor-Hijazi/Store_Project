<%-- 
    Document   : deleteItem
    Created on : Jan 3, 2024, 9:57:34 PM
    Author     : DELL-H
--%>
<%@page import = "java.sql.* , javax.swing.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
         <link rel="stylesheet" type="text/css" href="../css/forward.css" />
    </head>
    <body>
        <%@include file = "connection.jsp" %>
        <%
             PreparedStatement pst = null;
             String query = "delete from items where id=?";
             
             try{
                pst = conn.prepareCall(query);
                pst.setString(1, request.getParameter("id"));
                pst.execute();
                if(pst.getUpdateCount() > 0){%>
                  <jsp:forward page="../html/forward.html"/>
               <% }else{
                  out.println("Thers is no Product");
                } 
               
             }
             catch(Exception e){
                 out.println(e);
             }
        %>

    </body>
</html>
