<! DOCTYPE html>
<html>
    <head>
        <title>IMAGE GALLERY</title>
        <style>
            *{
                box-sizing:border-box;
            }
            body{
                margin:0;
                background:aliceblue;
            }
            nav{
                background:#000;
                width:100%;
                overflow:auto;
            }
            ul{
                margin:0;
                padding:0;
                list-style:none;
            }
            li{
                float:left;
            }
            nav a{
                width:120px;
                display:block;
                text-decoration:none;
                text-align:center;
                background:#000;
                font-size:15px;
                color:white;
                padding:15px 10px;
                font-family:arial;
            }
            nav a:hover{
                background:skyblue;
                color:black;
            }
            .container{
                max-width:1100px;
                margin:auto;
                background:#f2f2f2;
                overflow:auto;
            }
            .gallery{
                margin:5px;
                border:1px solid #ccc;
                float:left;
                width:350px;
            }
            .gallery img{
                width: 100%;
                height: 250px;
            }
            footer{
                padding:10px;
                font-size:17px;
                font-weight:bold;
                text-align:center;
                background:#594848;
                color:red;
                font-family:arial;
                letter-spacing:1px;
            }
        </style>
    </head>
    <body>
        <nav>
            <ul>
                <li><a href ="index.jsp">HOME</a></li>
            </ul>

        </nav>
        <div class ="container">
            <div class="gallery">
                <img src ="img/gal1.jpg">
            </div>	
            <div class="gallery">
                <img src ="img/gal2.jpg">
            </div>	
            <div class="gallery">
                <img src ="img/gal3.jpg">
            </div>		
            <div class="gallery">
                <img src ="img/gal4.jpg">
            </div>	
            <div class="gallery">
                <img src ="img/gal5.jpg">
            </div>
            <div class="gallery">
                <img src ="img/gal6.jpg">
            </div>
            <div class="gallery">
                <img src ="img/gal7.jpg">
            </div>
            <div class="gallery">
                <img src ="img/gal8.jpg">
            </div>
            <div class="gallery">
                <img src ="img/gal9.jpg">
            </div>
            <div class="gallery">
                <img src ="img/gal10.jpg">
            </div>
            <div class="gallery">
                <img src ="img/gal11.jpg">
            </div>
            
        </div>	
    </body>
</html>