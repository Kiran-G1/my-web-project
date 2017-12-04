
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<html>
    <head>
        
        <title>Registration</title>
        <style>
            #form{
                       background-color:grey;
                       opacity:0.9;
                       position:absolute;
                       top:1px;
                       left:450px;
                       padding-left:120px;
                       padding-right: 120px;
                       padding-top:40px;
                       padding-bottom:40px;
                       
                         
                     }
                     #prak{
                background-color:#29a32d;
                color: white;
                padding: 11px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 40%;
                
            }

                     
                body{
                     background-image:url("hai/login.jpg");
                     background-repeat:1;
            }
            
            </style>
            <script>
                function validate(){
                    var fname = document.form1.fname.value;
                    var lname = document.form1.lname.value;
                    var age = document.form1.age.value;
                    var uname = document.form1.uname.value;
                    var pass = document.form1.pass.value;
                    var cpass= document.form1.fpass.value;
                    var mail =document.form1.mail.value;
                    var address = document.form1.address.value;
                    var phone = document.form1.phone.value;
                    var qst = document.form1.qst.value;
                    var passreg = /^([A-Za-z0-9!@#%&*()_]{6,20})$/;
                    var phonereg = /^([0-9]{10})+$/;
                    var namereg =/^([A-Za-z0-9]{2,20})+$/;
                    var flname = /^[A-Za-z]+$/;
                    var addreg= /^[A-Za-z0-9-,.()]+$/;
                    if(fname.match(flname)){
                            if(lname.match(flname)){
                               if(uname.match(namereg)){
                                if(phone.match(phonereg)){
                                    if(18<age && age<120){
                                  if(address.match(addreg)){
                                        if(pass.match(passreg)){
                                            if(pass.match(cpass)){
                                                if(qst.match(namereg)){
                                                    return true;
                                                }
                                                else{
                                                    alert("Question should not be empty");
                                                    return false;
                                                }
                                            }
                                                else{
                                                    alert("Enter same password");
                                                    return false;
                                                }

                                                }
                                                else{
                                                    alert("Enter valid password");
                                                    return false;
                                                }
                                                    
                                                    
                                                }
                                                else{
                                                        alert("Enter valid address");
                                                        return false;
                                                    }

                                                    }
                                                        else{
                                                        alert("Enter age between 18 and 120");
                                                        return false;
                                                    }
                                                    
                                                        }
                                                        else{
                                                        alert("Enter valid phone number");
                                                        return false;
                                                    }
                                         }  
                                          else{
                                                        alert("Enter valid username");
                                                        return false;
                                                    }
                                                   

                            }
                    
                    else{
                        alert("Enter corect last name");
                        return false;
                }
                    }
                       else{
                        alert("Enter corect first name");
                        return false;
                    }
                }
                
                    
               
            
                </script>
      
    </head>
    
    <body>
     <div id="form">   
    <center><p><font color="black"><h1>Register here</h1></font></p></center>
       
    <form  name="form1" action="signup.jsp" method="post" onsubmit="return validate()"> 
                 
             <font color="green">
             <table>
                 <tr><td> <input type="text" name="fname" placeholder="Enter Firstname"></td></tr>
                 <tr><td><input type="text" name="lname" placeholder="Enter Latname"></td></tr>
                 <tr><td><input type="text" name="age" placeholder="Enter Age"></td></tr>
          <tr><td> <input type="text" name="uname" placeholder="Enter Username"></td></tr>
           <tr><td><input type="password" name="pass" placeholder="Enter Password"></td></tr>
             <tr><td><input type="password" name="fpass" placeholder="Enter Confirmpassword"></td></tr>
           <tr><td> <input type="email" name="mail" placeholder="Enter Emailid"></td></tr>
           <tr><td> <textarea name="address" placeholder="Enter Address" rows="8" cols="28"></textarea></td></tr>
           <tr><td> <input type="text" name="phone" placeholder="Enter Phonenumber"></td></tr>
           <tr><td> <input type="text" name="qst" placeholder="Who is your childhood bestfriend ?" size="25"></td></tr></font>
          <tr><td>   <input type="submit" value="submit" id="prak">
            </form>
          
                  
            <%
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String age = request.getParameter("age");
                String user = request.getParameter("uname");
                String pass = request.getParameter("pass");
                String fpass = request.getParameter("fpass");
                String mail = request.getParameter("mail");
                String add = request.getParameter("address");
                String phone = request.getParameter("phone");
                String question = request.getParameter("qst");
                
                String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                
                Connection con = null;
                
                PreparedStatement ps = null;
                
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                
                int updateQuery = 0;
                
                if(fname!=null && lname!=null && age!=null && user!=null && add!=null &&pass!=null && fpass!=null && mail!=null && phone!=null){
                    
                    if(fname!="" && add!="" && lname!="" && age!="" && user!="" && pass!="" && fpass!="" && mail!="" && phone!=""){
          
                         try{
                             
                                con = DriverManager.getConnection(connectionURL,"root","rgukt123");
                                String query = "insert into project values(?,?,?,?,?,?,?,?,?,?)";
                                ps=con.prepareStatement(query);
                                ps.setString(1,fname);
                                ps.setString(2,lname);
                                ps.setString(3,age);
                                ps.setString(4,user);
                                ps.setString(5,pass);
                                ps.setString(6,fpass);
                                ps.setString(7,mail);
                                ps.setString(8,add);
                                ps.setString(9,phone); 
                                ps.setString(10,question);
                                updateQuery = ps.executeUpdate();    
                                 if(updateQuery > 0){
                                  
                                  response.sendRedirect("login.jsp");
           
                                } 
                }
                            catch(Exception e){
                                 out.println("<h1><font color='white'>Username already existed</font></h1>");
                              }finally{
                                   
                                    ps.close();
                                    con.close();
                                }
                    }
                }
               
                
                
           %>
  
       
         
     </div>
    </body>
</html>