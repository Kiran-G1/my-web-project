

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class Prakash extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String a,b,d;
        int c;
        try{
            Cookie cks[] = request.getCookies();   
           
             String itemname =cks[0].getValue();
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String connectionURL = "jdbc:mysql://localhost:3306/prakash";
            String dbUser = "root";
            String dbPWD = "rgukt123";
            Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
            PreparedStatement ps = con.prepareStatement("select * from track where username=?");
            ps.setString(1, itemname);
            
            out.println("<html><body><p align='center'><table border='2' cellpadding='10'>");
            out.println("<tr><th>Username</th><th>Item</th><th>Quantity</th><th>Address</th></tr>");
            ResultSet rs = ps.executeQuery();
            out.println(itemname);
            while(rs.next()){
                a = rs.getString("username");
                b = rs.getString("item");
                c = rs.getInt("quantity");
                d = rs.getString("address");
                //out.println(a+b+c+d);
                out.println("<tr><td>"+a+"</td>"+"<td>"+b+"</td>"+"<td>"+c+"</td>"+"<td>"+d+"</td></tr>");
                
            }
            out.println("</table></p></body></html>");
        }
        catch(Exception e){
            out.println(e);
        }
       
    }


}
