<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Admin Login</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="scss/main.css">
        <link rel="stylesheet" href="scss/skin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <script src="./script/index.js"></script>
        <script src="script/jquery.min.js" type="text/javascript"></script>
        <script>
            function CLogin()
            {

                var cphno = $(".cphno").val();
                var cpasswd = $(".cpasswd").val();
                if (cphno == "")
                {
                    alert("Please Enter Your Phone Number")
                    return false;
                }
                else if (cphno.length > 10 || cphno.length < 10)
                {
                    alert("Not valid phone number!")
                    return false;
                }
                if (cpasswd == "")
                {
                    alert("Please Enter Your Password")
                    return false;
                }
                else if (cpasswd.length < 6 || cpasswd.length > 10)
                {
                    alert("Password should be 6 to 10 digites!");
                    return false;
                }


            }
            function CLicktoVisiblePassword()
            {
//                alert("calling");
                var upass = $(".cpasswd").val();
                $(".cpasswd").attr('type', 'text');
                $(".cpasswd").val(upass);
                $(".showclass").hide();
                $(".hideclass").show();

            }

            function CLicktoVisiblePassword1()
            {
                var upass = $(".cpasswd").val();
                $(".cpasswd").attr('type', 'password');
                $(".showclass").show();
                $(".hideclass").hide();


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
                                                    <h2>Log In<span>Here</span></h2>
                                                    <p class="subheading">Log in to get a personalised experience of your own account and to enjoy the benefits we provide.
                                                    </p>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-2 icon"><i class="fa fa-bullhorn"></i></div>
                                                    <div class="col-xs-10 datablock">
                                                        <h4>Powerful Features</h4>
                                                        <p>You can use our website features to ease your experience with us.</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-2 icon"><i class="fa fa-support"></i></div>
                                                    <div class="col-xs-10 datablock">
                                                        <h4>Customer Support</h4>
                                                        <p>Providing a 24/7 assistance to our customers , so that they feel free and ease to use our website and do transactions.</p>
                                                    </div>
                                                </div>

                    </div>
                    <div class="col-md-6 col-sm-12">

                        <div class="form-box">
                            <div class="form-top">
                                <div class="form-top-left">
                                    <h3>Login to our site</h3>
                                    <p>Enter Phone No and password to log in:</p>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa fa-user"></i>
                                </div>
                            </div>
                            <div class="form-bottom">
                                <form role="form" action="CustLogin" class="login-form" method="post" onsubmit="return CLogin()">
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-phone"></i></span>
                                        <input type="number" name="cphno"  class="form-control cphno" placeholder="Phone" aria-describedby="basic-addon1">
                                    </div>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><span onclick="CLicktoVisiblePassword()"  class="showclass" ><i class="fa fa-eye"></i></span><span style="display: none" onclick="CLicktoVisiblePassword1()" class="hideclass" ><i class="fa fa-eye-slash"></i></span></span>
                                        <input type="password" name="cpasswd"  class="form-control cpasswd  " placeholder="Password" aria-describedby="basic-addon1">
                                    </div>

                                    <button type="submit" class="btn ">Login!</button>
                                </form>
                                <a href="CustReg.jsp"><span>New User register here?</span></a>
                                <p></p>
                                <a href="ForgotPassword.jsp"><span>Forgot Password?</span></a>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <%@include file="Footer.jsp" %>


</html>