<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>NGO Registration</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="scss/main.css">
        <link rel="stylesheet" href="scss/skin.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <script src="./script/index.js"></script>
        <script src="script/jquery.min.js" type="text/javascript"></script>
        <script>
            function NgoRegistration()
            {
                var ngoname = $(".ngoname").val();
                var ngoemail= $(".ngoemail").val();
                var ngopasswd= $(".ngopasswd").val();
                var ngoaddress = $(".ngoaddress").val();
                var ngocontact = $(".ngocontact").val();
                var ngobankaccno = $(".ngobankaccno").val();
                var ngobankifsc = $(".ngobankifsc").val();
                var ngopanno = $(".ngopanno").val();
                 var ngoaadhaar = $(".ngoaadhaar").val();
                var ngolisenceno = $(".ngolisenceno").val();

                if (ngoname == "")
                {
                    alert("Plz enter the name of NGO!")
                    return false;
                } else if (ngoname.length < 2)
                {
                    alert("Name Should be more than two letters!")
                    return false;
                }

                
                if(ngoemail =="")
                {
                    alert("Pls Enter Email id");
                    return false;
                }
                if (ngopasswd == "")
                {
                    alert("Password is mandatory field");
                    return false;
                }
                else if (ngopasswd.length < 6 || ngopasswd.length > 20)
                {
                    alert("Password should be within 6 to 10 digites!");
                    return false;
                }
                if (ngoaddress == "")
                {
                    alert("Please Enter Your Address");
                    return false;
                }
                
                if (ngocontact == "")
                {
                    alert("Please Enter Your Contact Number");
                    return false;
                }
                if (ngocontact.length > 10 || ngocontact.length < 10)
                {
                    alert("Invalid Phone Number!")
                    return false;
                }
                if (ngobankaccno == "")
                {
                    alert("Please Enter Your Bank Account Number");
                    return false;
                }
                if (ngobankifsc == "")
                {
                    alert("Please Enter Your Bank IFSC");
                    return false;
                }
                if (ngopanno == "")
                {
                    alert("Please Enter Your Pan Number");
                    return false;
                }
                if (ngoaadhaar == "")
                {
                    alert("Please Enter Aadhaar Number");
                    return false;
                }
                if (ngolisenceno == "")
                {
                    alert("Please Enter Ngo Lisence Number");
                    return false;
                }
               


                
                RegisterNgo(ngoname,ngoemail , ngopasswd, ngoaddress,ngocontact,ngobankaccno,ngobankifsc,ngopanno,ngoaadhaar,ngolisenceno);


            }
            function RegisterNgo(ngoname,ngoemail, ngopasswd, ngoaddress,ngocontact,ngobankaccno,ngobankifsc,ngopanno,ngoaadhaar,ngolisenceno) {
                $.ajax({
                    url: "NgoReg",
                    type: 'POST',
//                    dataType: 'json',
                    data: {ngoname: ngoname,ngoemail : ngoemail, ngopasswd:ngopasswd, ngoaddress:ngoaddress,ngocontact:ngocontact,ngobankaccno:ngobankaccno,ngobankifsc:ngobankifsc,ngopanno:ngopanno,ngoaadhaar:ngoaadhaar,ngolisenceno:ngolisenceno},
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
                                    <h3>Ngo Register Here</h3>
                                    <p>Enter your details to sign up:</p>
                                </div>
                                <div class="form-top-right">
                                    <i class="fa fa-user"></i>
                                </div>
                            </div>
                            <div class="form-bottom">
                                <form role="form" action="NgoReg" class="login-form" onsubmit="return NgoRegistration()">
                                    <h7> Name:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
                                        <input type="text" name="ngoname"  class="form-control ngoname" placeholder=" Name" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Email:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-envelope"></i></span>
                                        <input type="email" name="ngoemail" class="form-control ngoemail" placeholder="Email" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Password:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-lock"></i></span>
                                        <input type="password" name="ngopasswd" class="form-control ngopasswd" placeholder="Password" aria-describedby="basic-addon1">
                                    </div>
                                    <span style="color:red">Note:Password should contain 6 to 10 digits,At least one digit, one upper case letter, one lower case letter and one special symbol like=mkyong1A@ </span>
                                    <br> <h7>Phone Number:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-phone"></i></span>
                                        <input type="number" name="ngocontact"  class="form-control ngocontact" placeholder="Phone Number" aria-describedby="basic-addon1">
                                    </div>
                                    <br>
                                    <h7>Address:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-book"></i></span>
                                        <input type="text" name="ngoaddress"  class="form-control ngoaddress" placeholder="Address" aria-describedby="basic-addon1">
                                    </div>
                                    
                                   
                                    <h7>Bank Acc number:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-book"></i></span>
                                        <input type="number" name="ngobankaccno" class="form-control ngobankaccno"  placeholder="Bank Account Number" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>IFSC Number:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-book"></i></span>
                                        <input type="text" name="ngobankifsc" class="form-control ngobankifsc" placeholder="IFSC" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Pan Number:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-book"></i></span>
                                        <input type="text" name="ngopanno" class="form-control ngopanno" placeholder="Pan Number" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Aadhaar Number:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-book"></i></span>
                                        <input type="number" name="ngoaadhaar" class="form-control ngoaadhaar" placeholder="Aadhaar Number" aria-describedby="basic-addon1">
                                    </div>
                                    <h7>Lisence Number:</h7>
                                    <div class="input-group form-group">
                                        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-book"></i></span>
                                        <input type="text" name="ngolisenceno" class="form-control ngolisenceno" placeholder="Lisence Number" aria-describedby="basic-addon1">
                                    </div>
                                    <button type="submit" class="btn btn-success">Register!</button>
                                </form>
                            </div>
                        </div>

                        <div class="social-login">
                            <h4><a href="NgoLogin.jsp">Login</a></h4>                        
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