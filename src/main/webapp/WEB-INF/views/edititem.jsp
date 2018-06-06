<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Form</title>
<style>
form label{
display: inline-block;
width: 100px;
font-weight: bold;
}
</style>
</head>
<body>
<h1>Edit Selected Item</h1>

<form action="updateItem">

<label for="name">Name</label><input name="name" type="text" required="required" value="${item.name }"><br/> 

<label for="description">Description</label><input name="description" type= "text" value="${item.description }"><br/>

<label for="qty">Quantity</label><input name="qty" type= "number" min="0" max="9999" step="1" required="required" value="${item.quantity }"><br/>

<label for="price">Price</label><input name="price" type="number" min="0" max="9999" step="0.01" size="4" required="required" value = "${item.price }"><br/>

<input type="hidden" name= "id" value ="${item.id}">
<input type="submit" value="Edit Item">
</form>
	<a href="javascript:history.go(-1)"><button>Cancel</button></a>


</body>
</html>