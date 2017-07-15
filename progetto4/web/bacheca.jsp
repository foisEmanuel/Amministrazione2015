<%-- 
    Document   : bacheca
    Created on : 3-mag-2017, 16.00.53
    Author     : emanuelfois
--%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>

<html>
     <head>
     <title>Post</title>
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
        <c:set var="title" value="Bacheca Personale" scope="request"/>
        <jsp:include page="header.jsp"/>

        <!--Barra di navigazione tra le pagine del sito-->
        <c:set var="page" value="bacheca" scope="request"/>
        <jsp:include page="nav.jsp"/>
        
            
         
        </div>
         <!--Contenuti della pagina-->
         <div class="contenitore">
        
        <div class="colonna1"><!-- colonna 1-->
            <h3 class="colonna1">Persone</h3>
            <p class="colonna1"><span>Pinco Pallino</span></p><br/>
            <p class="colonna1"><span>Ricciardo Rossi</span></p><br/>
            <p class="colonna1"><span>Va Lentino</span></p><br/>
            <h3 class="colonna1">Gruppi</h3>
            <p class="gruppo1"><span>Calciatori</span></p><br/>
           
            
        </div>
            
            <div class="muro">
                  </div>
            <div class="post">
                
                    
                 <img src="${utenteregistrato.urlFotoProfilo}" alt="foto autore"><br/>
                 <p>
                 <strong>Nome:</strong> 
                    ${utenteregistrato.nome}
                 </p>
                 <p>
                 <strong>Email:</strong> 
                    ${utenteregistrato.email}
                 </p>
                 <p>
                  <strong>Cognome:</strong> 
                    ${utenteregistrato.cognome}
                 </p>
                 
                 <c:if test="${empty param.user}">
                    <p id="logOutLink"><a href="Login?logout=1">Logout</a></p>
                </c:if>
                 
                
            </div>
                
            <div class="post">
                 <c:forEach var="post" items="${posts}">
                    <div class="post">
                        <c:if test="${post.postType == 'TEXT'}">
                            <p>${post.content}</p>
                        </c:if>
                        <c:if test="${post.postType == 'IMAGE'}">
                            <img alt="Post con foto" src="${post.content}">
                        </c:if>
                    </div>
                </c:forEach>
            </div>
        
         </div>
         
        
                <footer>
       <p class="footer"> Numero di telefono:3434343434            Email: NerdBook@credici.com          NerdBook2017</p>
                </footer>
        
                       
     </body>
 </html>