$(document).ready(function() {
	function login() {
		if ($('#username').val() == "" && $('#password').val() == "") {
			alert("Remplir Les champs Obligatoirement");
			return false;


		} else if ($('#username').val() == "") {
			alert("Remplir Le champ  username Obligatoirement");
			return false;

		} else if ($('#password').val() == "") {
			alert("Remplir Le champ  password Obligatoirement");
			return false;

		}

		var sdata = {
			username: $('#username').val(),
			password: $('#password').val()
		};
		$.ajax({
			url: "UserController",
			type: "POST",
			data: sdata,
			dataType: 'JSON',
			success: function(data) {

				if (data.status === true) {
					alert("Login Sucess");
					window.location.replace("Dashbord.jsp");
				}
				else {
					alert("Ce admin ne trouve pas dans la base de donnee");
					return false;
				}
			}
		})
	}
	$("#connect").click(function() {
		login();
	});
});