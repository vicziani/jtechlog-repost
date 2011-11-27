<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- Cache-elés letiltása. --%>
<%
response.setHeader("Cache-Control","no-cache"); // HTTP 1.1
response.setHeader("Pragma","no-cache"); // HTTP 1.0
response.setDateHeader ("Expires", -1); // Proxy servernek jelzi a cache tiltását
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" href="css/jtechlog.css" type="text/css"/>
        <title>Szavazás</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${empty param.index}">
                <form method="post">
                    <p>Melyiket részesíted előnyben?</p>
                    <ul>
                        <li><input type="radio" name="index" value="0" checked="true" />Java</li>
                        <li><input type="radio" name="index" value="1" />.NET</li>
                        <li><input type="radio" name="index" value="2" />Egyéb</li>
                    </ul>
                    <p>
                        <input type="submit" name="Submit" value="Elküld" />
                    </p>
                </form>
                
            </c:when>
            <c:otherwise>
                <jsp:useBean id="result" scope="application"
                             class="jtechlog.repost.PollResult" />
                <%
                    result.vote(Integer.parseInt(request.getParameter("index")));
                %>
                <p>Eddigi szavazatok: ${result.total}</p>
                <ul>
                    <li>Java: ${result.votes[0]}</li>
                    <li>.NET: ${result.votes[1]}</li>
                    <li>Egyéb: ${result.votes[2]}</li>
                </ul>
            </c:otherwise>
        </c:choose>
    </body>
</html>
