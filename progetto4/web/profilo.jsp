<%-- 
    Document   : profilo
    Created on : 18-lug-2017, 19.22.29
    Author     : emanuelfois
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
         <title>Profilo</title>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <meta name="author" content="Emanuel Fois">
         <meta name="keywords" content="trova il tuo nerd,giochi,studio">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <!-- inseriamo il link al nostro foglio di stile -->
        <link href="style.css" rel="stylesheet" type="text/css">
   
    </head>
    
     <body> 
        <div class="separatore">
            
                <!--header contenente in titolo della pagina-->
        <c:set var="title" value="Profilo Personale" scope="request"/>
        <jsp:include page="header.jsp"/>
        <!--Barra di navigazione tra le pagine del sito-->
        <c:set var="page" value="profilo" scope="request"/>
        <jsp:include page="nav.jsp"/>
        
        
         
         
        </div>
        
        <div class="contenitore">
        
        <div class="colonna1"><!-- colonna 1-->
            <h3 class="colonna1">Persone</h3>
            <p class="colonna1"><span>Pinco Pallino</span></p><br/>
            <p class="colonna1"><span>Ricciardo Rossi</span></p><br/>
            <p class="colonna1"><span>Va Lentino</span></p><br/>
            <h3 class="colonna1">Gruppi</h3>
            <p class="gruppo1"><span>Calciatori</span></p><br/>
            
            
        </div>
            
        <div class="form">
              
 <c:if test="${empty param.user}">
                    <p id="logOutLink"><a href="Login?logout=1">Logout</a></p>
                </c:if>
         
            <h3 class="form"><span>Profilo</span></h3>
            
            
        <form method="post" action="esegui.php">
            
            <label for="nome">Nome</label>
            <input name=nome id="nome" type="text" placeholder="nome"><br><br/>
      
            <label for="cognome">Cognome</label>
            <input  name=cognome id="cognome" type="text" placeholder="cognome"><br><br/>
      
           <!-- <label for="immagine">Immagine</label>
            <input type="file" id="immagine" name="immagine" ><br><br/> -->
      
            <label for="data">Nato il</label>
            <input  type="date" name="data" id="data"  ><br><br/>
            
             <label for="frase">Frase di presentazione</label>
             <textarea name=frase id="frase"></textarea><br><br/>
      
            <label for="password">Password</label>
            <input  name=password id="password" type="password" placeholder="oscurato" required><br><br/>
      
            <label for="confermaPassword">Conferma Password</label>
            <input  name=confermaPassword id="confermaPassword" type="password" placeholder="oscurato" required ><br><br/>
            
            <button class="submit" type="submit">Aggiorna</button>
            
</form>
        </div>
        </div>
        
                <footer>
       <p class="footer"> Numero di telefono:3434343434            Email: NerdBook@credici.com          NerdBook2017</p>
                </footer>
        
    </body>
</html>
 