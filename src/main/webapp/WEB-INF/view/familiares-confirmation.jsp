<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- Meta tags Obrigatórias -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<title>Familiares Confirmation</title>
</head>
<body>

	<header>
		<!-- Início cabeçalho -->
		<nav
			class="navbar navbar-expand-md navbar-light sticky-top bg-warning">
			<div class="container">
				<a href="http://localhost:8080/familiares/"
					class="navbar-brand, text-dark"> Home </a>

				<button class="navbar-toggler" data-toggle="collapse"
					data-target="#nav-principal">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="nav-principal">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a
							href="http://localhost:8080/familiares/familiares/processForm"
							class="nav-link active">Formulário</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!--/fim cabeçalho -->

	<div class="container">
		<br />
		<table class="table table-bordered">

			<thead class="thead-light">
				<tr>
					<th>Nome:</th>
					<th>Idade:</th>
					<th>Genero:</th>
					<th>Serviços utilizados:</th>
				</tr>
			</thead>

			<tr>
				<td>${ familiares.nome }</td>
				<td>${ familiares.idade }</td>
				<td>${ familiares.genero }</td>
				<td>
					<ul>
						<c:forEach var="opSys" items="${ familiares.servicos }">

							<li>${ opSys }</li>

						</c:forEach>
					</ul>
				</td>
			</tr>
		</table>

		<a href="http://localhost:8080/familiares/" class="btn btn-primary"
			role="button">Voltar</a>
	</div>

	<!-- JavaScript (Opcional) -->
	<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>