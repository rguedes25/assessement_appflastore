<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AT</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>

<body>

	<div class="container">
		<h2>AT</h2>
		<h3>${user.nome}</h3>
		<h3>${user.email}</h3>
		<h3>${user.git}</h3>
		
		<form action="/cliente" method="get">

			<button type="submit" class="btn btn-default">Novo cliente</button>

		</form>
		
				
		<form action="/venda" method="get">

			<button type="submit" class="btn btn-default">Nova venda</button>

		</form>
		
	</div>

</body>
</html>