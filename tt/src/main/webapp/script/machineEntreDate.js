$(document).ready(function() {
	var test = "t";
	console.log("1");
	$("#modifier").click(function() {
		console.log("2");
//				if (document.getElementById("notificationModifier").style.display == "block") {
//					$("#notificationModifier").css("display", "none");
//		
//				}
//				if (document.getElementById("notificationRemplir").style.display == "block") {
//					$("#notificationRemplir").css("display", "none");
//		
//				}
		if ($("#dateAchatUn").val() == "" || $("#dateAchatDeux").val() == "") {

//			$("#notificationModifier").css("display", "block");
			test="j";
		}

		$.ajax({
			url: "EntreDateController",
			data: { op: "load", dateUn: $("#dateAchatUn").val(), dateDeux: $("#dateAchatDeux").val() },
			method: 'POST',
			success: function(data, textStatus, jqXHR) {
				remplir(data);
			},
			error: function(data) {

				console.log(data);
			}
		});
	});

	function remplir(data) {
		var ligne = "";
		if (data[0] == undefined && test=="t") {
//				$("#notificationRemplir").css("display", "block");
			}
			if (test=="j") {
//				$("#notificationModifier").css("display", "block");
				test="t";
			}
		data.forEach(e => {
			
			ligne += "<tr><td>" + e.id +
				"</td><td>" + e.reference +
				"</td><td>" + e.dateAchat + "</td><td>" + e.prix + "</td><td>" + e.idMarque.libelle+
				"</td></tr>";
			
		});
		$("#tt").html(ligne);
	}

});