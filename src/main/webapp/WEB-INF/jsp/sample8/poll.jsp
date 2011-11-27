<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" href="<c:url value="/css/jtechlog.css" />" type="text/css"/>
        <title>Szavazás</title>
    </head>
        <body>
                <form method="post">
                    <input type="hidden" name="org.apache.struts.taglib.html.TOKEN" value="${sessionScope['org.apache.struts.action.TOKEN']}"/>
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
    </body>
</html>
