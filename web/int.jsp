<%-- 
    Document   : int
    Created on : 23 Nov, 2017, 3:06:57 AM
    Author     : kiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="JavaScript">
    function forward()
   {window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>
    </head>
    <body onload="forward()">
        <h1>Hello World!</h1>
        
        <%
            HttpSession sessiona=request.getSession();
            sessiona.removeAttribute("username");
            session.invalidate();
            
            response.sendRedirect("login.jsp");
            
            %>
    </body>
</html>
