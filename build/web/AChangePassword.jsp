<%-- 
    Document   : AChangePassword
    Created on : Aug 28, 2024, 5:05:45 PM
    Author     : mohit07
--%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
 
<%@include file="AdminHeader.jsp" %>      
      
<div > 
    <center> 
        <form action="AChangPassword" method="post"> 
            <table width="500" cellpadding="20" cellspacing="0" border="1" style="background-color: 
gold;">  
                <tr><td>Old Password</td><td><input type="password" name="opswd"></td></tr> 
                <tr><td>New Password</td><td><input type="password" name="npswd"></td></tr> 
                <tr><td>Confirm Password</td><td><input type="password" name="cpswd"></td></tr> 
                <tr><td><input type="submit" value="Submit"></td> 
                    <td><input type="reset" value="Reset"></td></tr> 
                 
            </table>                 
        </form> 
        <% 
         if(request.getParameter("error")!=null) 
         { 
         String msg=request.getParameter("error"); 
         out.println("<h2 style='color:red;'>"+msg+"</h2>"); 
         } 
%> 
</center> 
</div> 
</body> 
</html> 
