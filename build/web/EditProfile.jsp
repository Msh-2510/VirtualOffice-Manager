<%-- 
    Document   : EditProfile
    Created on : Aug 30, 2024, 3:38:03 PM
    Author     : mohit07
--%>

<%@page import="DB.DBCon"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@include file="EmployeeHeader.jsp" %>      
<div > 
<center>   
<h2>Edit Your Profile</h2> 
<form action="EditProfile"> 
<table width="500" border="1" cellpadding="15" cellspacing="0" bgcolor="lightyellow"> 
<% 
String email=session.getAttribute("user").toString(); 
DBCon db=new DBCon(); 
db.pstmt=db.con.prepareStatement("select * from emp_mstr where email=?"); 
db.pstmt.setString(1, email); 
db.rst=db.pstmt.executeQuery(); 
if(db.rst.next()) 
{ 
out.println("<tr><td>Employee Code</td>" 
+ "<td><input type=number value='"+db.rst.getString(1)+"' name=code></td></tr>");     
out.println("<tr><td>Employee Name</td>" 
+ "<td><input type=text value='"+db.rst.getString(2)+"' name=name></td></tr>");     
out.println("<tr><td>Date of Birth</td>" 
+ "<td><input type=date value='"+db.rst.getString(3)+"' name=dob></td></tr>");     
out.println("<tr><td>Gender</td>" 
Analyze InfoTech, Janpriya Complex, Phase-II, Tedhi Puliya,  Aliganj Lucknow Ph. No.9453193268,9839434821 
E-mail. admin@analyzeinfotech.in, Website:  www.analyzeinfotech.in 
pg. 1 
+ "<td><input type=text value='"+db.rst.getString(4)+"' name=gen></td></tr>");     
out.println("<tr><td>Post</td>" 
+ "<td><input type=text value='"+db.rst.getString(5)+"' name=post></td></tr>");     
out.println("<tr><td>Address</td>" 
+ "<td><input type=text value='"+db.rst.getString(6)+"' name=addr></td></tr>");     
out.println("<tr><td>City</td>" 
+ "<td><input type=text value='"+db.rst.getString(7)+"' name=city></td></tr>");     
out.println("<tr><td>Contact</td>" 
+ "<td><input type=number value='"+db.rst.getString(8)+"' name=cont></td></tr>");     
out.println("<tr><td>E mail</td>" 
+ "<td><input type=mail value='"+db.rst.getString(9)+"' name=mail></td></tr>");     
out.println("<tr><td>ID Name</td>" 
+ "<td><input type=text value='"+db.rst.getString(10)+"' name=idname></td></tr>");     
out.println("<tr><td>ID Number</td>" 
+ "<td><input type=text value='"+db.rst.getString(11)+"' name=idno></td></tr>");     
out.println("<tr><td><input type=submit value=Submit></td>" 
+ "<td><input type=reset value=Reset></td></tr>");     
} 
%>          
</table> 
</form> 
</center> 
</div> 
</body> 
</html>
