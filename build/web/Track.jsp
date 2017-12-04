
  <%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head><Title>Full basket</Title>


<style>
                     
              
            .image1{
                border-radius: 30%;
            }
            #prak{
               
                background-color:#29a32d;
                color: white;
                padding: 5px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%; 
            }
            #prak1{
                
                background-color:#29a32d;
                color: white;
                padding: 5px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }
            
            </style>
<!-- image slide show using javascript-->
	
<style type="text/css">
    button{
                background-color:#29a32d;
                color: white;
                padding: 10px 20px;
                margin: 10px 0;
                border: none;
                cursor: pointer;
                width:100%;
            }
           

        #search{
            right:500px;
            top:700px;
        }
		.tftextinput{
		margin: 0;
		padding: 5px 5px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		border:1px solid #0076a3; border-right:10px;
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
	}
        .tfbutton {
	
		padding: 5px 15px;
		font-size:14px;
		color: #ffffff;
		border: solid 1px #0076a3; 
                border-right:10px;
		background: #0095cd;
		
	
	}
	.tfbutton:hover {
		text-decoration: none;
		background: #007ead;
		
	}
	/* Fixes submit button height problem in Firefox */
	.tfbutton::-moz-focus-inner {
	  border: 0;
	}
	

</style>
<style>
.dropdown {
    position: absolute;
    display: inline-block
    
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: grey;
    width: 140px;
    padding: 12px 16px;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>

<style>
   
.dropdown {
    position: absolute;
    display: inline-block;
    
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #333;
    width: 150px;
         z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}
.subveg{
    display: none;
    position: absolute;
    left:150px;
    background-color: #333;
    width: 150px;
         z-index: 1;
}

.veg:hover .subveg {
    display: block;
}

.type{
    display: none;
    position: absolute;
    left:150px;
    background-color: #333;
    width: 150px;
 
         z-index: 1;
}

.green:hover .type {
    display: block;
}
.type1{
    display: none;
    position: absolute;
    left:150px;
    background-color: #333;
    width: 150px;
 
         z-index: 1;
}

.green1:hover .type1 {
    display: block;
}

.type2{
    display: none;
    position: absolute;
    left:150px;
    background-color: #333;
    width: 150px;
 
         z-index: 1;
}

.green2:hover .type2 {
    display: block;
}

.type3{
    display: none;
    position: absolute;
    left:150px;
    background-color: #333;
    width: 150px;
 
         z-index: 1;
}

.green3:hover .type3 {
    display: block;
}
.subgro{
    display: none;
    position: absolute;
    left:150px;
    background-color: #333;
    width: 150px;
 
         z-index: 1;
}

.gro:hover .subgro {
    display: block;
}
.subgro1{
    display: none;
    position: absolute;
    left:150px;
    background-color: #333;
    width: 150px;
 
         z-index: 1;
}

.gro1:hover .subgro1 {
    display: block;
}

.subfru{
    display: none;
    position: absolute;
    left:150px;
    background-color: #333;
    width: 150px;
  
         z-index: 1;
}

.fru:hover .subfru {
    display: block;
}



</style>
<style>
body {margin:0;}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: right;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 20px 22px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
    background-color: #4CAF50;
    color: white;
}
</style>
<style>
     #cookie{
        background-color: #333;
        right:10px;
        top:10px;
        position:absolute;
         font-size: 25px;
    }
    #fonts{
        color: white;
    }
body {margin:0;}

.veg{
    float:left;
    margin:10px;
    padding:5px;
    color:black;
}
.veg img{
    border-radius: 0;
}
.details{
    display:none;   
    text-align:center;
}
.veg:hover .details{
    display:block;
}
.veg form{
    float:left;
}
#col{
    background-color: #4CAF50;
}
</style>
</head>

    <body>
        
            <div id="cookie">
    <%
        Cookie cks[] = request.getCookies();
        %>
        <div id="fonts">
            <%
        out.println("Welcome" +"  "+ cks[0].getValue());
        %>
        </div>
    </div>
        
        
<!--Navigation Bar Code-->        
<div class="topnav">
    <center>
    <form  action="Searchbar.jsp" method="post" class="tfheader">
                    
        <label style="font-size: 50px;color: skyblue;"><i>FullBasket</i></label>
        
   <img src="hai/imageedit_1_3963367566.png" height="70" width="70"/>
                        
   <input type="text" placeholder ="vankayalu kakara boost dairymilk-silk dhanimma" class="tftextinput" size="80" maxlength="120" id="search" name="dairy"><input type="submit" value="search" class="tfbutton">
   </form>
       
  
        
  <a href="showuser.jsp">Home</a>
  <a href="index.html">Sign out</a>
  <a href="cart1.jsp">Cart</a>
  
</div>
<a href="javascript:history.back(1)" id ="link" align="left">back</a>  
<%
 String a,b,d;
        int c,e;
        try{
            Cookie ck[] = request.getCookies();   
            String itemname =cks[0].getValue();
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String connectionURL = "jdbc:mysql://localhost:3306/prakash";
            String dbUser = "root";
            String dbPWD = "rgukt123";
            Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
            PreparedStatement ps = con.prepareStatement("select * from track where username=?");
            ps.setString(1, itemname);
            out.println("<h1 align='center'><i>Your track details</i></h1>");
            out.println("<html><body bgcolor='grey'><center><table border='3' cellpadding='12' cellspacing='1'>");
            out.println("<p align='center'><tr><th>Username</th><th>Item</th><th>Quantity</th><th>Cost</th><th>Address</th></tr>");
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                a = rs.getString("username");
                b = rs.getString("item");
                c = rs.getInt("quantity");
                e = rs.getInt("cost");
                d = rs.getString("address");
                //out.println(a+b+c+d);
                out.println("<tr><td>"+a+"</td>"+"<td>"+b+"</td>"+"<td>"+c+"</td>"+"<td>"+e+"</td>"+"<td>"+d+"</td></tr>");
                
            }
            out.println("</p></table></body></html>");
        }
        catch(Exception ex)
        {
        out.println(ex);
        }
%>
 
 

  

</body>
</html>