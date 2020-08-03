<!DOCTYPE HTML>
<html>
    <head>
        <script type="text/javascript">
            window.onload = function() {
                var chart = new CanvasJS.Chart("chartContainer",
                        {
                            title: {
                                text: "Gaming Consoles Sold in 2012"
                            },
                            legend: {
                                maxWidth: 350,
                                itemWidth: 120
                            },
                            data: [
                                {
                                    type: "pie",
                                    showInLegend: true,
                                    legendText: "{indexLabel}",
                                    dataPoints: [
                                        {y: 375000, indexLabel: "NGO-1 "},
                                        {y: 210000, indexLabel: "NGO-2"},
                                        {y: 400000, indexLabel: "NGO-3"},
                                        {y: 100000, indexLabel: "NGO-4"}

                                    ]
                                }
                            ]
                        });
                chart.render();
            }
        </script>
        <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    </head>
    <body>
        <div id="chartContainer" style="height: 300px; width: 100%;"></div>
    </body>
</html>