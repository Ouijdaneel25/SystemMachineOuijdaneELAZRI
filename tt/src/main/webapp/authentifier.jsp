<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="-1" />
<meta charset="ISO-8859-1">

<title>Login</title>
<meta charset="UTF-8">
<script src="script/jquery-3.5.1.min.js"></script>
<script src="script/user.js"></script>
<link rel="apple-touch-icon" type="image/png"
	href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="image/x-icon"
	href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg"
	color="#111" />
<link href="style/cssLogin.css" rel="stylesheet">

<title>Login/Sign Up Page</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<script>
	window.console = window.console || function(t) {
	};
</script>
<style type="text/css">
body {
	line-height: 1;
	margin: 4%;
}

.card .title {
	position: relative;
	z-index: 1;
	border-left: 6px solid #7f1c45;
	margin: 0 0 35px;
	padding: 10px 0 10px 50px;
	color: #7f1c45;
	font-size: 32px;
	font-weight: 600;
	text-transform: uppercase;
}

.card .button-container button:hover, .card .button-container button:active,
	.card .button-container button:focus {
	border-color: #fce4ecf7;
}

.card.alt .button-container button {
	width: 100%;
	background: #ffffff00;
	border-color: #ffffff00;
}

.card.alt .button-container button:hover {
	background: #ce93d824;
}

.card.alt .button-container button span {
	color: #ffffff;
}

.card.alt .toggle {
	position: relative;
	background: linear-gradient(to right, #000811 0%, #96001b 100%, #0a1c33 10%);
	width: 180px;
	height: 139px;
	border-radius: 104%;
	box-shadow: 0 1px 3px #880e4f, 0 1px 2px rgb(0 0 0/ 24%);
	color: #ffffff;
	font-size: 52px;
	line-height: 137px;
	text-align: center;
	cursor: pointer;
}

.card.alt .toggle:before {
	content: "Admin";
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	transform: translate(0, 0);
}

html {
	overflow: hidden;
}

body {
	background: linear-gradient(to right, #000811 0%, #96001b 162%, #0a1c33 0%);
}
</style>


<script>
	if (document.location.search.match(/type=embed/gi)) {
		window.parent.postMessage("resize", "*");
	}
</script>


</head>
<body translate="no">

	<div class="container">
		<div class="card"></div>
		<div class="card">

			<h1 class="title">Login</h1>
			<!-- 			<form id="frm" role="form" action="UserController"> -->
			<!-- 				<div class="input-container"> -->
			<!-- 					<input type="text" id="username" required="required" /> <label -->
			<!-- 						for="">Username</label> -->
			<!-- 					<div class="bar"></div> -->
			<!-- 				</div> -->
			<!-- 				<div class="input-container"> -->
			<!-- 					<input type="password" id="password" required="required" /> <label -->
			<!-- 						for="">Password</label> -->
			<!-- 					<div class="bar"></div> -->
			<!-- 				</div> -->
			<!-- 				<div class="button-container"> -->
			<!-- 					<button id="connect" type="button"> -->
			<!-- 						<span>Login</span> -->
			<!-- 					</button> -->
			<!-- 				</div> -->
			<!-- 				<div class="footer"> -->
			<!-- 					<a href="#">Forgot your password?</a> -->
			<!-- 				</div> -->
			<!-- 			</form> -->
		</div>
		<div class="card alt">
			<div class="toggle"></div>
			<h1 class="title">
				Login
				<div class="close"></div>
			</h1>
			<form id="frm" role="form" action="UserController">
				<div class="input-container">
					<input type="text" id="username" required="required" /><label
						for="">Username</label>
					<div class="bar"></div>
				</div>
				<div class="input-container">
					<input type="password" id="password" required="required" /> <label
						for=""> Password</label>
					<div class="bar"></div>
				</div>
				<div class="button-container">
					<button id="connect" type="button">
						<span>Login</span>
					</button>
				</div>
			</form>
		</div>
	</div>

	<script
		src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script id="rendered-js">
		$('.toggle').on('click', function() {
			$('.container').stop().addClass('active');
		});

		$('.close').on('click', function() {
			$('.container').stop().removeClass('active');
		});
		//# sourceURL=pen.js
	</script>



</body>

</html>



