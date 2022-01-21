$(document).ready(function() {
	console.log("1");
	$.ajax({
		url: "StatisticController",
		data: { op: "load" },
		method: 'POST',
		success: function(data) {
			var marque = [];
			var machine = [];
			for (var i in data[1]) {				
				marque.push("Marque: " + data[1][i].idMarque.libelle);
				machine.push(data[1][i].cpt);
			}
			var chartdata = {
				labels: marque,
				datasets: [
					{
						label : 'Marque',
						backgroundColor: '#69023a',
						borderColor: '#311b92',
						hoverBackgroundColor: '#311b92',
						hoverBorderColor: '#311b92',
						data: machine,
					}
				]
			}
//			var chartColor = "#FFFFFF";
			var ctx3 = $("#bigDashboardChart");	
			var barGraph = new Chart(ctx3, {
				type: 'line',
				data: chartdata,
				options: {
					responsive: true,
					plugins: {
						title: {
							display: true,
							text: ''
						},
					},
					interaction: {
						intersect: false,
					},
					scales: {
						x: {
							
							display: true,
							title: {
								display: true
							}
						},
						y: {
							display: true,
							title: {
								display: true,
								text: 'Value'
							},
							suggestedMin: 0,
							suggestedMax: 10
						}
					}
				},
			})

			var ctx = $("#mycanvas");
			var barGraph = new Chart(ctx, {
				type: 'bar',
				data: chartdata
			})

			var ctx1 = $("#mycanvas1");
			var barGraph = new Chart(ctx1, {
				type: 'line',
				data: chartdata
			})

			var ctx2 = $("#mycanvas2");
			var barGraph = new Chart(ctx2, {
				type: 'doughnut',
				data: chartdata
			})
		},
		error: function(data) {
			console.log(data);
		}
	});


});