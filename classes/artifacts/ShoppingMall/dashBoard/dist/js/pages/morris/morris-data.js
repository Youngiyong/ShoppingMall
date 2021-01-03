// Dashboard 1 Morris-chart
$(function () {
    "use strict";
Morris.Area({
        element: 'morris-area-chart',
        data: getCateData,
        xkey: 'period',
        ykeys: ['가방', '바지','반팔','셔츠'],
        labels: ['가방', '바지','반팔','셔츠'],
        pointSize: 3,
        fillOpacity: 0,
        pointStrokeColors:['#FAF88B', '#01caf1','#F07A7A','#8783F0'],
        behaveLikeLine: true,
        gridLineColor: '#e0e0e0',
        lineWidth: 3,
        hideHover: 'auto',
        lineColors: ['#FAF88B', '#01caf1','#F07A7A','#8783F0'],
        resize: true
        
    });

Morris.Area({
        element: 'morris-area-chart2',
        data: getHourlyData,
        xkey: "hour",
        ykeys: ['SiteA'],
        labels: ['Site A',],
      	parseTime: false,
        pointSize: 0,
        fillOpacity: 0.6,
        pointStrokeColors:['#5f76e8'],
        behaveLikeLine: true,
        gridLineColor: '#e0e0e0',
        lineWidth: 0,
        smooth: false,
        hideHover: 'auto',
        lineColors: ['#5f76e8' ],
        resize: true
        
    });


// LINE CHART
        var line = new Morris.Line({
          element: 'morris-line-chart',
          resize: true,
          data: arr,
          xkey: 'y',
          ykeys: ['item1'],
          labels: ['Item 1'],
          gridLineColor: '#eef0f2',
          lineColors: ['#5f76e8'],
          lineWidth: 1,
          hideHover: 'auto'
        });
 // Morris donut chart
        
    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Sales revenue",
            value: 12,
        },   {
            label: "Advertising revenue",
            value: 30
        }, {
            label: "Affiliate revenue",
            value: 20
        }],
        resize: true,
        colors:['#5f76e8', '#01caf1', '#8fa0f3']
    });

// Morris bar chart
    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90,
            c: 60
        }, {
            y: '2007',
            a: 75,
            b: 65,
            c: 40
        }, {
            y: '2008',
            a: 50,
            b: 40,
            c: 30
        }, {
            y: '2009',
            a: 75,
            b: 65,
            c: 40
        }, {
            y: '2010',
            a: 50,
            b: 40,
            c: 30
        }, {
            y: '2011',
            a: 75,
            b: 65,
            c: 40
        }, {
            y: '2012',
            a: 100,
            b: 90,
            c: 40
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['A', 'B'],
        barColors:['#01caf1', '#5f76e8'],
        hideHover: 'auto',
        gridLineColor: '#eef0f2',
        resize: true
    });
// Extra chart
 Morris.Area({
        element: 'extra-area-chart',
        data: [{
                    period: '2010',
                    iphone: 0,
                    ipad: 0,
                    itouch: 0
                }, {
                    period: '2011',
                    iphone: 50,
                    ipad: 15,
                    itouch: 5
                }, {
                    period: '2012',
                    iphone: 20,
                    ipad: 50,
                    itouch: 65
                }, {
                    period: '2013',
                    iphone: 60,
                    ipad: 12,
                    itouch: 7
                }, {
                    period: '2014',
                    iphone: 30,
                    ipad: 20,
                    itouch: 120
                }, {
                    period: '2015',
                    iphone: 25,
                    ipad: 80,
                    itouch: 40
                }, {
                    period: '2016',
                    iphone: 10,
                    ipad: 10,
                    itouch: 10
                }


                ],
                lineColors: ['#01caf1', '#5f76e8'],
                xkey: 'period',
                ykeys: ['iphone', 'ipad'],
                labels: ['Site A', 'Site B'],
                pointSize: 0,
                lineWidth: 0,
                resize:true,
                fillOpacity: 0.8,
                behaveLikeLine: true,
                gridLineColor: '#e0e0e0',
                hideHover: 'auto'
        
    });
 });    