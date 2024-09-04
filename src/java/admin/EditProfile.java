package admin;

import DB.DBCon;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
/**
 *
 * @author mohit07
 */
@WebServlet(name = "EditProfile", urlPatterns = {"/EditProfile"})
public class EditProfile extends HttpServlet { 
    protected void service(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException { 
        response.setContentType("text/html;charset=UTF-8"); 
        try (PrintWriter out = response.getWriter()) 
        { 
        String code=request.getParameter("code"); 
        String name=request.getParameter("name"); 
        String dob=request.getParameter("dob"); 
        String gen=request.getParameter("gen"); 
        String post=request.getParameter("post"); 
        String addr=request.getParameter("addr"); 
        String city=request.getParameter("city"); 
        String cont=request.getParameter("cont"); 
        String mail=request.getParameter("mail"); 
        String idname=request.getParameter("idname"); 
        String idno=request.getParameter("idno"); 
        DBCon db=new DBCon(); 
        db.pstmt=db.con.prepareStatement("update emp_mstr set ename=?,edob=?,egender=?,epost=?,eaddr=?,ecity=?,econt=?,idname=?,idno=? where email=?"); 
        db.pstmt.setString(1, name); 
        db.pstmt.setString(2, dob); 
        db.pstmt.setString(3, gen); 
        db.pstmt.setString(4, post); 
        db.pstmt.setString(5, addr); 
        db.pstmt.setString(6, city); 
        db.pstmt.setString(7, cont); 
        db.pstmt.setString(8, idname); 
        db.pstmt.setString(9, idno); 
        db.pstmt.setString(10, mail); 
        int i=db.pstmt.executeUpdate(); 
        if(i>0) 
        { 
         response.sendRedirect("EmployeeHome.jsp?msg=Profile Updated Successfully"); 
        } 
                } 
        catch(Exception e) 
        { 
          e.printStackTrace(); 
        } 
    } 
}
