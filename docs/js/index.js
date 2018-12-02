$(window).bind('scroll', function () {
    if ($(window).scrollTop() > ($(window).height() + 5)) {
        $('.navbar').removeClass('hide');
    } else {
        $('.navbar').addClass('hide');
    }
});

Highcharts.chart('chart-writer', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Browser episodes writtten by individuals, Seasons 1 - 26'
    },
    subtitle: {
        text: 'Click the columns to view by season breakdown. Source: <a href="https://github.com/hackmods/The-Simpsons-SQL">github.com/hackmods/The-Simpsons-SQL</a>.'
    },
    xAxis: {
        type: 'category'
    },
    yAxis: {
        title: {
            text: 'Episodes Written'
        }

    },
    legend: {
        enabled: false
    },
    plotOptions: {
        series: {
            borderWidth: 0,
            dataLabels: {
                enabled: true,
                format: '{point.y}'
            }
        }
    },

    tooltip: {
        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}</b> of episodes<br/>'
    },

    series: [{
        name: 'Writers',
        colorByPoint: true,
        data: [{
            name: 'John Swartzwelder',
            y: 59,
            drilldown: 'John Swartzwelder'
        }, {
            name: 'Matt Selman',
            y: 26,
            drilldown: 'Matt Selman'
        }, 
		{
            name: 'Tim Long',
            y: 24,
            drilldown: 'Tim Long'
        }, 
		{
            name: 'John Frink',
            y: 23,
            drilldown: 'John Frink'
        }, 
		{
            name: 'Jon Vitti',
            y: 23,
            drilldown: 'Jon Vitti'
        }, 
		{
            name: 'Ian Maxtone-Graham',
            y: 21,
            drilldown: 'Ian Maxtone-Graham'
        }, 
		{
            name: 'Joel H. Cohen',
            y: 21,
            drilldown: 'Joel H. Cohen'
        }, 
		
		]
    }],
    drilldown: {
        series: [{
            name: 'John Swartzwelder',
            id: 'John Swartzwelder',
            data: [
                [
                    'S 01',
                    4
                ],
				[
                    'S 02',
                    5
                ],[
                    'S 03',
                    5
                ],   [
                    'S 04',
                    3
                ],   [
                    'S 05',
                    5
                ],   [
                    'S 06',
                    4
                ],   [
                    'S 07',
                    5
                ],   [
                    'S 08',
                    5
                ],   [
                    'S 09',
                    3
                ],   [
                    'S 10',
                    5
                ], [
                    'S 11',
                    3
                ],   [
                    'S 12',
                    4
                ],   [
                    'S 13',
                    5
                ],   [
                    'S 14',
                    1
                ],   [
                    'S 15',
                    2
                ],        				
            ]
        }, {
            name: 'Matt Selman',
            id: 'Matt Selman',
            data: [
                [
                    'S 09',
                    1
                ],[
                    'S 10',
                    2
                ],[
                    'S 11',
                    2
                ],[
                    'S 12',
                    3
                ],[
                    'S 13',
                    1
                ],[
                    'S 14',
                    1
                ],[
                    'S 16',
                    3
                ],[
                    'S 17',
                    1
                ],[
                    'S 18',
                    1
                ],[
                    'S 19',
                    2
                ],[
                    'S 21',
                    2
                ],[
                    'S 22',
                    1
                ],[
                    'S 23',
                    1
                ],[
                    'S 24',
                    3
                ],[
                    'S 26',
                    2
                ]  
				]
            },
			{
            name: 'Tim Long',
            id: 'Tim Long',
            data: [
                [
                    'S 10',
                    1
                ],[
                    'S 11',
                    4
                ],[
                    'S 12',
                    2
                ],[
                    'S 13',
                    1
                ],[
                    'S 14',
                    2
                ],[
                    'S 16',
                    3
                ],[
                    'S 17',
                    1
                ],[
                    'S 18',
                    1
                ],[
                    'S 20',
                    1
                ],[
                    'S 21',
                    1
                ],[
                    'S 22',
                    2
                ],[
                    'S 23',
                    2
                ],[
                    'S 24',
                    2
                ],[
                    'S 25',
                    2
                ]			
            ]
        },
		{
            name: 'John Frink',
            id: 'John Frink',
            data: [
                [
                    'S 12',
                    4
                ],[
                    'S 13',
                    2
                ],[
                    'S 14',
                    2
                ],[
                    'S 15',
                    2
                ],[
                    'S 17',
                    2
                ],[
                    'S 18',
                    1
                ],[
                    'S 19',
                    1
                ],[
                    'S 20',
                    2
                ],[
                    'S 21',
                    2
                ],[
                    'S 22',
                    2
                ],[
                    'S 23',
                    1
                ],[
                    'S 24',
                    1
                ],[
                    'S 25',
                    1
                ]           
            ]
        },
		{
            name: 'Jon Vitti',
            id: 'Jon Vitti',
            data: [
                [
                    'S 01',
                    3
                ],[
                    'S 02',
                    3
                ],[
                    'S 03',
                    5
                ],[
                    'S 04',
                    4
                ],[
                    'S 05',
                    1
                ],[
                    'S 07',
                    1
                ],[
                    'S 13',
                    3
                ],[
                    'S 15',
                    2
                ],[
                    'S 16',
                    1
                ]		
            ]
        },
		{
            name: 'Ian Maxtone-Graham',
            id: 'Ian Maxtone-Graham',
            data: [
                [
                    'S 08',
                    1
                ],[
                    'S 09',
                    3
                ],[
                    'S 10',
                    1
                ],[
                    'S 11',
                    2
                ],[
                    'S 12',
                    1
                ],[
                    'S 13',
                    1
                ],[
                    'S 14',
                    2
                ],[
                    'S 15',
                    1
                ],[
                    'S 16',
                    1
                ],[
                    'S 17',
                    1
                ],[
                    'S 18',
                    1
                ],[
                    'S 20',
                    2
                ],[
                    'S 21',
                    1
                ],[
                    'S 23',
                    1
                ],  [
                    'S 24',
                    1
                ],[
                    'S 25',
                    1
                ]            
            ]
        },
		{
            name: 'Joel H. Cohen',
            id: 'Joel H. Cohen',
            data: [
                [
                    'S 13',
                    2
                ],[
                    'S 15',
                    2
                ],[
                    'S 16',
                    2
                ],[
                    'S 17',
                    3
                ],[
                    'S 18',
                    1
                ],[
                    'S 19',
                    3
                ],[
                    'S 20',
                    1
                ],[
                    'S 22',
                    3
                ],[
                    'S 24',
                    2
                ],[
                    'S 25',
                    1
                ],[
                    'S 26',
                    1
                ],			
            ]
        }]
	}    
});

