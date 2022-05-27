<%-- 
    Document   : login
    Created on : May 19, 2022, 1:37:39 PM
    Author     : THAI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Input your Information</h1>
        <form action="MainController" method="POST">
            User ID <input type="text" name="userID" required="" placeholder="input userid"/></br>
            Password <input type="password" name="password" required="" placeholder="password"/></br>
            <input type="submit" name="action" value="Login"/>
        </form>
            
    </body>
</html>
