$(function () {
        $('#container-ug1').highcharts({
            chart: {
                type: 'column',
                margin: [ 50, 50, 100, 80]
            },
            title: {
                text: 'Undergraduate Offer per 2011'
            },
            xAxis: {
                categories: [
                    'San Jose State University',
                    'University of Los Angeles',
                    'San Francisco State University',
                    'NYU _ Polytechnic',
                    'Texas A & M University',
                ],
                labels: {
                    rotation: -45,
                    align: 'right',
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif'
                    }
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: 'No. of Offer'
                }
            },
            legend: {
                enabled: false
            },
            tooltip: {
                pointFormat: 'UG Offer in 2011: <b>{point.y:.1f} tens</b>',
            },
            series: [{
                name: 'Population',
                data: [1134, 21, 56, 44, 98],
                dataLabels: {
                    enabled: true,
                    rotation: -90,
                    color: '#FFFFFF',
                    align: 'right',
                    x: 4,
                    y: 10,
                    style: {
                        fontSize: '13px',
                        fontFamily: 'Verdana, sans-serif',
                        textShadow: '0 0 3px black'
                    }
                }
            }]
        });
    });
$(function () {
    $('#container-ug2').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Enrollement per 2011'
        },
        tooltip: {
    	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000000',
                    connectorColor: '#000000',
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Browser share',
            data: [
                ['University of Los Angeles',   45.0],
                ['San Francisco State University',       26.8],
                {
                    name: 'San Jose State University',
                    y: 12.8,
                    sliced: true,
                    selected: true
                },
                ['NYU - Polytechnique',    8.5],
                ['Texas A & M University',     6.2],
            ]
        }]
    });
});