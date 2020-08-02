<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Forgot Password</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="scss/main.css">
        <link rel="stylesheet" href="scss/skin.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
        <script src="./script/index.js"></script>
            <script src="script/jquery.min.js" type="text/javascript"></script>
        <script>
            function FPassword()
            {
                var phone = $(".phone").val();
                var passwd = $("passwd").val();
                var conpasswd = $("conpasswd").val();
                if (phone == "")
                {
                    alert("Please enter your Contact Number!")
                    return false;
                } 
                else if (phone.length < 6 || phone.length > 10)
                {
                    alert("Invalid Phone Number")
                    return false;
                }   
                if (passwd == "")
                {
                    alert("Please Enter Your Password ")
                    return false;
                }
        else if (passwd.length < 6 || passwd.length > 10)
                {
                    alert("Password Should be between 6 to 10 digits")
                    return false;
                }   
                 if (conpasswd == "")
                {
                    alert("Please Enter Your Password ")
                    return false;
                }
        else if (conpasswd.length < 6 || conpasswd.length > 10)
                {
                    alert("Password Should be between 6 to 10 digits")
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
                        <h3>Forgot Password</h3>
                        <div class="form-bottom">
                            <form role="form" action="SendCusOTP" class="login-form" method="post" onsubmit="return FPassword()">
                                <h6>Enter Phone Number:</h6>
                                <div class="input-group form-group">
                                    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-unlock"></i></span>
                                    <input type="number" class="form-control phone" name="phone" placeholder="Phone" aria-describedby="basic-addon1">
                                </div>

                                <h6>Enter New Password:</h6>
                                <div class="input-group form-group">
                                    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-unlock"></i></span>
                                    <input type="password" class="form-control passwd" name="passwd" placeholder=" Password" aria-describedby="basic-addon1">
                                </div>
                                <h6>Enter Confirm Password:</h6>
                                <div class="input-group form-group">
                                    <span class="input-group-addon" id="basic-addon1"><i class="fa fa-unlock"></i></span>
                                    <input type="password" class="form-control conpasswd" name="conpasswd" placeholder="Confirm Password" aria-describedby="basic-addon1">
                                </div>
                               <button type="submit" class="btn btn-success">Change!</button>
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