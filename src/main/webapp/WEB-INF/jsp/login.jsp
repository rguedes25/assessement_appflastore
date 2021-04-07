<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AT Fla Store - Rodrigo Guedes</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
		<h2>Fla Store</h2>
		
		<c:if test="${not empty mensagem}">
		<div class="alert alert-warning">
		  <strong>Ocorreu o seguinte erro:</strong> ${mensagem}
		</div>
		</c:if>

		<form action="/usuario/login" method="post">


			<div class="form-group">
			<label>Informe o Email</label> 
			<input type="text" name="email" class="form-control">
			</div>
			
			<div class="form-group">
			<label>Informe a senha</label> 
			<input type="password" name="senha" class="form-control">
			</div>
			

			<button type="submit" class="btn btn-default">Acessar</button>

		</form>
		
		</form>
		<form action="/usuario">
		<button type="submit" class="btn btn-default">Novo Usuário</button>
		</form>
		
	</div>

</body>
</html>