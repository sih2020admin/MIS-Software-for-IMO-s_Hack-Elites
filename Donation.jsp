<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Donation</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="scss/main.css">
        <link rel="stylesheet" href="scss/skin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <script src="./script/index.js"></script>
         <script src="script/jquery.min.js" type="text/javascript"></script>
        <script>
            function Donation()
            {
                var dname = $(".dname").val();
                var demail = $(".demail").val();
                var dphno = $(".dphno").val();
                var daddress = $(".daddress").val();
                if (dname == "")
                {
                    alert("Pease enter your name!")
                    return false;
                } else if (dname.length < 2)
                {
                    alert("Name Should be more than two letters!")
                    return false;
                }
                 if (dphno == "")
                {
                    alert("Please Enter Your Contact Number");
                    return false;
                }
                if (dphno.length > 10 || dphno.length < 10)
                {
                    alert("Invalid Phone Number!")
                    return false;
                }
                if (demail == "")
                {
                    alert("Please Enter Your Email Id");
                    return false;
                }
               
                if (daddress == "")
                {
                    alert("Please Enter Your Address");
                    return false;
                }
                
            }
        </script>
    </head>
    <body id="wrapper">
        <%@include file="Header.jsp" %>
        <section id="login-reg">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-12 forms-right-icons">
                        <div class="section-heading">
                            <h2>Thinking Of<span>Donating</span></h2>
                            <p class="subheading">Want To Donate Something For Good Cause.
                            </p>
                        </div>
                        <div class="row">
                            <div class="col-xs-2 icon"><i class="fa fa-bullhorn"></i></div>
                            <div class="col-xs-10 datablock">
                                <h4>How To Donate:</h4>
                                <p>
        <p>"If we ever need a helping hand, we'll find one at the end of our arm" 
           Here is where you can get in touch with our organization by contacting Us directly as you'll be assured by their guidance to carry on your donation process
            or You may fill the Form given beside with utmost accuracy and our organization will get in touch with you asap.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="form-box">
                            <div class="form-top">
                                <div class="form-top-left">
                                    <h3>Please Fill The form</h3>
                                  </div>
                                <div class="form-top-right">
                                    <i class="fa fa-user"></i>
                                </div>
                            </div>
                            <div class="form-bottom">
                                <form role="form" action="Donation" class="login-form" method="post" onsubmit="return Donation()">
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
                                        <input type="text" name="dname" class="form-control dname" placeholder="Donor Name" aria-describedby="basic-addon1">
                                    </div>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-phone"></i></span>
                                        <input type="number" name="dphno" class="form-control dphno" placeholder="Phone Number" aria-describedby="basic-addon1">
                                    </div>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-envelope"></i></span>
                                        <input type="email" name="demail" class="form-control demail" placeholder="Email Id" aria-describedby="basic-addon1">
                                    </div>
                                     <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-envelope"></i></span>
                                        <input type="text" name="daddress" class="form-control daddress" placeholder="Address" aria-describedby="basic-addon1">
                                    </div>
                                    <button type="submit" class="btn ">Submit!</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                    </section>
               <%@include file="Footer.jsp" %>
</html>