Highcharts.chart('chart-pie', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Breakdown percentage of episodes written by writer.'
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
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [{
            name: 'John Swartzwelder',
            y: 59,
            sliced: true,
            selected: true
        }, {
            name: 'Matt Selman',
            y: 26,
        }, 
		{
            name: 'Tim Long',
            y: 24,
        }, 
		{
            name: 'John Frink',
            y: 23,
        }, 
		{
            name: 'Jon Vitti',
            y: 23,
        }, 
		{
            name: 'Ian Maxtone-Graham',
            y: 21,
        }, 
		{
            name: 'Joel H. Cohen',
            y: 21,
        }, 
		{
            name: 'Other',
            y: 403
        }, 
		
		
		]
    }]
});


Highcharts.chart('chart-spread', {
    chart: {
        type: 'line'
    },
    title: {
        text: 'Unique characters vs locations across the seasons'
    },
    subtitle: {
        text: 'Source: WorldClimate.com'
    },
    xAxis: {
        categories: ['S01','S02','S03','S04','S05','S06','S07','S08','S09','S10','S11','S12','S13','S14','S15','S16','S17','S18','S19','S20']
    },
    yAxis: {
        title: {
            text: 'Occurances'
        }
    },
    plotOptions: {
        line: {
            dataLabels: {
                enabled: true
            },
            enableMouseTracking: false
        }
    },
    series: [{
        name: 'Charcter',
        data: [231,336,439,460,484,474,470,416,458,456,482,462,438,526,490,428,442,444,424,387]
    }, {
        name: 'Location',
        data: [206,244,312,326,329,376,293,269,316,258,298,312,310,334,382,297,320,324,301,307]
    }]
});