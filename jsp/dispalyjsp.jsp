
<%@page import = "java.sql.* , javax.swing.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display</title>
        <!--link for normalization-->
         <link rel="stylesheet" type="text/css" href="../css/normalize.css" />
         <!--link for CSS style sheet-->
         <link rel="stylesheet" type="text/css" href="../css/display.css" />
    </head>
    <body>
        <%@include file="connection.jsp" %>
        <% 
            PreparedStatement pst = null;
            ResultSet  emps =null;
            String query = "select * from items";
            
            try{
                pst = conn.prepareStatement(query);
                emps =pst.executeQuery();
            }
            catch(Exception e ){
             out.println(e);
            }
         %>
         
        
         <div class="container">
             <div class="top">
             <h1>All Products</h1>
             <form action="../html/index.html"><input type="submit" value="Home"></form>
             </div>
             
             <table>
            <thead>
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>price</td>
                    <td>Type</td>
                    <td>Made in</td>
                </tr>
            </thead>
            <tbody>
                <%while(emps.next()){%>
                <tr>
                    <td><%= emps.getString(1)  %></td>
                    <td><%= emps.getString(2)  %></td>
                    <td><%= emps.getString(3)  %></td>
                    <td><%= emps.getString(4)  %></td>
                    <td><%= emps.getString(5)  %></td>
                    
                </tr>
                <%}%>
            </tbody>
        </table>
       </div>
    </body>
</html>
