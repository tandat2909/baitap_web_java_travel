fetch(uri+"/api/admin/statistic?year=" + 2021 + "&month=" +4).then(res => res.json()).then(sum =>{


	new Chart(document.getElementById("linechart"), {
		type: 'line',
		data: {
			labels: sum.key,
			datasets: [{
				label: 'My First dataset',
				backgroundColor: window.chartColors.navy,
				borderColor: window.chartColors.navy,
				data: sum,
				fill: false,
			}, {
				label: 'My Second dataset',
				fill: false,
				backgroundColor: window.chartColors.purple,
				borderColor: window.chartColors.purple,
				data: sum,
			}]
		},
		options: {
			responsive: true,
			// title: {
			// 	display: true,
			// 	text: 'Chart.js Line Chart'
			// },
			tooltips: {
				mode: 'index',
				intersect: false,
			},
			hover: {
				mode: 'nearest',
				intersect: true
			},
			scales: {
				xAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: 'Month'
					}
				}],
				yAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: 'Value'
					}
				}]
			}
		}
	});
})


