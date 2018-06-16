<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Save Customer</title>			
		<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/resources/css/style.css"/>
		<link type="text/css"
			  rel="stylesheet"
			  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>		
		</div>
		
		<div id="container">
			<h3>Save Customer</h3>
		
			<form:form action="saveCustomer" modelAttribute="customer" method="POST">
				
				<!-- add customer id for update -->
				<form:hidden path="id"/>
			
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><form:input path="firstName" /><td>
					</tr>
					<tr>
						<td><label>Last Name:</label></td>
						<td><form:input path="lastName" /><td>
					</tr>
					<tr>
						<td><label>Your Email:</label></td>
						<td><form:input path="email" /><td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class ="save"/></td>
					</tr>
					<p>
						<a href="${pageContext.request.contextPath}/customer/list">Back To The List</a>
					</p>
				</tbody>
			</form:form>
		</div>
	</body>
</html>






