<%-- 
    Document   : nav
    Created on : 3-mag-2017, 15.52.54
    Author     : emanuelfois
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav>
    <ol>
        <li <c:if test="${page=='descrizione'}">class="active"</c:if>><a href="descrizione.jsp">Descrizione</a></li> 
        <li <c:if test="${page=='login'}">class="active"</c:if>><a href="Login">Login</a></li>
        <li <c:if test="${page=='bacheca'}">class="active"</c:if>><a href="Bacheca">Bacheca</a></li>
        <li <c:if test="${page=='profilo'}">class="active"</c:if>><a href="profilo.html">Profilo</a></li>
    </ol>
</nav>