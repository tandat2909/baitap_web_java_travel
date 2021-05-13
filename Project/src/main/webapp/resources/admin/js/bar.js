fetch(uri+"/api/admin/statistic?year=" + 2021 + "&month=" +4).then(res => res.json()).then(sum => {

	new Chart(document.getElementById("barchart"), {
		type: 'bar',
		data: {
			labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
			datasets: [{
				data: sum,
				label: 'Tổng tour được đặt trong tháng',
				backgroundColor: "#4755AB",
				borderWidth: 2,
			}, ]
		},
		options: {
			responsive: true,
			legend: {
				position: 'top',
			},
		}
	});
})

/*
new Chart(document.getElementById("barchart"), {
	type: 'bar',
	data: {
		labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
		datasets: [{
			data: sum,
			label: 'Dataset 1',
			backgroundColor: "#4755AB",
			borderWidth: 1,
		}, {
			data: [30, 10, 70, 15, 30, 20, 70, 80],
			label: 'Dataset 2',
			backgroundColor: "#E7EDF6",
			borderWidth: 1,
		}]
	},
	options: {
		responsive: true,
		legend: {
			position: 'top',
		},
	}
});*/
