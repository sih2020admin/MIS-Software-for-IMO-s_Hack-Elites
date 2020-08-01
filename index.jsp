<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Home</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="scss/main.css">
        <link rel="stylesheet" href="scss/skin.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <script src="./script/index.js"></script>
    </head>

    <body id="wrapper">
        <%@include file="Header.jsp" %>
        <div id="myCarousel" class="carousel slide" >
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="fill" style="background-image:url('img/banner1.jpg');"></div>
                    <div class="carousel-caption slide-up">
                        <h1 class="banner_heading">RMB <span> Embracing </span> Ingenuity </h1>
                        <p class="banner_txt">Our Core Team Always Works Hard To Provide Effortless Experiences And Trusted Advices For You </p>
                        <div class="slider_btn">
                            <button type="button" class="btn-primary"><a href="Gallery.jsp">Gallery</a>  <i class="fa fa-caret-right"></i></</button>

                        </div>
                    </div>
                </div>
                
                <div class="item">
            <div class="fill" style="background-image:url('img/banner-slide-2.jpg');"></div>
            <div class="carousel-caption slide-up">
                <h1 class="banner_heading">Financing For<span> Your </span>better future</h1>
                <p class="banner_txt">We Follow The Principles Of By The People,For The People. So That both Us And Our Customers Have A Good Future.</p>
                <div class="slider_btn">
                  <button type="button" class="btn-primary"><a href="Gallery.jsp">Gallery</a>  <i class="fa fa-caret-right"></i></</button>


                </div>
            </div>
            
        </div>
                     <div class="item">
            <div class="fill" style="background-image:url('img/banner-slide-3.jpg');"></div>
            <div class="carousel-caption slide-up">
                <h1 class="banner_heading">Heart Of <span>Perfect </span>Financial Planning</h1>
                <p class="banner_txt">Perfection In Every Work Is One Of Our Motto And Our Employees Will Assist Our Customers With Great care And Plans For Their Betterment.</p>
                <div class="slider_btn">
                   <button type="button" class="btn-primary"><a href="Gallery.jsp">Gallery</a>  <i class="fa fa-caret-right"></i></</button>

                </div>   
            </div>
        </div>
    </div>
          

            <!-- Left and right controls -->

    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <i class="fa fa-angle-left" aria-hidden="true"></i>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <i class="fa fa-angle-right" aria-hidden="true"></i>
        <span class="sr-only">Next</span>
    </a>

</div>
        <%@include file="Footer.jsp" %>
   

</html>