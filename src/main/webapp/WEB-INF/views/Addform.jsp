<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Form</title>
<style>
form label{
display: inline-block;
width: 100px;
font-weight: bold;
}
</style>
</head>
<body>
<h2>Add A New Item</h2>

<form action="getItem">

<label for="name">Name</label><input name="name" type="text" required="required"><br/> 

<label for="description">Description</label><input name="description" type= "text"><br/>

<label for="qty">Quantity</label><input name="qty" type= "number" min="0" max="9999" step="1" required="required"><br/>

<label for="price">Price</label><input name="price" type="number" min="0" max="9999" step="0.01" size="4" required="required"><br/>
<br />
<input type="submit" value="Add Item">
</form>

	<a href="javascript:history.go(-1)"><button>Cancel</button></a>


</body>
</html>