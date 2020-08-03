<!DOCTYPE html> 
<html lang="en"> 

    <head> 
        <meta charset="UTF-8"> 
        <meta name="viewport" content= 
              "width=device-width, initial-scale=1.0"> 

        <title>Pie Chart</title> 

        <style> 
            .piechart { 
                margin-top: 100px; 
                display: block; 
                position: absolute; 
                width: 400px; 
                height: 400px; 
                border-radius: 50%; 
                background-image: conic-gradient( 
                    pink 70deg,  
                    lightblue 0 235deg,  
                    orange 0); 
            } 

            body, 
            .piechart { 
                display: flex; 
                /*justify-content: center;*/ 
                /*align-items: center;*/ 
            } 
        </style> 
    </head> 

    <body> 
        <br><br>
        <h1>Pie Chart</h1>
        <hr>
        <div class="piechart"></div> 
    </body> 

</html> 