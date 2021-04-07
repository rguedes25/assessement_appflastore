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
		<h2>Cadastramento de cliente</h2>


		<c:if test="${not empty mensagem}">
		<div class="alert alert-warning">
		  <strong>Ocorreu o seguinte erro:</strong> ${mensagem}
		</div>
		</c:if>


		<form action="/cliente/incluir" method="post">

			<div class="form-group">
			<label>Nome</label> 
			<input type="text" name="nome" class="form-control">
			</div>
			
			<div class="form-group">
			<label>email</label> 
			<input type="email" name="email" class="form-control">
			</div>
			
			<div class="form-group">
			<label>Endereço</label> 
			<input type="text" name="endereco" class="form-control">
			</div>

			<button type="submit" class="btn btn-default">Salvar</button>

		</form>
		
		<form action="/home">
					   		<button type="submit" class="btn btn-default">Home</button>
		</form>

		<c:if test="${not empty lista}">
		<h2>Clientes</h2>
		<p></p>
		
		<table class="table table-striped">
		
			<thead>
				<tr>
					<th>Nome</th>
					<th>Email</th>
					<th>Endereço</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="c" items="${lista}">
				<tr>
					<td>${c.nome}</td>
					<td>${c.email}</td>
					<td>${c.endereco}</td>
					<td><a href="/cliente/${c.id}/excluir">excluir</a></td>
				</tr>
				</c:forEach>
			</tbody>
			
		</table>
		
		</c:if>
		
		<c:if test="${empty lista}">
		<p>Nenhum cliente cadastrado!!!</p>
		</c:if>


	</div>

</body>
</html>