<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AT</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>

<body>


		<c:if test="${not empty usermsg}">
		<div class="alert alert-warning">
		  <strong>Ocorreu o seguinte erro:</strong> ${usermsg}
		</div>
		</c:if>

		<div class="container">
		<h2>Cadastrar novo usuário</h2>

		<form action="/usuario/incluir" method="post">


			<div class="form-group">
			<label>Nome</label> 
			<input type="text" name="nome" class="form-control">
			</div>
			
			<div class="form-group">
			<label>Email</label> 
			<input type="email" name="email" class="form-control">
			</div>

			<div class="form-group">
			<label>Senha</label> 
			<input type="password" name="senha" class="form-control">
			</div>
		
			<button type="submit" class="btn btn-default">Salvar</button>

		</form>
		
		<form action="/">
			<button type="submit" class="btn btn-default">Ir para tela de login</button>
		</form>
		
				<table class="table table-striped">
		
			<thead>
				<tr>
					<th>Nome</th>
					<th>Email</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="u" items="${lista}">
				<tr>
					<td>${u.nome}</td>
					<td>${u.email}</td>
					<td><a href="/usuario/${u.id}/excluir">excluir</a></td>
				</tr>
				</c:forEach>
			</tbody>

</body>
</html>