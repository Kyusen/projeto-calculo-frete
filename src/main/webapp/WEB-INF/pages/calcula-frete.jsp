<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="../pages/template/header.jsp" />

<div class="row">
	<div class="col-md-3">
		<form class="form-group"
			action="controlador-geral?execute=CalculaFrete" method="post">

			<div class="form-group">
				<select name="geocodigoA" class="form-control" required>
					<option disabled="disabled" selected="selected" value="">Escolha cidade A</option>
					<c:forEach var="a" items="${citiesA}">
						<option value="${a.geocodigo}">${a.nome}</option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<select name="geocodigoB" class="form-control" required>
					<option disabled="disabled" selected="selected" value="">Escolha a cidade B</option>
					<c:forEach var="b" items="${citiesB}">
						<option value="${b.geocodigo}">${b.nome}</option>
					</c:forEach>

				</select>
			</div>

			<div class="form-group">
				<input type="submit" value="Calcular Frete" class="btn btn-success" />
			</div>
		</form>
		<hr>
	</div>
	<div class="col-md-3"></div>
	<div class="col-md-3"></div>
	<div class="col-md-3"></div>
</div>
<div class="row">
	<div class="col-md-9">
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Cidade A</th>
						<th>Cidade B</th>
						<th>Distancia (KM)</th>
						<th>Valor do Frete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="f" items="${frete}">
						<tr>
							<td>${f.pontoA}</td>
							<td>${f.pontoB}</td>
							<td>${f.distancia}</td>
							<td>R$ <fmt:formatNumber value="${f.valorFrete}"
									pattern="#,##0.00" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<hr>
		<form class="form-group" action="controlador-geral?execute=Voltar"
			method="post">
			<button type="submit" class="btn btn-default">Voltar</button>
			<hr>
		</form>
	</div>
</div>
<c:import url="../pages/template/footer.jsp" />