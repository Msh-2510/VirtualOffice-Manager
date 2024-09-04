package admin;

import DB.DBCon;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            String type = request.getParameter("t1");
            String user = request.getParameter("t2");
            String pswd = request.getParameter("t3");
            DBCon db = new DBCon();
            db.pstmt = db.con.prepareStatement("select ac_status from login where user=? and pswd=? and utype=?");
            db.pstmt.setString(1, user);
            db.pstmt.setString(2, pswd);
            db.pstmt.setString(3, type);
            db.rst = db.pstmt.executeQuery();
            if (db.rst.next()) {
                int st = db.rst.getInt(1);
                if (st == 1) {
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    if (type.equalsIgnoreCase("admin")) {
                        response.sendRedirect("AdminHome.jsp");

                    } else {
                        response.sendRedirect("EmployeeHome.jsp");

                    }
                } else {
                    out.println("<h1>Account has been blocked</h1>");

                }
            } else {
                out.println("<h1>Incorrect User Name or Password or Type</h1>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
