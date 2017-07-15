
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
        <title>Login</title>
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
         
         <div class="separatore">
                
                 <!--   <header id="header">
                        <h1><span>NerdBook<sup>TM</sup></span></h1>
                    </header> -->
            
             
         </div>
     
        <div class="login">
            <h3 class="login">Accedi a NerdBook</h3>
             <c:if test="${invalidData == true}">
                    <div id="invalidDataWarning">I dati inseriti non sono corretti</div>
                </c:if>
            <form action="Login" method="post">
                
                <label class="l" for="username">Username </label><br/>
                <input class="l" type="text" name="username" id="username" placeholder="username" required/><br/>
           
                <label class="l" for="password">Password</label><br/>
                <input class="l" type="password" id="password" name="password" placeholder="oscurato" required/><br/>
            
                <br/><button class="submit" type="submit">Accedi</button> <!-- creazione del pulsante Login -->
            </form>
            
        </div>
       
        
                <footer>
       <p class="footer"> Numero di telefono:3434343434            Email: NerdBook@credici.com          NerdBook2017</p>
                </footer>
        
            
    </body>
</html>

