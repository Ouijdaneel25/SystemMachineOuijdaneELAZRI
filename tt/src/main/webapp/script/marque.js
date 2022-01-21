$(document).ready(function() {
$("#mod").hide();
	$.ajax({
		//Afficher Dans la table
		url: "MarqueController",
		data: { id: "load" },
		method: 'POST',
		success: function(data) {
			remplir(data);
				
		},
		error: function(data) {
			console.log(data);
		}
	});
	//Ajouter
	$("#ajouterMarque").click(function() {
		var code = $("#code").val();
		var libelle = $("#libelle").val();
		if(code =="" && libelle=="")
		{
			alert("les champs sont vides !!");
			return false;
		}
		else{
			$.ajax({
			url: "MarqueController",
			data: { code: code, libelle: libelle },
			method: 'POST',
			success: function(data) {
				//console.log(data);
				remplir(data);
				$("#code").val("");
				$("#libelle").val("");
				$("#mod").hide();
		        $("#ajouter").show();
			},
			error: function(data) {
				console.log(data);
			}
		});
		}
		
	});
	//Supprimer
	$("#t").on('click', '.delete', function() {
		//console.log("ok");
		var indice = $(this).attr('indice');
		console.log(indice);
		$.ajax({
			url: "MarqueController",
			data: { id: "delete", indice: indice },
			method: 'POST',
			success: function(data) {
				remplir(data);
			},
			error: function(data) {
				console.log(data);
			}
		});

	});
	var indice;
	var indice2;
	var indice3;
	//Modifier
	$("#t").on('click', '.update', function() {

		indice = $(this).attr('indice');
		indice2 = $(this).attr('indice2');
		indice3 = $(this).attr('indice3');

		$("#code").val(indice2);
		$("#libelle").val(indice3);
		$("#mod").show();
		$("#ajouter").hide();


	});
	$("#modifier").click(function() {
		
		$.ajax({
			url: "MarqueController",
			data: {
				id:"update",
				indice: indice,
				indice2: $("#code").val(),
				indice3: $("#libelle").val()
			},
			method:'POST',
			success: function(data) {
				console.log("ok");
                   remplir(data);
				$("#code").val("");
				$("#libelle").val("");
				
				$("#mod").hide();
		        $("#ajouter").show();
			},
			error: function(data) {
				console.log(data);
			}
		});
	});
	//Methode Remplir
	function remplir(data) {
		var ligne = "";
		for (var i = 0; i < data.length; i++) {
			ligne += "<tr><td>" + data[i].id +
				"</td><td>" + data[i].code +
				"</td><td>" + data[i].libelle +
				"</td><td  class='text-right'>" +
				"<button  type='button'" +
				" indice=" + data[i].id +
				" indice2=" + data[i].code +
				" indice3=" + data[i].libelle +
				" class='update btn btn-round btn-default dropdown-toggle btn-simple btn-icon no-caret'" +
				" data-toggle='dropdown'>" +
				" <i class='now-ui-icons ui-2_settings-90'></i>" +
				"</button>" +
				"<button type='button'  indice=" +
				data[i].id + " class=' delete btn btn-round btn-default dropdown-toggle btn-simple btn-icon no-caret'" +
				" data-toggle='dropdown'><i class='now-ui-icons ui-1_simple-remove'>" +
				"</i></button></td></tr>";
		}
		$("#t").html(ligne);

	}
	

});