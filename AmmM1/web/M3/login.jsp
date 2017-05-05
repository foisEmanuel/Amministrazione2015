<%-- 
    Document   : login
    Created on : 3-mag-2017, 15.42.53
    Author     : emanuelfois
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <c:set var="title" value="Login" scope="request"/>
    <head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Emanuel Fois">
        <meta name="keywords" content="trova il tuo nerd,giochi,studio">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- inseriamo il link al nostro foglio di stile -->
        <link href="style.css" rel="stylesheet" type="text/css">
   
    </head>
    
     <body>
        
        <jsp:include page="header.jsp"/>
        
        <div id="divBody">
            <div id="formLogin">
                
                <c:if test="${invalidData == true}">
                    <div id="invalidDataWarning">I dati inseriti non sono corretti</div>
                </c:if>
                
                <form action="Login" method="post">
                    <div>
                        <label for="userName">UserName</label>
                        <input type="text" name="username" id="userName">
                    </div>
                    <div>
                        <label for="userPass">Password</label>
                        <input type="password" name="password" id="userPass">
                    </div>
                    <button type="submit">Invia</button>
                </form>
            </div>
        </div>
        
    </body>
</html>