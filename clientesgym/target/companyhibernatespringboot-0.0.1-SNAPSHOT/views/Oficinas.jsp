<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vendedores</title>
<link
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" media="screen">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	type="text/css" rel="stylesheet">
</head>
<body>

	<div class=col-md-12>
		<div class="page-header">
			<h1>Datos oficinas</h1>
		</div>

		<mvc:form modelAttribute="oficinaDTO"
			action="${pageContext.request.contextPath}/oficinas/consultar"
			method="POST">
			<div class="row">
				<div class="col-md-2">
									<label>Oficinas</label>
				
					<div>
						<form:select class="form-control select-md" path="codOficina">
							<form:option value="0" label="Seleccione oficina" />
							<form:options items="${oficinas}" itemValue="codOficina"
								itemLabel="codOficina" />
						</form:select>
					</div>
				</div>
				<div class="col-md-2">
					<label>Nº Vendedores</label>
					<div>
						<mvc:input disabled="true" id="nVendedores" name="zona"
							placeholder="Nº Vendedores" class="form-control input-md"
							path="nVendedores" value=" " />
					</div>
				</div>
				<div class="w-25 col-md-2">
					<label>Ventas</label>
					<div>
						<mvc:input id="ventas" disabled="true" name="id-vendedor" placeholder="Ventas"
							class="form-control input-md" path="ventas" value=" " />
					</div>
				</div>
			</div>
			<br></br>
			<div class="row">
				<div class="col-md-1">
					<div>
						<button class=" form-control btn btn-default-btn-xs btn-success"
							type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</div>
				</div>
			</div>
		</mvc:form>

	</div>
</body>
</html>