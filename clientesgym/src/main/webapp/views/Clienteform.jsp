<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cliente Formulario</title>
<link
	href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" media="screen">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	type="text/css" rel="stylesheet">
</head>

<body>

	<!-- FORM -->

	<div class="col-md-12">
		<mvc:form class="form-horizontal" id="form-edit-client"
			modelAttribute="cliente"
			action="${pageContext.request.contextPath}/clientes/guardar"
			method="POST">


			<fieldset>

				<!-- Form Name -->
				<legend>Formulario cliente</legend>

				<form:hidden path="id" />


				<div class="form-group">
					<label class="col-md-4 control-label" for="client-name">Nombre
						del cliente</label>
					<div class="col-md-4">
						<mvc:input id="client-name" name="client-name"
							placeholder="Nombre del cliente" class="form-control input-md"
							path="nombre" />
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-4 control-label" for="client-name">Edad</label>
					<div class="col-md-4">
						<mvc:input id="client-name" name="client-name" placeholder="Edad"
							class="form-control input-md" path="edad" />
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-4 control-label" for="client-name">Cuota</label>
					<div class="col-md-4">
						<div class="input-group">
							<mvc:input id="client-name" name="client-name"
								placeholder="Cuota del cliente" class="form-control input-md"
								path="cuota" />
							<div class="input-group-addon">€</div>
						</div>
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-4 control-label" for="client-name">Cobrado</label>
					<div class="col-md-4">
						<form:select path="cobrado" class="form-control select-md">
							<option value="true">Sí</option>
							<option value="false" selected="selected">No</option>
						</form:select>
					</div>
				</div>

				<!-- Button AGREGAR -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="btn-agregar"></label>
					<div class="col-md-4">
						<input type="submit" id="btn-agregar" name="btn-agregar"
							class="btn btn-success" value="Aceptar" />
					</div>
				</div>

			</fieldset>
		</mvc:form>
	</div>

</body>
</html>