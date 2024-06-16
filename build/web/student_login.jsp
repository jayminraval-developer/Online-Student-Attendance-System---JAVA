<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Attendance System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"

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
                        <h2 class="navbar-text pull-right" style="color: black;font-size: 35px;font-family:inherit ;">Department Of Computer Science,PATAN</h2>
                    </div>
                </div>
            </div>
        </nav>



        <div class="container">
            <div class="row">
                <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6  col-sm-6 col-sm-offset-7 d1">
                    <img src="images/d1.jpg" class="img-fluid">
                </div>

                <div id="loginbox" style="margin-top: 30px;" class="mainbox col-md-6  col-sm-6 col-sm-offset-7 d2">
                    <div class="panel panel-danger shadow p-3 mb-5">
                        <div class="container">
                            <a href="index.jsp"><button type="button" class="btn btn-outline-primary">Admin Login</button></a>
                            <a href="student_login.jsp"><button type="button" class="btn btn-outline-primary active">Student Login</button></a>
                        </div>
                        <div style="padding-top: 30px" class="panel-body">
                            <h5>Please login to Student Account</h5><br>
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
                                    String activation = (String) session.getAttribute("account-activation");
                                    if (activation != null) {
                                        session.removeAttribute("account-activation");
                                %>
                            <div class="alert alert-warning" id="warning">Account not activated please inform admin to activate account.</div>
                            <%
                                }
                            %>
                            <div style="display: none" id="login-alert"
                                 class="alert alert-danger col-sm-12"></div>

                            <form id="loginform" class="form-horizontal" role="form"
                                  action="StudentLogin" method="post">
                                <label>User Name</label>
                                <div style="margin-bottom: 15px" class="input-group">
                                    <span class="input-group-addon"><i
                                            class="glyphicon glyphicon-user"></i></span> <input id="login-username"
                                                                                        type="text" class="form-control" name="uname" value=""
                                                                                        placeholder="username" style="height: 30px;">
                                </div>
                                <label>Password</label>
                                <div style="margin-bottom: 15px" class="input-group">
                                    <span class="input-group-addon"><i
                                            class="glyphicon glyphicon-lock"></i></span> <input id="login-password"
                                                                                        type="password" class="form-control" name="password"
                                                                                        placeholder="password" style="height: 30px;">
                                </div>
                                <div style="margin-top: 15px" class="form-group">
                                    <div class="col-sm-12 controls">
                                        <button type="submit" value="" class="btn btn-success">
                                            <span class="glyphicon glyphicon-log-in"></span> Login
                                        </button>
                                        <button type="reset" value="" class="btn btn-danger">Reset</button>
                                    </div>
                                </div><br>
                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div
                                            style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">

                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script type="text/javascript">
        $(function() {
            $('#danger').delay(3000).show().fadeOut('slow');
        });

        $(function() {
            $('#warning').delay(3000).show().fadeOut('slow');
        });
    </script>
</html>
