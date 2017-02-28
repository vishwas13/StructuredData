<%@page import="fr.epita.structuredData.services.XmlTemplateService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="js/submit.js"></script>

<link rel="stylesheet" type="text/css" href="css/styles.css">

<title>Dynamic Form Example</title>
</head>
<body>
<div class="header" ><h1>New Identity Creation</h1></div>

<div class="container">
<h1>New Identity</h1>
<p>Thanks to this action, you can create a brand new identity.</p>
<div id="messageContent" style=""></div>
<%= new XmlTemplateService().convertXmlTemplateToHtmlString() %>


</div>



</body>
</html>