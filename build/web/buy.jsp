<%@page import="java.sql.*" %>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
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

        
            
            </style>

 <script>
            function checker()
            {
              
                var c = document.form1.cardno.value;
              
                var cz = /^([0-9]{5})+$/;
                var cvvreg = /^([0-9]{3})+$/;
                var month = document.form1.month.value;
                var year = document.form1.year.value;
                var cvv = document.form1.cvv.value;
       
                if(c.match(cz))
                {
                    if(month>=1 && month<=12)
                    {
                        if(year>=17 && year<=99)
                        {
                            if(cvv.match(cvvreg))
                            {
                                return true;
                            }
                            else
                            {
                                alert("cvv wrong");
                                return false;
                            }
                        }
                        else
                        {
                            alert("enter year properly");
                            return false;
                        }
                    }
                    else
                    {
                        alert("enter month properly(1 to 12)");
                        return false;
                    }
                    
                }
                else
                {
                    alert("cards must be 13 digits")
                    return false;
                }
            }
            </script>

</head>

    <body bgcolor="grey">
        
 <!--Navigation bar code-->  
 
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
        
  <!--Image Slideshow Code-->   
 
  <%
      String quantity = request.getParameter("quantity");
      String veg = request.getParameter("vegitable");
      String cost = request.getParameter("costf");
      
      int consi = Integer.parseInt(cost);
      //out.println(consi);
      int user = Integer.parseInt(quantity);
      int tcost = (consi*user);
    
      try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prakash","root","rgukt123");
          PreparedStatement ps = con.prepareStatement("select Quantity from items where name=?");
          ps.setString(1,veg);
          ResultSet rs = ps.executeQuery();
          rs.next();
          String s =rs.getString("Quantity");
          int database = Integer.parseInt(s);
          
            int result = database - user;
          if(result>=0)
          { 
              Cookie cks[] = request.getCookies();   
            
             PreparedStatement ps1 = con.prepareStatement("update items set Quantity=? where name=?");
             ps1.setInt(1,result);
             ps1.setString(2,veg);
             ps1.executeUpdate();
             
             PreparedStatement ps3 = con.prepareStatement("select address from project where username=?");
             ps3.setString(1,cks[0].getValue());
             ResultSet rs1 = ps3.executeQuery();
             rs1.next();
             String add = rs1.getString("address");
             
             
             
             PreparedStatement ps2 = con.prepareStatement("insert into track values(?,?,?,?,?)");
             ps2.setString(1,cks[0].getValue());
             ps2.setString(2,veg);
             ps2.setInt(3,user);
             ps2.setInt(4,tcost);
             ps2.setString(5,add);
             ps2.executeUpdate();
             /*
             out.println("<form name='form1' action='login.jsp' method='post' onsubmit='validate()'>
                 <font color='black'>"+&nbsp;+"UserName:&nbsp&nbsp<input type = 'text'  placeholder='Enter username' name = 'uname'><br/>
             &nbsp;Password:&nbsp;&nbsp;&nbsp;&nbsp;<input type = 'password' placeholder='Enter password' name = 'pass'></font>
             <button type='submit'>submit </button>
               </form>");*/
           %>
   
    
           <div id="form">
        <center><p><font color="black"><h1>Enter card details</h1></font></p></center>
         <center>
             <form name="form1" action="card.jsp" method="post" onsubmit =" return checker()">
                 
             
                 <font color="black">&nbsp;&nbsp&nbsp<input type = "text"  placeholder="card number" name = "cardno" size="30"><br/>
             &nbsp;&nbsp;&nbsp;Expiry date&nbsp;&nbsp;<input type = "text" placeholder="11/" name = "month" size="1"></font>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "text" placeholder="17/" name = "year" size="1"><input type = "text" placeholder="cvv" name = "cvv" size="1">
              <input type="submit" value="submit">
               </form>
             
                 </div>

 
    <%
             

          }
          else{
              out.println("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><h1 align='center'>Sorry"
                      + " "+database+" items are available.</h1>");
           
          }
      }
      catch(Exception e){
          out.println();
      }
      %>

</body>
</html>