package admin;

import DB.DBCon;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "BlockUnblock", urlPatterns = {"/BlockUnblock"})
public class BlockUnblock extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out=response.getWriter())  {
            String email=request.getParameter("email");
            int status=Integer.parseInt(request.getParameter("Status"));
            if(status==1)
                status=0;
            else 
                status=1;
            DBCon db= new DBCon();
            db.pstmt=db.con.prepareStatement("UPDATE login SET ac_status=? WHERE user=?");
            db.pstmt.setInt(1, status);
            db.pstmt.setString(2, email);
            int i=db.pstmt.executeUpdate();
            if(i>0)
            {
                response.sendRedirect("EmployeeList.jsp");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    
    }
    
}
