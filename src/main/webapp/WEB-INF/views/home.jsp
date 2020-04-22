<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Contact Listing</title>
		<style>
			.listing {
				padding-left: 30px;
				padding-top: 20px;
			}
			.record {    
				font-family: "Open Sans",sans-serif;
				color: #333;
				text-rendering: optimizeLegibility;
				line-height: 1.5;
				-webkit-font-smoothing: antialiased;
			}
			.heading {    
				font-family: "Open Sans",sans-serif;
				font-weight:300;
				font-size:2rem;
				margin-bottom:2rem;
				color: #333;
				text-rendering: optimizeLegibility;
				line-height: 1.5;
				-webkit-font-smoothing: antialiased;
			}
			
		</style>
    </head>
    <body>
    	<div class="listing">
			<div class="heading">Mental Health Providers</div>
			<c:forEach var="contact" items="${listContact}" varStatus="status">
			<div class="record">
				<div><b>${contact.name}</b></div>
				<div>${contact.address}</div>
				<div>${contact.city}, ${contact.state} ${contact.zip}</div>
				<div>Phone: ${contact.telephone}</div>
				<c:if test="${not empty contact.emergency}">
				<div>Emergency: ${contact.emergency}</div>
				</c:if>
				<c:if test="${not empty contact.email}">
				<div>Email: <a href="mailto:${contact.email}">${contact.email}</a></div>
				</c:if>
				<c:if test="${not empty contact.website}">
				<div>Website: <a href="${contact.website}">${contact.website}</a></div>
				</c:if>
			</div>
			<br/>
			<br/>
			</c:forEach>	        	
    	</div>
    </body>
</html>
