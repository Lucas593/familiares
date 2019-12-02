<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<style>
.error {
	color: red
}
</style>
<title>Familiares Form</title>
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

	<br />

	<div class="container">
		<form:form action="processForm" modelAttribute="familiares">
			<table>
				<tr>
					<td><form:label path="nome">Nome: </form:label></td>
					<td><form:input path="nome" /></td>
					<td><form:errors path="nome" cssClass="error" /></td>
				</tr>

				<tr>
					<td><form:label path="idade">Idade: </form:label></td>
					<td><form:input path="idade" /></td>
					<td><form:errors path="idade" cssClass="error" /></td>
				</tr>
			</table>

			<br />
			Favorite Language: 
			<br />Masculino
			<form:radiobutton path="genero" value="Masculino" />

			<br />
			Feminino
			<form:radiobutton path="genero" value="Feminino" />

			<br />
			Outros
			<form:radiobutton path="genero" value="Outros" />

			<br />
			<br />
			Serviços utilizados:
			<br /> iFood
			<form:checkbox path="servicos" value="iFood" />

			<br />
			Uber
			<form:checkbox path="servicos" value="Uber" />

			<br />
			Spotify
			<form:checkbox path="servicos" value="Spotify" />

			<br />
			Netflix
			<form:checkbox path="servicos" value="Netflix" />

			<br />
			<br />
			<div class="row">
				<div class="col-md-4 col-md-offset-5">
					<input class="btn btn-primary" type="submit" value="Submit">
					<a href="http://localhost:8080/familiares/" class="btn btn-primary"
						role="button">Voltar</a>
				</div>
			</div>
		</form:form>
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