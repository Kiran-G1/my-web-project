    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <%@page import="java.sql.*"%>
    <%@page import="javax.servlet.http.Cookie" %>
    
    <html>
        
        <head>
            <script>
                function validate(){
                    var uname = document.form1.uname.value;
                    var pass = document.form1.pass.value;
                    if(uname=="" || uname==null || pass=="" || pass==null){
                       alert("Username or password can't  be empty");
                       return false;
                    }
                }
           
            </script>
<script language="JavaScript">
    function forward()
   {window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>
        
                 <title>Registration</title>
                 <style>
                     #form{
                       background-color:grey;
                       opacity:0.9;
                       position:absolute;
                       top:150px;
                       left:500px;
                       padding-left:50px;
                       padding-right: 50px;
                       padding-top:50px;
                       padding-bottom:50px;
                       
                         
                     }
                body{
                     background-image:url("hai/login.jpg");
                     background-repeat:1;
            }
            
            button{
                background-color:#29a32d;
                color: white;
                padding: 10px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 30%;
            }
            a{
                background-color:#29a32d;
                color: white;
                padding: 10px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 30%;
            }

        
            
            </style>

        
         </head>
    
    <body onload="forward()">
        
        <div id="form">
        <center><p><font color="black"><h1>Login here</h1></font></p></center>
         <center>
             <form name="form1" action="login.jsp" method="post" onsubmit="validate()">
             
                 <font color="black">&nbsp;UserName:&nbsp&nbsp<input type = "text"  placeholder="Enter username" name = "uname"><br/>
             &nbsp;Password:&nbsp;&nbsp;&nbsp;&nbsp;<input type = "password" placeholder="Enter password" name = "pass"></font>
             <button type="submit">submit </button>
            
               </form>
             <form action="Forgot.jsp" method="post">
                 <button type="submit"> Forgot Password</button>
             </form>
             </br>
         <a href="signup.jsp" > signup</a>
             
                 </div>

    <%
        String name = request.getParameter("uname");
        String pass = request.getParameter("pass");
        boolean status = false;
        
        if(name!=" "  &&  pass!=" "){
            
            try{
                
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String connectionURL = "jdbc:mysql://localhost:3306/prakash";
            String dbUser = "root";
            String dbPWD = "rgukt123";
            Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
            PreparedStatement ps = con.prepareStatement("select * from project where username=? and password=?");
            ps.setString(1, name);
            ps.setString(2, pass);
            
            ResultSet rs = ps.executeQuery();
            status = rs.next(); 
             
        if(status)
        {
            out.println("Welcome "+name+".");
             Cookie ck = new Cookie("name",name);
             response.addCookie(ck);
            HttpSession sessiona = request.getSession();
            sessiona.setAttribute("username", name);
           
                   
           
                    response.sendRedirect("showuser.jsp");
            
        }
      
       
    }
            catch(Exception e){
            }
        }
    %>
  
        </center>
    </body>
</html>