<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <title>DCS Student Attendance System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
        
         <!--   BOOTSRAP  -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        
        <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style rel="stylesheet">

            @media(max-width:560px){
                .col-9 h2{
                    display: none!important;
                }
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-3">
                        <a class="navbar-brand h-25" href="index.jsp"><img class="rounded float-start" src="images//hngu-logo.png" width="250px"></a>
                    </div>
                    <div class="col-9">
                        <h2 class="navbar-text pull-right" style="color: black;font-size: 35px;font-family:inherit ;">
                            Department Of Computer Science, PATAN</h2>
                    </div>
                </div>
            </div>
        </nav>



        <div class="container">
            <div class="row" style="margin-top: 65px;">
                <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6  col-sm-6 col-sm-offset-7 d1">
                    <img src="images/d1.jpg"  class="img-fluid">
                </div>
                
                <div id="loginbox" style="margin-top: 30px;" class="mainbox col-md-6  col-sm-6 col-sm-offset-7">
                    <div class="panel panel-default shadow p-3 mb-5">
                        <div class="container">
                            <a href="index.jsp"><button type="button" class="btn btn-outline-primary active">Admin Login</button></a>
                            <a href="student_login.jsp"><button type="button" class="btn btn-outline-primary">Student Login</button></a>
                        </div>
                        <div style="padding-top: 30px" class="panel-body">
                            <h5>Please login to Admin Account</h5>
                            <br>
                            <%
                                String credential = (String) session.getAttribute("credential");
                                if (credential != null) {
                                    session.removeAttribute("credential");
                            %>
                            <div class="alert alert-danger" id="danger">You have enter
                                wrong credentials.</div>
                                <%
                                    }
                                %>
                                <%
                                    String adminRegister = (String) session.getAttribute("message-success");
                                    if (adminRegister != null) {
                                        session.removeAttribute("message-success");
                                %>
                            <div class="alert alert-success" id="success">Account
                                register successfully.</div>
                                <%
                                    }
                                %>
                            <div style="display: none" id="login-alert"
                                 class="alert alert-danger col-sm-12"></div>
                            <form id="loginform" class="form-horizontal" role="form"
                                  action="AdminLogin" method="post">
                                <label>User Name</label>
                                <div style="margin-bottom: 15px" class="input-group">
                                    <span class="input-group-addon"><i
                                            class="glyphicon glyphicon-user">&nbsp;</i></span> <input
                                        id="login-username" type="text" class="form-control"
                                        name="uname" value="" placeholder="User Name"
                                        style="height: 30px;">
                                </div>
                                <label>Password</label>
                                <div style="margin-bottom: 15px" class="input-group">
                                    <span class="input-group-addon"><i
                                            class="glyphicon glyphicon-lock"></i></span> <input id="login-password"
                                                                                        type="password" class="form-control" name="password"
                                                                                        placeholder="Password" style="height: 30px;" required="true">
                                </div>

                                <div style="margin-top: 15px" class="form-group">
                                    <div class="col-sm-8 controls">
                                        <div class="col-sm-12 controls">
                                            <button type="submit" value="" class="btn btn-success">
                                                <span class="glyphicon glyphicon-log-in"></span> Login
                                            </button>
                                            <button type="reset" value="" class="btn btn-danger">Reset</button>
                                        </div>
                                        <a href="forgetPassword.jsp" class="btn btn-link"> Forget your password </a>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div
                                            style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">

                                        </div>
                                    </div>
                                </div>
                                <!--                            <div class="form-group">
                                                                <div class="col-md-12 control">
                                                                    <div
                                                                        style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
                                                                        Don't have an account! <a href="#"
                                                                                                  onClick="$('#loginbox').hide();
                                                                                                          $('#signupbox').show()">
                                                                            Sign Up Here </a>
                                                                    </div>
                                                                </div>
                                                            </div>-->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!--                    <div id="signupbox" style="display: none; margin-top: 50px"
                         class="mainbox col-md-6  col-sm-6 col-sm-offset-7">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-title">Sign Up</div>
                                <div
                                    style="float: right; font-size: 100%; position: relative; top: -15px">
                                    <a id="signinlink" href="#"
                                       onclick="$('#signupbox').hide();
                                               $('#loginbox').show()">
                                        Sign In</a>
                                </div>
                            </div>
                            <div class="panel-body">
                                <form id="signupform" class="form-horizontal" role="form"
                                      action="AdminRegistration" method="post" name="myForm"
                                      onsubmit="return validateForm()">
                                    <div class="form-group">
                                        <label for="firstname" class="col-md-3 control-label">
                                            Name</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="name"
                                                   placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="col-md-3 control-label">Email</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="email"
                                                   placeholder="Email Address">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="uname" class="col-md-3 control-label"> User
                                            Name</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="uname"
                                                   placeholder="User Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="col-md-3 control-label">Password</label>
                                        <div class="col-md-9">
                                            <input type="password" class="form-control" name="passwd"
                                                   placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                         Button 
                                        <div class="col-md-offset-3 col-md-9">
                                            <input id="btn-signup" type="submit" class="btn btn-info"
                                                   value="Sign Up">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12 control">
                                            <div
                                                style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
                                                Already Register.!! Please Login <a href=""
                                                                                    onClick="$('#loginbox').show();
                                                                                            $('#signupbox').hide()">
                                                    Login Here </a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>-->

    </body>
    <script type="text/javascript">
        $(function() {
            $('#danger').delay(3000).show().fadeOut('slow');
        });

        $(function() {
            $('#success').delay(3000).show().fadeOut('slow');
        });
    </script>
    <script type="text/javascript">
        function validateForm() {
            var x = document.forms["myForm"]["name"].value;
            if (x == "") {
                alert("Name must be filled out");
                return false;
            }
            var y = document.forms["myForm"]["email"].value;
            if (y == "") {
                alert("Email id must be filled out");
                return false;
            }
            var z = document.forms["myForm"]["uname"].value;
            if (z == "") {
                alert("User Name must be filled out");
                return false;
            }
            var p = document.forms["myForm"]["passwd"].value;
            if (p == "") {
                alert("Password must be enter.");
                return false;
            }

        }
    </script>
</html>
