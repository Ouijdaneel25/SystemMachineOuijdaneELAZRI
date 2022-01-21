<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion Marque</title>
<script src="script/jquery-3.5.1.min.js"></script>
<script src="script/marque.js"></script>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />

<link rel="apple-touch-icon" sizes="76x76"
	href="style/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="style/assets/img/favicon.png">

<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<!-- CSS Files -->
<link href="style/assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="style/assets/css/now-ui-dashboard.css?v=1.0.1"
	rel="stylesheet" />
<script src="style/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="style/assets/demo/demo.css" rel="stylesheet" />
<!-- <!--   Core JS Files   -->
<script src="style/assets/js/core/popper.min.js"></script>
<script src="style/assets/js/core/bootstrap.min.js"></script>


<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
<script src="style/assets/js/now-ui-dashboard.js">
	
</script>
<style>
#ajouterMarque {
	border: 1px solid #E3E3E3;
	border-radius: 30px;
	color: #f8bbd0;
	line-height: normal;
	font-size: 132%;
	background: linear-gradient(to right, #0a1c333b 0%, #880e4f 60%, #0a1c3321 100%);
}

#ajouterMarque:hover {
	background-color: transparent;
	background: linear-gradient(to right, #ad1457 0%, #fce4ec 60%, #880e4f 100%);
	color: #1a237e;
	border-color: #d81b60;
	box-shadow: none;
	color: #1a237e;
	border-color: #d81b60;
}

#modifier {
	border: 1px solid #E3E3E3;
	border-radius: 30px;
	color: #f8bbd0;
	line-height: normal;
	font-size: 132%;
	background: linear-gradient(to right, #0a1c333b 0%, #880e4f 60%, #0a1c3321 100%);
}

#modifier:hover {
	background-color: transparent;
	background: linear-gradient(to right, #ad1457 0%, #fce4ec 60%, #880e4f 100%);
	color: #1a237e;
	border-color: #d81b60;
	box-shadow: none;
	color: #1a237e;
	border-color: #d81b60;
}

#ajouter {
	padding: 10px;
}

#mod {
	padding: 10px;
}

.row2 {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
	padding: 4%
}

.now-ui-icons.ui-2_settings-90:before {
	content: "\ea4b";
	color: #fce4ec;
}

.now-ui-icons.ui-1_send:before {
	content: "\ea4d";
	color: #fce4ec;
}

.form-control:focus {
	border: 1px solid #880e4f;
	-webkit-box-shadow: none;
	box-shadow: none;
	outline: 0 !important;
	color: #2c2c2c;
}

.text-primary, a.text-primary:focus, a.text-primary:hover {
	color: #800f4d !important;
}

.table .btn {
	margin: 3px;
}

.btn.btn-simple, .navbar .navbar-nav>a.btn.btn-simple {
	color: #ec407a;
	border-color: #e8eaf6;
}
</style>
</head>

<body>
	<div class="wrapper ">
		<%@ include file="/template/navbar.jsp"%>
		<div class="main-panel ps-container ps-theme-default"
			data-ps-id="81fbed2d-72fd-09fb-653e-26db22136263">
			<%@ include file="/template/header.jsp"%>
			<div class="panel-header panel-header-sm"></div>
			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="title">Nouvelle Marque</h5>
								<form action="MarqueController" role="form" method="post">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>Code</label> <input id="code" type="text"
													class="form-control" placeholder="Code de Marque">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>Libelle</label> <input id="libelle" type="text"
													class="form-control" placeholder="Libelle de Marque">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div id="ajouter" class="dropdown">
												<button type="button" id="ajouterMarque"
													class=" now-ui-icons ui-1_send form-control"
													data-toggle="dropdown">
													<b>Ajouter Marque</b>
												</button>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="dropdown">
												<div id="mod" class="dropdown" style="display: block">
													<button type="button" id="modifier"
														class=" now-ui-icons ui-2_settings-90 form-control"
														data-toggle="dropdown">
														<b>Modifer Marque</b>
													</button>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12"></div>
									</div>
									<div class="row2">
										<div class="col-md-12">
											<div class="card">
												<div class="card-header">
													<h4 class="card-title">ALL Marque</h4>

												</div>
												<div class="card-body">
													<div class="table-responsive">
														<table class="table">
															<thead class=" text-primary">

																<tr>
																	<th><b>Id</b></th>

																	<th><b>Code</b></th>

																	<th><b>Libelle</b></th>

																	<th class="text-right"><b>Action</b></th>


																</tr>
															</thead>
															<tbody id="t">
															</tbody>
														</table>
													</div>
												</div>
											</div>

										</div>

									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
			<%@ include file="/template/footer.jsp"%>
			<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: -276.8px;">
				<div class="ps-scrollbar-x" tabindex="0"
					style="left: 0px; width: 0px;"></div>
			</div>
			<div class="ps-scrollbar-y-rail"
				style="top: 276.8px; right: 0px; height: 731px;">
				<div class="ps-scrollbar-y" tabindex="0"
					style="top: 159px; height: 419px;"></div>
			</div>
		</div>
	</div>
</body>
</html>