<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="../pages/template/header.jsp" />

<!-- Example row of columns -->
<div class="row">
	<div class="col-md-4">
		<h2>Cadastro de Cidades</h2>
		<p>Permite o cadastro de cidades e é obrigatório entrar um o valor
			para nome, geocodigo e latitude e longitude da Cidade.</p>
		<p>Pode-se utilizar o link abaixo para consulta da Cidade no
			Google Maps e ter a lat e lon:
		<p class="bg-success">http://maps.google.com/maps/api/geocode/json?address=[UF]+[CIDADE]&sensor=false</p>
		<p class="bg-danger">http://maps.google.com/maps/api/geocode/json?address=sp+lorena&sensor=false</p>
		<br />
		<p>Para consulta de Geocodigo:</p>
		<p class="bg-success">http://www.ibge.gov.br/home/geociencias/
			areaterritorial/area.php?nome=[CIDADE]</p>
		<p class="bg-danger">http://www.ibge.gov.br/home/geociencias/
			areaterritorial/area.php?nome=ITAJUBA</p>
		<p>
		<form class="form-group"
			action="controlador-geral?execute=ChamaCadastraCidade" method="post">
			<button class="btn btn-default btn-lg" type="submit">Cadastro
				de Cidades</button>
		</form>
		</p>
	</div>
	<div class="col-md-4">
		<h2>Cálculo de Frete</h2>
		<p>Modelo simples para cáculo de Frete com regras internas fixas
			(dsitancia * valor_de_acordo_com_kilometragem). É esperado a entrada
			do geocódigo da cidade A e B.</p>
		<p>
		<form class="form-group"
			action="controlador-geral?execute=ChamaCalculaFrete" method="post">
			<button class="btn btn-default btn-lg" type="submit">Cálculo
				de Frete</button>
		</form>
		</p>
	</div>
	<div class="col-md-4"></div>

</div>

<hr>

<c:import url="../pages/template/footer.jsp" />