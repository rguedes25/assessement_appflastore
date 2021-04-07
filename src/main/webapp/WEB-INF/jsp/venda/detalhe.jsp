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
		<h2>Cadastramento de vendas</h2>

		<form action="/venda/incluir" method="post">


			<div class="form-group">
			<label>Produto</label> 
			<input type="text" name="produto" class="form-control">
			</div>
			
			<div class="form-group">
			<label>Tamanho</label> 
			<input type="text" name="tamanho" class="form-control">
			</div>

			<div class="form-group">
			<label>Descrição</label> 
			<input type="text" name="descricao" class="form-control">
			</div>
			
			<div class="form-group">
			<label>Informe o cliente</label>
			<select class="form-control" name="cliente.id">
			<c:forEach var="c" items="${clientes}">
				<option value="${c.id}">${c.nome}</option>
			</c:forEach>
			</select>
			</div>
			

			<button type="submit" class="btn btn-default">Salvar</button>

		</form>
		
		<form action="/home">
		<button type="submit" class="btn btn-default">Home</button>
		</form>

		<c:if test="${not empty lista}">
		<h2>Vendas</h2>
		<p></p>
		<table class="table table-striped">
			<thead>
				<tr>	
					<th>Produto</th>
					<th>Tamanho</th>
					<th>Descrição</th>
					<th>Cliente</th>
					<th></th>
				</tr>
			</thead>
			
			<tbody>
			
				<c:forEach var="v" items="${lista}">
				<tr>
					<td>${v.produto}</td>
					<td>${v.tamanho}</td>
					<td>${v.descricao}</td>
					<td>${v.cliente.nome}</td>
					<td><a href="/venda/${v.id}/excluir">excluir</a></td>
				</tr>
				
				</c:forEach>
				
			</tbody>
		</table>
		</c:if>
		
		<c:if test="${empty lista}">
		<p>Nenhuma venda cadastrada!!!</p>
		</c:if>


	</div>

</body>
</html>