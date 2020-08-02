<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Customer Registration</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="scss/main.css">
        <link rel="stylesheet" href="scss/skin.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <script src="./script/index.js"></script>
        <script src="script/jquery.min.js" type="text/javascript"></script>
        <script>
            function CRegistration()
            {
                var cname = $(".cname").val();
                var clname = $(".clname").val();
                var cemail = $(".cemail").val();
                var cpasswd = $(".cpasswd").val();
                var cphno = $(".cphno").val();
                var cage = $(".cage").val();
                var caddress = $(".caddress").val();
                if (cname == "")
                {
                    alert("Plz enter your name!")
                    return false;
                } else if (cname.length < 2)
                {
                    alert("Name Should be more than two letters!")
                    return false;
                }

                if (cpasswd == "")
                {
                    alert("Password is mandatory field");
                    return false;
                }
                else if (cpasswd.length < 6 || cpasswd.length > 20)
                {
                    alert("Password should be within 6 to 10 digites!");
                    return false;
                }
                if (cemail == "")
                {
                    alert("Please Enter Your Email Id");
                    return false;
                }
                if (cphno == "")
                {
                    alert("Please Enter Your Contact Number");
                    return false;
                }
                if (cphno.length > 10 || cphno.length < 10)
                {
                    alert("Invalid Phone Number!")
                    return false;
                }
                if (cage == "")
                {
                    alert("Please Enter Your Age");
                    return false;
                }

                if (caddress == "")
                {
                    alert("Please Enter Your Address");
                    return false;
                }
                RegisterUser(cname, clname, cemail, cpasswd, cphno, cage, caddress);


            }
            function RegisterUser(cname, clname, cemail, cpasswd, cphno, cage, caddress) {
                $.ajax({
                    url: "Reg",
                    type: 'POST',
//                    dataType: 'json',
                    data: {cname: cname, clname: clname, cemail: cemail, cpasswd: cpasswd, cphno: cphno, cage: cage, caddress: caddress},
                    success: function(response) {
                        var data = response.categories;
                        var d = $.parseJSON(data);
                        $.each(d, function(idx, obj) {
//                            alert(d);
                        }
                    }
                });
            }
        </script>
    </head>

    <body id="wrapper">
        <%@include file="Header.jsp" %>




        <section id="login-reg">
            <div class="container">
                <!-- Top content -->
                <div class="row">
                    <div class="col-md-6 col-sm-12 forms-right-icons">
                        <div class="section-heading">
                            <h2>Sign In With <span>Us</span></h2>
                            <p class="subheading">Join us to get a personalised experience of your own account and to enjoy the benefits we provide.
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
                                    <h3>Register Here</h3>
                                    <p>Enter your details to sign up:</p>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa fa-user"></i>
                                </div>
                            </div>
                            <div class="form-bottom">
                                <form role="form" action="Reg" class="login-form" onsubmit="return CRegistration()">
                                    <h7>First Name:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
                                        <input type="text" name="cname"  class="form-control cname" placeholder="First Name" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Last Name:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
                                        <input type="text" name="clname" class="form-control clname" placeholder="Last Name" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Email Id:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-envelope"></i></span>
                                        <input type="email" name="cemail" class="form-control cemail" placeholder="Email Id" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Password:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-key"></i></span>
                                        <input type="password" name="cpasswd"  class="form-control cpasswd" placeholder="Password" aria-describedby="basic-addon1">
                                    </div>
                                    <span style="color:red">Note:Password should contain 6 to 10 digits,At least one digit, one upper case letter, one lower case letter and one special symbol like=mkyong1A@ </span>
                                    <br>
                                    <h7>Phone Number:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-phone"></i></span>
                                        <input type="number" name="cphno"  class="form-control cphno" placeholder="Phone Number" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Age:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
                                        <input type="number" name="cage" class="form-control cage"  placeholder="Age" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Address:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
                                        <input type="text" name="caddress" class="form-control caddress" placeholder="Address" aria-describedby="basic-addon1">
                                    </div>
                                    <button type="submit" class="btn btn-success">Register!</button>
                                </form>
                            </div>
                        </div>

                        <div class="social-login">
                            <h4><a href="CustLogin.jsp">Login</a></h4>                        
                        </div>

                    </div>

                </div>

            </div>


        </section>

        <%@include file="Footer.jsp" %>
        <!--/.nav-ends -->
        <a class="open" href="#"><span><i class="fa fa-gear fa-spin"></i></span></a>
    </div>

</html>