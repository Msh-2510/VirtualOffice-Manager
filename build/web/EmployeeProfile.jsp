<%-- 
    Document   : EmployeeProfile
    Created on : Aug 28, 2024, 3:38:28 PM
    Author     : mohit07
--%>

<%@page import="DB.DBCon"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@include file="EmployeeHeader.jsp" %> 
<div> 
<% 
try 
{ 
String email=session.getAttribute("user").toString(); 
DBCon db=new DBCon(); 
db.pstmt=db.con.prepareStatement("select * from emp_mstr where email=?"); 
db.pstmt.setString(1, email); 
db.rst=db.pstmt.executeQuery(); 
if(db.rst.next()) 
{ 
out.println("<center><h1>Employee Profile</h1>"); 
out.println("<table width=500 border=1 cellpadding=10 bgcolor=lightyellow>"); 
out.println("<tr><td>Employee Code</td><td>"+db.rst.getString(1) +"</td></tr>"); 
out.println("<tr><td>Employee Name</td><td>"+db.rst.getString(2) +"</td></tr>"); 
out.println("<tr><td>Date of Birth</td><td>"+db.rst.getString(3) +"</td></tr>"); 
out.println("<tr><td>Gender</td><td>"+db.rst.getString(4) +"</td></tr>"); 
out.println("<tr><td>Post</td><td>"+db.rst.getString(5) +"</td></tr>"); 
out.println("<tr><td>Address</td><td>"+db.rst.getString(6) +"</td></tr>"); 
out.println("<tr><td>City</td><td>"+db.rst.getString(7) +"</td></tr>"); 
out.println("<tr><td>Contact</td><td>"+db.rst.getString(8) +"</td></tr>"); 
out.println("<tr><td>E Mail</td><td>"+db.rst.getString(9) +"</td></tr>"); 
out.println("<tr><td>Id Name</td><td>"+db.rst.getString(10) +"</td></tr>"); 
out.println("<tr><td>Id Number</td><td>"+db.rst.getString(11) +"</td></tr>"); 
} 
} 
catch(Exception e) 
{ 
e.printStackTrace(); 
} 
%>     
</div> 
</body> 
</html>