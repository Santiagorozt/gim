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

		<div>
			<div class="page-header">
				<h1>Vendedores</h1>
			</div>
			<div class="row">
			<mvc:form modelAttribute="filtroVendedorDTO" action="${pageContext.request.contextPath}/vendedores/filtrar" method="POST">
					<div class="col-md-2">
						<div>
							<form:select  class="form-control select-md" path="codOficina" >
							<form:option value="0" label="Seleccione oficina" />
							<form:options items="${oficinas}" itemValue="codOficina"
								itemLabel="codOficina" />
						</form:select>
						</div>
					</div>
					<div class="col-md-1">
						<div>
							<mvc:input id="zona" name="zona"
							placeholder="Zona" class="form-control input-md" path="zona" />
						</div>
					</div>
					<div class="w-25 col-md-2">
						<div>
							<mvc:input id="id-vendedor" name="id-vendedor"
							placeholder="Id Vendedor" class="form-control input-md" path="idVendedor" />
						</div>
					</div>
					<div class="w-25 col-md-2">
						<div>
							<mvc:input id="id-vendedor" name="fecha-contratacion" type="date"
							placeholder="Fecha contratación" class="form-control input-md" path="fechaContratacion" value=" " />
						</div>
					</div>
					<div class="col-md-1 pull-right">
						<div>
							<button class=" form-control btn btn-default-btn-xs btn-success" type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
						</div>
					</div>
					<div class="col-md-1 pull-right">
						<div>
							<a href="${pageContext.request.contextPath}/vendedores/formulario"
							class="form-control btn btn-default-btn-xs btn-success"><i
							class="glyphicon glyphicon-plus"></i> Añadir</a>
						</div>
					</div>
				
				</mvc:form>
			</div>
			<br></br>
			<table class="table table-bordered table-condensed table-hover">
				<thead>
					<tr>
						<th>No</th>
						<th>Id Vendedor</th>
						<th>Nombre</th>
						<th>Edad</th>
						<th>Fecha contrato</th>
						<th>Cuota</th>
						<th>Ventas</th>
						<th>Oficina</th>
					</tr>

				</thead>
				<tbody id="form-list-client-body">
					<c:forEach var="vendedor" items="${vendedores}" varStatus="status">
						<tr>
							<td><b>${status.index + 1}</b></td>
							<td>${vendedor.idVendedor}</td>
							<td>${vendedor.nombre}</td>
							<td>${vendedor.edad}</td>
							<td>${vendedor.fechaContrato}</td>
							<td>${vendedor.cuota}</td>
							<td>${vendedor.ventas}</td>
							<td>${vendedor.oficina.codOficina}</td>
							<td><a
								href="${pageContext.request.contextPath}/vendedores/modificar/${vendedor.idVendedor}"
								title="edit this user" class="btn btn-default btn-sm "> <i
									class="glyphicon glyphicon-edit text-primary"></i>
							</a> <a
								href="${pageContext.request.contextPath}/vendedores/eliminar/${vendedor.idVendedor}"
								title="delete this user" class="btn btn-default btn-sm "> <i
									class="glyphicon glyphicon-trash text-danger"></i>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>