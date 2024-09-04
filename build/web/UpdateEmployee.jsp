<%-- 
    Document   : UpdateEmployee
    Created on : Aug 27, 2024, 3:34:46 PM
    Author     : mohit07
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "AdminHeader.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Search Employee</h1>
            <center>
                <form action="EmployeeDetail.jsp">
                    <br>
                    <table width="500" cellpadding="20" border="1" cellspacing="0" bgvolor="lightgreen">
                        <tr><td>Employee Code or Contact or E Mail </td><td><input type="search" name="data"</td></tr>>
                        <tr><th><input type="submit" value="Search" </th><th><input type="reset"  value="Reset"</th></tr>>
                    </table>
                </form>
            </center>
        </div>
        
    </body>
</html>
