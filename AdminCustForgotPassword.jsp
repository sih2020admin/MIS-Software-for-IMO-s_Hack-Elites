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
            function Otp()
            {
                var otp = $(".otp").val();
                if (otp == "")
                {
                    alert("Plz enter your OTP!")
                    return false;
                } else if (otp.length < 4)
                {
                    alert("OTP Will Have 4 Digits!")
                    return false;
                }
               
                
            }
        </script>
    </head>

    <body id="wrapper">
        <%@include file="Header.jsp" %>
        <section id="features">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-xs-12 block">
                    </div>
                    <div class="col-md-6 col-xs-12 block">
                        <h3>Change Password</h3>
                        <div class="form-bottom">
                            <form role="form" action="CustForgotPassword" class="login-form" method="post" onsubmit="return Otp()">
                                <%
                                    
                                    String phone=(String)session.getAttribute("cfphone");
                                    String passwd=(String)session.getAttribute("cpasswd");
                                    String cfotp=(String)session.getAttribute("cfotp");
                                    String conpasswd=(String)session.getAttribute("cfconpasswd");
                                %>
                                <h6>Enter Phone Number:</h6>
                                <div class="input-group form-group">
                                    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-unlock"></i></span>
                                    <input type="text" class="form-control" value="<%=phone%>" name="phone" readonly="" aria-describedby="basic-addon1">
                                </div>
                                 <h6>Enter One Time Password:</h6>
                                <div class="input-group form-group">
                                    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-unlock"></i></span>
                                    <input type="number" class="form-control otp" name="otp" placeholder="OTP"   aria-describedby="basic-addon1">
                                </div>
                                <h6>Enter New Password:</h6>
                                <div class="input-group form-group">
                                    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-unlock"></i></span>
                                    <input type="password" class="form-control" name="passwd" value="<%=passwd%>" name="newpasswd" readonly="" aria-describedby="basic-addon1">
                                </div>
                                <h6>Enter Confirm Password:</h6>
                                <div class="input-group form-group">
                                    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-unlock"></i></span>
                                    <input type="password" class="form-control" name="conpasswd" value="<%=conpasswd%>" name="newpasswd" readonly="" aria-describedby="basic-addon1">
                                </div>
                                <button type="submit" class="btn btn-success">Submit</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-12 block">
                    </div>
                </div>
            </div>
        </section>
        <%@include file="Footer.jsp" %>


</html>