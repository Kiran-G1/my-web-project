<%@page import="java.sql.*"%>
<html>
    <head>

      <style>
          
          #form{
              
                       background-color:grey;
                       opacity:0.9;
                       position:absolute;
                       top:200px;
                       left:500px;
                       padding-left:50px;
                       padding-right: 50px;
                       padding-top:50px;
                       padding-bottom:50px;
          }
          #prak{
               background-color:#29a32d;
                color: white;
                padding: 13px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 30%;
          }
             body{
                     background-image:url("hai/login.jpg");
                     background-repeat:1;
            }
          </style>
    </head>
    <body>
        <div id="form">
        <form  action="Forgot.jsp" method="post">
            
            <input type="text" name="uname" placeholder="Enter username" required><br/><br/>
            <input type="text" name="bname" placeholder="Enter your best friend name " required><br/>
            <input type="submit" value="submit" id="prak">
        </form>
        </div>
        <%
           String uname = request.getParameter("uname");
           String bname = request.getParameter("bname");
           if(uname!=" "  &&  bname!=" "){
            
            try{
                
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String connectionURL = "jdbc:mysql://localhost:3306/prakash";
            String dbUser = "root";
            String dbPWD = "rgukt123";
            Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
            PreparedStatement ps = con.prepareStatement("select password from project where username=? and question=?");
            ps.setString(1, uname);
            ps.setString(2, bname);
            
            ResultSet rs = ps.executeQuery();
            rs.next();
            String pass = rs.getString("password");
            out.println("<font color='white'><h1 align='center'><i>your password is : "+pass+"</i></h1></font><br/>");
            out.println("<a href='login.jsp' style='text-decoration:none'><font size='20'>click here to login</a></font>");
            }
            catch(Exception e){
                out.println(".");
            }
            }
       
           


        
        %>
    </body>
</html>
            