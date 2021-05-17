<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vendedor Formulario</title>
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
			modelAttribute="vendedor"
			action="${pageContext.request.contextPath}/vendedores/guardar"
			method="POST">


			<fieldset>

				<!-- Form Name -->
				<legend>Formulario vendedor</legend>

				<form:hidden path="idVendedor" />


				<div class="form-group">
					<label class="col-md-4 control-label" for="client-name">Nombre
						del vendedor</label>
					<div class="col-md-4">
						<mvc:input id="client-name" name="client-name"
							placeholder="Nombre del vendedor" class="form-control input-md"
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
					<label class="col-md-4 control-label" for="client-name">Fecha
						del contrato</label>
					<div class="col-md-4">
						<mvc:input type="date" id="client-name" name="client-name"
							placeholder="Fecha del contrato" class="form-control input-md"
							path="fechaContrato" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="client-name">Cuota</label>
					<div class="col-md-4">
						<mvc:input id="client-name" name="client-name"
							placeholder="Cuota del vendedor" class="form-control input-md"
							path="cuota" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label" for="client-name">Ventas</label>
					<div class="col-md-4">
						<mvc:input id="client-name" name="client-name"
							placeholder="Ventas del vendedor" class="form-control input-md"
							path="ventas" />
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-4 control-label" for="client-name">Id
						Oficina</label>
					<div class="col-md-4">
						<form:select path="idOficina" class="form-control select-md">
							<form:options items="${oficinas}" itemValue="codOficina"
								itemLabel="codOficina" />
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