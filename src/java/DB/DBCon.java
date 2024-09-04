package DB; 
import java.sql.*; 
public class DBCon 
{ 
public Connection con; 
public Statement stmt; 
public PreparedStatement pstmt; 
public ResultSet rst; 
public DBCon() 
{ 
try 
{ 
Class.forName("com.mysql.cj.jdbc.Driver"); 
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/office_manager","root","root"); 
    System.out.println("Connection is : "+con);
} 
catch(Exception e) 
{ 
e.printStackTrace(); 
} 
} 

//    public static void main(String[] args) {
//        new DBCon();
//    }
}