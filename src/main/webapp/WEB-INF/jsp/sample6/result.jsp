<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%
response.setHeader("Cache-Control","no-cache"); // HTTP 1.1
response.setHeader("Pragma","no-cache"); // HTTP 1.0
response.setDateHeader("Expires", -1); // Proxy servernek jelzi a cache tiltását
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="<c:url value="/css/jtechlog.css" />" type="text/css"/>
        <title>Eredmény</title>
    </head>
    <body>
        <p>Eddigi szavazatok: ${result.total}</p>
        <ul>
            <li>Java: ${result.votes[0]}</li>
            <li>.NET: ${result.votes[1]}</li>
            <li>Egyéb: ${result.votes[2]}</li>
        </ul>
    </body>
</html>
