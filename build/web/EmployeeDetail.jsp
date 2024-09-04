<%--  
Document   : EmployeeDetail 
Created on : Aug 25, 2024, 12:20:16 PM 
Author     --%> 
<%@page import="DB.DBCon"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<%@include file="AdminHeader.jsp" %> 
<div> 
<% 
String data=request.getParameter("data"); 
DBCon db=new DBCon(); 
db.pstmt=db.con.prepareStatement("SELECT * FROM emp_mstr WHERE ecode=? OR econt=? OR email=?"); 
db.pstmt.setString(1, data); 
db.pstmt.setString(2, data); 
db.pstmt.setString(3, data); 
db.rst=db.pstmt.executeQuery(); 
if(db.rst.next()) 
{ 
out.println("<center><div  style='background-color:lightgreen;width:600px;height:700px;'>" 
+"<h1>Employee Detail</h1>"   
+"<form action=UpdateDeleteEmp>" 
+"<table width=600 border=1 cellpadding=13>" 
+"<tr><td width=250>Employee Code</td><td><input type=number name=code value='"+db.rst.getString(1)+"'></td></tr>"   
            +"<tr><td>Employee Name</td><td><input type=text name=name value='"+db.rst.getString(2)+"'></td></tr>"   
            +"<tr><td>Date of Birth</td><td><input type=date name=dob value='"+db.rst.getString(3)+"'></td></tr> "  
            +"<tr><td>Gender</td><td><input type=radio name=gen value=Male>Male" 
             +"<input type=radio name=gen value=Female>Female</td></tr>"   
            +"<tr><td>Post</td><td><input type=text name=post value='"+db.rst.getString(5)+"'></td></tr>"   
            +"<tr><td>Address</td><td><input type=text name=addr value='"+db.rst.getString(6)+"'></td></tr>"   
            +"<tr><td>City</td><td><input type=text name=city value='"+db.rst.getString(7)+"'></td></tr> "  
            +"<tr><td>Contact</td><td><input type=number name=cont value='"+db.rst.getString(8)+"'></td></tr>"   
            +"<tr><td>E Mail</td><td><input type=email name=mail value='"+db.rst.getString(9)+"'></td></tr>"   
            +"<tr><td>Id Name</td><td><input type=text name=idname value='"+db.rst.getString(10)+"'></td></tr>"   
            +"<tr><td>Id Number</td><td><input type=number name=idno value='"+db.rst.getString(11)+"'></td></tr>"   
           +"<tr><th><input type=submit value=Update name=opr></th><td><input type=submit value=Delete name=opr></td></tr>"   
           +"</table></center>" 
         +"</form>" 
     +"</div>");     
} 
else 
{ 
  out.println("<h1>Record does not Found</h1>"); 
} 
%>    
  </div>  
 
</body> 
</html> 