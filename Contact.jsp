<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Contact</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="scss/main.css">
    <link rel="stylesheet" href="scss/skin.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="./script/index.js"></script>
         <script src="script/jquery.min.js" type="text/javascript"></script>
        <script>
            function Contactus()
            {
                var name = $(".name").val();
                var email = $(".email").val();
                var phno = $(".phno").val();
                var subject = $(".subject").val();
                var message = $(".message").val();
                if (name == "")
                {
                    alert("Please Enter Your Name!")
                    return false;
                } 
                if (email == "")
                {
                    alert("Please Enter Your Email Id ")
                    return false;
                }
                if (phno == "")
                {
                    alert("Please Enter Your Contact Number ")
                    return false;
                }
                else if(phno.length<10 || phno.length>10)
                {
                    alert("Invalid Phone Number")
                    return false;
                }
                if (subject == "")
                {
                    alert("Please Enter The Subject ")
                    return false;
                }
                if (message == "")
                {
                    alert("Please Enter Your Message ")
                    return false;
                }
            }
        </script>
</head>

<body id="wrapper">

    <section id="top-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 top-header-links">
                    <ul class="contact_links">
                        <li><i class="fa fa-phone"></i><a href="#">+91 9620765819</a></li>
                        <li><i class="fa fa-envelope"></i><a href="#">rashtriyamahilasevakendra@gmail.com</a></li>
                    </ul>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <ul class="social_links">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        </div>

    </section>

    <header>
        <nav class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
                    <a class="navbar-brand" href="#">
                        <h1>Rashtriya</h1><span>Mahila Seva Kendra Pvt Ltd</span></a>
                </div>
                <div id="navbar" class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                       
                        <li><a href="Faq.jsp">FAQ</a></li>
                        <li class="active"><a href="#contact">Contact</a></li>
                        
                    </ul>
                </div>
                
            </div>
        </nav>
        
    </header>
    <section id="top_banner">
        <div class="banner">
            <div class="inner text-center">
                <h2>Feel Free To Get To Us</h2>
            </div>
        </div>
        <div class="page_info">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-8 col-xs-6">
                        <h4>Contact</h4>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6" style="text-align:right;">Home<span class="sep"> / </span><span class="current">Contact</span></div>
                </div>
            </div>
        </div>

        </div>
    </section>
    <section id="contact-page">
        <div class="container">
            <div class="section-heading text-center">
                <h2>Drop your <span>Message</span></h2>
                <p class="subheading">We Will Answer For All Your Queries </p>
            </div>
            <div class="row contact-wrap">
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form" class="contact-form" name="contact-form"  action="Contact" onsubmit="return Contactus()">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Name *</label>
                            <input type="text" name="name" placeholder="Name" class="form-control name" >
                        </div>
                        <div class="form-group">
                            <label>Email *</label>
                            <input type="email" name="email" placeholder="Email" class="form-control email" >
                        </div>
                        <div class="form-group">
                            <label>Phone</label>
                            <input type="number" name="phno" placeholder="Phone" class="form-control phno">
                        </div>
                        
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <label>Subject *</label>
                            <input type="text" name="subject"  placeholder="Subject" class="form-control subject" >
                        </div>
                        <div class="form-group">
                            <label>Message *</label>
                            <input type="text" name="message" id="message" placeholder="Message" class="form-control message" rows="8">
                        </div>
                        <div class="form-group">
                           <button type="submit" class="btn btn-success">Submit Message</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <section id="contact">
        <div class="overlay">
            <div class="gmap-area">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="gmap">
                                <iframe frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3898.488558364723!2d76.71866701494967!3d12.282850732939034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3baf6e100c53e49f%3A0xc881a3fe4090fc62!2sBig%20Banyan%20Tree!5e0!3m2!1sen!2sin!4v1593851053438!5m2!1sen!2sin"></iframe>
                            </div>
                        </div>
                        <div class="col-sm-7 map-content">
                            <ul class="row">
                                <li class="col-sm-6">
                                    <address>
									<h5>Head Office</h5>
									<p>Elite Info Management System <br>
									11, Tnarsipur Road,<br>
									Near Big Banyan Tree,<br>
									Nadanahalli, Mysore,<br>
									Karnataka, India. </p>
										<p>Phone:+91 9620765819 <br>
									Email Address:yeshu09ik@gmail.com</p>
								</address>

                                </li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  

    <section id="bottom-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12 btm-footer-links">
                    <a href="Pp.jsp">Privacy Policy</a>
                    <a href="Tnc.jsp">Terms And Conditions</a>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 copyright">
                    Developed by <a href="#">Elite Info Management System</a> 
                </div>
            </div>
        </div>
    </section>
</body>

</html>