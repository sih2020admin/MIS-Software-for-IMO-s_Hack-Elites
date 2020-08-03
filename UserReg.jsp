<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Simple Responsive Admin</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <script src="assets/js/jquery-1.11.1.min.js" type="text/javascript"></script>
        <!-- CUSTOM STYLES-->
        <link href="assets/css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <script>
            function Validation() {
                var uname = $(".uname").val();
                var upass = $(".upass").val();
                var uemail = $(".uemail").val();
                var uphone = $(".uphone").val();
                var a = uemail.indexOf("@");
                var d = uemail.lastIndexOf(".");
                var reg = /^[A-Za-z]+$/;
                if (uname.match(reg)) {
//                    return true;
                } else {
                    alert("Enter Valid Username");
                    return false;
                }
                if (a < 1 || d < (a + 2) || (d + 2) >= uemail.length)
                {
                    alert("not valid email");
                    return  false;
                } else if (upass == "")
                {
                    alert("Password Field is Mandatory");
                    return  false;
                } else if (upass.length > 10 || upass.length < 6)
                {
                    alert("Password should be 6 to 10 digit");
                    return  false;
                } else if (uphone.match(reg) || uphone == '') {
                    alert("Not a Valid Phone Number")
                    return  false;

                } else
                if (uphone.length > 10 || uphone.length < 10)
                {
                    alert("Phone Number should be  to 10 digit");
                    return  false;
                }
            }
            function CLicktoVisiblePassword()
            {
//                alert("calling");
                var upass = $(".upass").val();
                $(".upass").attr('type', 'text');
                $(".upass").val(upass);
                $(".showclass").hide();
                $(".hideclass").show();

            }

            function CLicktoVisiblePassword1()
            {
                var upass = $(".upass").val();
                $(".upass").attr('type', 'password');
                $(".showclass").show();
                $(".hideclass").hide();


            }

        </script>
    </head>
    <body>
        <%
            String res = request.getParameter("res");

        %>

        <div id="wrapper">
            <%@include file="Header.jsp" %>
            <!-- /. NAV TOP  -->
            <%@include file="NavBar.jsp" %>
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper" >
                <div id="page-inner">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>USER DASHBOARD</h2>   
                        </div>
                    </div>              
                    <!-- /. ROW  -->
                    <hr />
                    <div class="row">
                        <div class="col-lg-12 ">
                            <div class="alert alert-info">
                                <strong>Welcome to  </strong> Registraion
                            </div>

                        </div>
                    </div>
                    <!-- /. ROW  --> 
                    <div class="row text-center pad-top">
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                        </div> 
                        <div class="col-lg-8 col-md-8 col-sm-8 ">
                            <h1>User Registration</h1>
                            <div class="div-square">
                                <br>
                                    <form class="form_table" action="UserReg" method="post" onsubmit="return  Validation()">
                                        <!--<form class="form_table" action="UserReg" method="post" onsubmit="return  validate()">-->
                                        <table>
                                            <tr>
                                                <td><b>Name</b></td>
                                                <td><input type="text" name="uname" style="width: 400px;margin-bottom: 20px;" class="form-control uname"></td>
                                            </tr>
                                            <tr>
                                                <td><b>Email<span style="color:red">*</span></b></td>
                                                <td><input type="text" name="uemail" style="width: 400px;margin-bottom: 20px;" class="form-control uemail"></td>
                                            </tr>
                                            <tr>
                                                <td><b>Password<span style="color:red">*</span></b></td>
                                                <td><input type="password" name="upass" style="width: 400px;margin-bottom: 20px;" class="form-control upass"><span onclick="CLicktoVisiblePassword()"  class="showclass" ><i class="fa fa-eye"></i></span><span style="display: none" onclick="CLicktoVisiblePassword1()" class="hideclass" ><i class="fa fa-eye-slash"></i></span></td>
                                            </tr>
                                            <tr>
                                                <td><b>Phone<span style="color:red">*</span></b></td>
                                                <td><input type="text" name="uphone" style="width: 400px;margin-bottom: 20px;" class="form-control" uphone></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td><input style="background-color: #428bca"  style="width: 400px" type="submit" class="form-control"></td>
                                            </tr>
                                        </table>
                                    </form>
                                    <br>
                                        </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-sm-2 ">
                                        </div>
                                        </div>   
                                        <!-- /. ROW  -->  
<!--                                        <div class="row">
                                            <div class="col-lg-12 ">
                                                <br/>
                                                <div class="alert alert-danger">
                                                    <strong>Want More Icons Free ? </strong> Checkout fontawesome website and use any icon <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">Click Here</a>.
                                                </div>

                                            </div>
                                        </div>-->
                                        <!-- /. ROW  --> 
                                        </div>
                                        <!-- /. PAGE INNER  -->
                                        </div>
                                        <!-- /. PAGE WRAPPER  -->
                                        </div>
                                        <%@include file="footer.jsp" %>

                                        <!-- /. WRAPPER  -->
                                        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
                                        <!-- JQUERY SCRIPTS -->
                                        <script src="assets/js/jquery-1.10.2.js"></script>
                                        <!-- BOOTSTRAP SCRIPTS -->
                                        <script src="assets/js/bootstrap.min.js"></script>
                                        <!-- CUSTOM SCRIPTS -->
                                        <script src="assets/js/custom.js"></script>
                                        </body>
                                        </html>
