<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Coffee Shop</title>
</head>
<body>

	<h1>Coffee Shop List</h1>
	<table border="3">
		<thead>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Quantity</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
	
		<c:forEach var="p" items ="${hot}">
			<tr>
				<td>${p.name}</td>
				<td>${p.description}</td>
				<td>${p.quantity }</td>
				<td>$${p.price }</td>
				<td><a href="update?id=${p.id}"><button>Edit</button></a></td>
				<td><a href="delete?id=${p.id}"><button>Delete</button></a></td>


			</tr>
		</c:forEach>
	</table>
	
	<br>
	<a href="Addform"><button>Add Item</button></a>
	

</body>
</html>