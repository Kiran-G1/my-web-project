
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head><Title>Full basket</Title>

<%
             response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
            if(request.getSession().getAttribute("username")==null)
            {
                response.sendRedirect("login.jsp");
            }
            %>

<style>
                     
              
            .image1{
                border-radius: 30%;
            }
            #prak{
                background-color:red;
    height:30px;
    width:80px;
    color:white;
    font-size:15px;
    margin-left:50px;
    
            }
            #prak1{
                
                background-color:red;
                color: white;
                padding: 5px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                margin-right: 10px;
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
veg{
    
    float:left;
    padding:40px;
    margin-left:50px;
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
    #clas{
        align:right;    
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
.items{
    
    position: absolute;
    border:0px solid red;
    margin-left:100px; 
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
       
    </center>
     <div class="dropdown">
         
        <button >Shop by Category</button>
        
        <div class="dropdown-content">
            
            <div class="veg">   
        <a href="vegetables.jsp">Vegetables</a><br/>
        <div class="subveg">
       
         <a href="greenleafy.jsp">Green Leafy</a>
         
         
         <a href="chopped.jsp">Chopped</a>
        
        </div>
            </div>
            
            <div class="gro">
        <a href="household.jsp">Household</a>
        <div class="subgro">
         <a href="deter.jsp">Detergents</a>
         <a href="kitchen.jsp">Kitchen & Dining</a>
         <a href="bottle.jsp">Water Bottles</a>
         <a href="furniture.jsp">Furniture</a>
        </div>
            </div>
            
         
        <a href="fruits.jsp">Fruits</a>
       
   
        </div>
        
        </div>
        

        
  <a href="chopped.jsp">Home</a>
  <a href="int.jsp">Sign out</a>
  <a href="cart1.jsp">Cart</a>
  <a href="Track.jsp">Track Order</a>
</div>    
<a href="javascript:history.back(1)" id ="link" align="left">back</a>  
 
<div class="items">
       <div class="veg">
            <img src="fruits/1.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Apple(Dozen)</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.300</td></tr>
                    <tr><td><label><strong>Available Quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "apple");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %>
                        </td></table>
                <form name="my" action="buy.jsp" method="post" >
                     <table>
                         <tr><td><input type="hidden" name="vegitable" value="apple" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="300" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="apple" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
              
                  <div class="veg">
            <img src="fruits/2.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Coconut(Dozen)</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.150</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "coconut");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
               <form name="my" action="buy.jsp" method="post" >
                      <table>
                         <tr><td><input type="hidden" name="vegitable" value="coconut" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="150" /></td></tr>
                 <tr>
                      <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
         </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="coconut" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                  <div class="veg">
            <img src="fruits/3.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Black Grapes(kilo)</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.120</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "blackgrapes");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
               <form name="my" action="buy.jsp" method="post" >
                      <table>
                         <tr><td><input type="hidden" name="vegitable" value="blackgrapes" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="120" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="blackgrapes" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                  <div class="veg">
            <img src="fruits/4.png" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Orange(4 set)</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.75</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "orange");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
                <form name="my" action="buy.jsp" method="post" >
                     <table>
                         <tr><td><input type="hidden" name="vegitable" value="orange" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="75" /></td></tr>
                 <tr>
                      <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
         </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="orange" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                  <div class="veg">
            <img src="fruits/5.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Papaya</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.100/kg</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "papaya");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
                <form name="my" action="buy.jsp" method="post" >
                     <table>
                         <tr><td><input type="hidden" name="vegitable" value="papaya" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="100" /></td></tr>
                 <tr>
                      <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
         </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="papaya" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
              
                  <div class="veg">
            <img src="fruits/6.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Pomegranate</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.100/kg</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "pomagranate");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
                <form name="my" action="buy.jsp" method="post" >
                     <table>
                         <tr><td><input type="hidden" name="vegitable" value="pomagranate" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="100" /></td></tr>
                 <tr>
                      <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
         </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="pomagranate" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                 <div class="veg">
            <img src="Fruits/banana.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Banana(dozen)</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.50</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "banana");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
               <form name="my" action="buy.jsp" method="post" >
                      <table>
                         <tr><td><input type="hidden" name="vegitable" value="banana" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="50" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="banana" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                 <div class="veg">
            <img src="fruits/8.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Cherry</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.100/kg</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "cherry");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
                <form name="my" action="buy.jsp" method="post" >
                     <table>
                         <tr><td><input type="hidden" name="vegitable" value="cherry" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="100" /></td></tr>
                 <tr>
                      <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
         </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="cherry" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                 <div class="veg">
            <img src="fruits/9.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Jamapandu</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.50/kg</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "jama");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
               <form name="my" action="buy.jsp" method="post" >
                      <table>
                         <tr><td><input type="hidden" name="vegitable" value="jama" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="50" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="jama" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                <div class="veg">
            <img src="Fruits/Date.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Date</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.100/kg</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "datefruit");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
                <form name="my" action="buy.jsp" method="post" >
                     <table>
                         <tr><td><input type="hidden" name="vegitable" value="datefruit" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="100" /></td></tr>
                 <tr>
                    <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
           </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="datefruit" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                 <div class="veg">
            <img src="Fruits/Grapes.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Grapes</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.120/kg</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "grapes");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
                <form name="my" action="buy.jsp" method="post" >
                     <table>
                         <tr><td><input type="hidden" name="vegitable" value="grapes" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="120" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="grapes" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                    <div class="veg">
            <img src="Fruits/Raisins.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Dryfruits</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.200/kg</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "dryfruits");
                        ResultSet r=ps.executeQuery();
                        r.next();
                        out.print(r.getString("quantity"));
                    }
                    catch(Exception e){
                        out.print(e);
                    }
                    %></td></tr></table>
                <form name="my" action="buy.jsp" method="post" >
                     <table>
                         <tr><td><input type="hidden" name="vegitable" value="dryfruits" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="200" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="dryfruits" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
</div>
           
    
    

</body>
</html>

