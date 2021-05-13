


fetch(uri+"/api/admin/statistic/quy?year=" + 2021 ).then(res => res.json()).then(sum1 => {
    console.log(sum1);
    new Chart(document.getElementById("eventschart"), {
        type: 'doughnut',
        data: {
            labels: [
                'Quý 1',
                'Quý 2',
                'Quý 3',
                'Quý 4',
            ],
            datasets: [{
                label: 'Tổng tour được đặt trong quý',
                data: sum1,
                backgroundColor: [
                    'rgb(255, 99, 132)',
                    'rgb(54, 162, 235)',
                    'rgb(255, 205, 86)',
                    'rgb(255, 205, 178)'
                ],
                hoverOffset: 4
            }]
        },

    });
})