<%@page import="java.sql.*"%>
  <!DOCTYPE html>
<html>
<head><Title>Full basket</Title>

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
		margin: auto;
		padding: 5px 5px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		border:1px solid #0076a3; border-right:10px;
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
                height: auto;
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



        
</head>

    <body  bgcolor="white">
        <%
            
            if(request.getSession().getAttribute("username")==null)
            {
                response.sendRedirect("login.jsp");
            }
            %>
        
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
      
  <a href="showuser.jsp">Home</a>
 
  <a href="int.jsp">Logout</a>
  
  <a href="cart1.jsp">Cart</a>
  <a href="Track.jsp">Track Order</a>
</div>
<%
        response.setHeader("Cache-Control","no-cache,no-store, must-revalidate");
        
        %>
<!--<marquee><h1><font color="red">Select Shop by Category</font></h1></marquee>
<a href="vegetables.jsp"><img src="hai/2.jpg" style="height:500px; width:1385px;"></a>!-->
<img src="hai/hd.jpg" style="height:600px; width:1900px;">
 
<div class="items">
       <div class="veg">
            <img src="waterbottles/1.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Nalgene</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.80</td></tr>
                    <tr><td><label><strong>Available Quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "nalgenewaterbottle");
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
                         <tr><td><input type="hidden" name="vegitable" value="nalgenewaterbottle" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="80" /></td></tr>
                 <tr>
                      <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
         </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="nalgenewaterbottle" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
              
                  <div class="veg">
            <img src="waterbottles/2.png" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Cello Waterbottle</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.200</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "cellowaterbottle");
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
                         <tr><td><input type="hidden" name="vegitable" value="cellowaterbottle" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="200" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="cellowaterbottle" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                  <div class="veg">
            <img src="waterbottles/3.jpg" alt="" style="height:230px; width:180px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Waterbottle</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.120</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "waterbottle");
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
                         <tr><td><input type="hidden" name="vegitable" value="waterbottle" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="120" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="waterbottle" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                 <div class="veg">
            <img src="kitchen/1.png" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Curry dish</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.200</td></tr>
                    <tr><td><label><strong>Available Quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "currydish");
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
                         <tr><td><input type="hidden" name="vegitable" value="currydish" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="200" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="currydish" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
              
                  <div class="veg">
            <img src="kitchen/10.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Coffee Cups</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.150</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "coffeecups");
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
                         <tr><td><input type="hidden" name="vegitable" value="coffeecups" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="150" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="coffeecups" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
                  <div class="veg">
            <img src="kitchen/11.jpg" alt="" style="height:230px; width:270px;" class="image1"/>
            <div class="details">
                <table><tr><td><label><strong>Name</strong></label></td><td>Multi Pans</td></tr>
                    <tr><td><label><strong>Cost</strong></label></td><td>Rs.400</td></tr>
                    <tr><td><label><strong>Available quantity</strong></label></td><td><%
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        String connectionURL = "jdbc:mysql://localhost:3306/prakash";
                        String dbUser = "root";
                        String dbPWD = "rgukt123";
                        Connection con = DriverManager.getConnection(connectionURL, dbUser, dbPWD);
                        PreparedStatement ps = con.prepareStatement("select quantity from items where name=?");
                    
                        ps.setString(1, "multipans");
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
                         <tr><td><input type="hidden" name="vegitable" value="multipans" /></td></tr>
                         <tr><td><input type="hidden" name="costf" value="400" /></td></tr>
                 <tr>
                     <td><label><strong>Quantity</strong></label></td><td><input type="number" min="0" name="quantity" size="5" required></td>
          </tr><tr><td> <input type="submit" value="Buy" id="prak"/></td></tr></table>
                </form><br/>
                <form action="cart.jsp" method="post">
                    <table>
                        <tr> <td><input type="hidden" name="vegitable" value="multipans" /></td></tr>
                        <tr><td> <input type="submit" value="Add to cart" id="prak1"/></td></tr></table>
                </form>
            </div>
        </div>
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
</div>


</body>

</html>
