<%-- 
    Document   : connection
    Created on : Dec 10, 2023, 5:49:22 PM
    Author     : DELL-H
--%>
<%@page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>connection</title>
    </head>
    <body>
        <% 
               Connection conn = null;
               
               try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/new2", "ahmad","2002" );
               }
               catch( Exception e){
                   out.println("Error in connection"+e);
               }
        
        %>
    </body>
</html>
