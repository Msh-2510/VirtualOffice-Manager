package admin;

import DB.DBCon;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterCompany", urlPatterns = {"/RegisterCompany"})
public class RegisterCompany extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out =response.getWriter();
        out.print("<h1>Hello bhai Log</h1>");
        try  { 
        String type=request.getParameter("t1"); 
        String user=request.getParameter("t2"); 
        String pswd=request.getParameter("t3"); 
            DBCon db=new DBCon(); 
       db.pstmt=db.con.prepareStatement("insert into login(user,pswd,utype,ac_status) values(?,?,?,?)"); 
       db.pstmt.setString(1, user); 
       db.pstmt.setString(2, pswd); 
       db.pstmt.setString(3, "Company"); 
       db.pstmt.setString(4, "1"); 
       int i=db.pstmt.executeUpdate(); 
       if(i>0) 
       { 
         response.sendRedirect("index.html?msg=Company Added Successfully"); 
       } 
    }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    
   
}
