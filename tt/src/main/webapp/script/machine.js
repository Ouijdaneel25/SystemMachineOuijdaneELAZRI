$(document).ready(function() {
	$("#mod").hide();
	$.ajax({

		url: "MachineController",
		data: { id: "load" },
		method: 'POST',
		success: function(data) {
			chargerCombobox(data[0]);
			remplir2(data[1])
			console.log(data);
		},
		error: function(data) {
			console.log(data);
		}
	});
	function chargerCombobox(data) {
		var ligne = "";
		var ligne1 = "";
		for (var i = 0; i < data.length; i++) {
		
			ligne1 += "";
			ligne += "<option value='" + data[i].id + "'> " + data[i].libelle + " </option>";

		}
		ligne1 += "<option value='' disabled selected> Choisissez une marque </option>";
		$("#marque").html(ligne);

	}
	var id;
	$("#ajouterMachine").click(function() {
		var reference = $("#reference").val();
		var dateAchat = $("#dateAchat").val();
		var prix = $("#prix").val();
		var idMarque = $("#marque ").val();
		if (id == null) {
			$.ajax({

				url: "MachineController",
				data: { reference: reference, dateAchat: dateAchat, prix: prix, idMarque: idMarque },
				type: 'POST',
				success: function(data, textStatus, jqXHR) {
					if (data[0])
					     alert("Cette Reference existe deja")
					else {
						remplir2(data[1]);
						$("#reference").val('');
						$("#date").val('');
						$("#prix").val('');
						$("#mod").hide();
						$("#ajouter").show();
					}
				},
				error: function(jqXHR, textStatus, errorThrown) {

					console.log(textStatus);

				}
			});
		}

		else {
			$.ajax({
				url: "MachineController",
				data: { reference: reference, dateAchat: dateAchat, prix: prix, idMarque: idMarque },
				type: 'POST',
				success: function(data, textStatus, jqXHR) {
					console.log(data);
					remplir2(data[1]);
					$("#reference").val('');
					$("#date").val('');
					$("#prix").val('');
					//$("#add").text("Ajouter");
					$("#mod").hide();
					$("#ajouter").show();
				},
				error: function(jqXHR, textStatus, errorThrown) {
					console.log(textStatus);
				}
			});
		}

	});

	$("#tt").on('click', '.delete', function() {
		//console.log("ok");
		var indice = $(this).attr('indice');
		console.log(indice);
		$.ajax({
			url: "MachineController",
			data: { id: "delete", indice: indice },
			method: 'POST',
			success: function(data) {
				remplir2(data);
			},
			error: function(data) {
				console.log(data);
			}
		});

	});


	function remplir2(data) {
		var ligne = "";
		for (var i = 0; i < data.length; i++) {
			ligne += "<tr><td>" + data[i].id +
				"</td><td>" + data[i].reference +
				"</td><td>" + data[i].dateAchat + "</td><td>" + data[i].prix + "</td><td>" + data[i].idMarque.libelle+
				"</td><td  class='text-right'>" +
				"<button  type='button'" +
				" indice=" + data[i].id +
				" indice2=" + data[i].reference +
				" indice3='" + data[i].dateAchat + "' indice4=" + data[i].prix + " indice5=" + data[i].idMarque.id +
				" class='update btn btn-round btn-default dropdown-toggle btn-simple btn-icon no-caret'" +
				" data-toggle='dropdown'>" +
				" <i class='now-ui-icons ui-2_settings-90'></i>" +
				"</button>" +
				"<button type='button'  indice=" +
				data[i].id + " class=' delete btn btn-round btn-default dropdown-toggle btn-simple btn-icon no-caret'" +
				" data-toggle='dropdown'><i class='now-ui-icons ui-1_simple-remove'>" +
				"</i></button></td></tr>";
		}
		$("#tt").html(ligne);

	}
	var indice,indice2,indice3,indice4,indice5;
//Modifier
	$("#tt").on('click', '.update', function() {

		indice = $(this).attr('indice');
		indice2 = $(this).attr('indice2');
		indice3 = $(this).attr('indice3');
		indice4 = $(this).attr('indice4');
		indice5 = $(this).attr('indice5');
		
        console.log(indice5);
		$("#reference").val(indice2);
		$("#dateAchat").val(formatDate(indice3));
		$("#prix").val(indice4);
		$("#marque").val(indice5).change();
		
		$("#mod").show();
		$("#ajouter").hide();


	});
	$("#modifier").click(function() {
		
		$.ajax({
			url: "MachineController",
			data: {
				id:"update",
				indice: indice,
				indice2: $("#reference").val(),
				indice3: $("#dateAchat").val(),
				indice4: $("#prix").val(),
				indice5: $("#marque").val(),
				
			},
			method:'POST',
			success: function(data) {
				console.log("a");
				console.log("test$ +"+$("#marque").val())
				console.log(indice5);
                   remplir2(data);
				 $("#reference").val('');
				 $("#dateAchat").val('');
				 $("#prix").val('');
				
				//console.log(data);
				$("#mod").hide();
		        $("#ajouter").show();
			},
			error: function(data) {
				console.log("b");
				console.log(data);
			}
		});
	});
	function formatDate(date) {
		var d = new Date(date),
			month = '' + (d.getMonth() + 1),
			day = '' + d.getDate(),
			year = d.getFullYear();

		if (month.length < 2)
			month = '0' + month;
		if (day.length < 2)
			day = '0' + day;
		return [year, month, day].join('-');
	}




});









