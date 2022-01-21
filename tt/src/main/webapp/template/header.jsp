<style type="text/css">
.panel-header {
	padding-top: 80px;
	padding-bottom: 45px;
	background: #141E30;
	/* fallback for old browsers */
	background: -webkit-gradient(linear, left top, right top, from(#0c2646),
		color-stop(60%, #204065), to(#2a5788));
	background: linear-gradient(to right, #0a1c33 0%, #880e4f 60%, #0a1c33 100%);
	position: relative;
	overflow: hidden;
}
.navbar .form-group.no-border .form-control, .navbar .input-group.no-border .form-control {
    color: #FFFFFF;
    background: #75235c;
}
.now-ui-icons.users_single-02:before {
    content: "\ea51";
    margin: -14%;
    margin-left: -65%;
}
</style>
<%
HttpServletResponse httpResponse = (HttpServletResponse) response;
httpResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.addHeader("Cache-Control", "post-check=0, pre-check=0");
httpResponse.setHeader("Pragma", "no-cache");
httpResponse.setDateHeader("Expires", 0);
if (session.getAttribute("username") == null) {
	response.sendRedirect("authentifier.jsp");
	return ;
}

%>
<nav
	class="navbar navbar-expand-lg navbar-transparent  navbar-absolute bg-primary fixed-top">
	<div class="container-fluid">
		<div class="navbar-wrapper">
			<div class="navbar-toggle">
				<button type="button" class="navbar-toggler">
					<span class="navbar-toggler-bar bar1"></span> <span
						class="navbar-toggler-bar bar2"></span> <span
						class="navbar-toggler-bar bar3"></span>
				</button>
			</div>
			<a class="navbar-brand" href="#">Gestion Des Machines Group2 IIR4</a>
		</div>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navigation" aria-controls="navigation-index"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-bar navbar-kebab"></span> <span
				class="navbar-toggler-bar navbar-kebab"></span> <span
				class="navbar-toggler-bar navbar-kebab"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end"
			id="navigation">		
			<form >
				<div class="input-group no-border">
					<span class="input-group-addon"> <img alt="" src="icon/avatar.png"><b>&nbsp;<%=session.getAttribute("username")%></b> <span>&nbsp; &nbsp; </span>
					</span> <label class="form-control" name="myStudent"><b>En Ligne</b>
					</label>

				</div>
			</form>	
		</div>
	</div>
</nav>