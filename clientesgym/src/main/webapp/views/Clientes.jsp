<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 




<!DOCTYPE html>
<html>
<head>
<head>
<meta http-equiv="content-type" content="text/html; utf-8">
<title>Clientes</title>
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
				<h1>Clientes</h1>
			</div>
			<div class="row">
					<div class="col-md-1 pull-right">
						<div>
							<a
								href="${pageContext.request.contextPath}/clientes/formulario"
								class="form-control btn btn-default-btn-xs btn-success"><i
								class="glyphicon glyphicon-plus"></i> Añadir</a>
						</div>
					</div>
			</div>
			<br></br>
			<table class="table table-bordered table-condensed table-hover">
				<thead>
					<tr>
						<th>No</th>
						<th>Id Cliente</th>
						<th>Nombre</th>
						<th>Edad</th>
						<th>Cuota</th>
						<th>Cobrado</th>
					</tr>

				</thead>
				<tbody id="form-list-client-body">
					<c:forEach var="cliente" items="${clientes}" varStatus="status">
						<tr>
							<td><b>${status.index + 1}</b></td>
							<td>${cliente.id}</td>
							<td>${cliente.nombre}</td>
							<td>${cliente.edad}</td>
							<td>${cliente.cuota} &#8364;</td>
							<td>${cliente.cobrado ? 'SÍ': 'NO'}</td>
							<td><a
								href="${pageContext.request.contextPath}/clientes/modificar/${cliente.id}"
								title="edit this user" class="btn btn-default btn-sm "> <i
									class="glyphicon glyphicon-edit text-primary"></i>
							</a> <a
								href="${pageContext.request.contextPath}/clientes/eliminar/${cliente.id}"
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