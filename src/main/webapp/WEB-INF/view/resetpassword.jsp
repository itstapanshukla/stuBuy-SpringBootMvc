<%@page import=" java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>forget password</title>

        <link href="/LoginPage.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="../../JS/loginjs.js" type="text/javascript"></script>
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-expand-sm bg-dark navbar-dark navbar navbar-fixed-top">
            <a class="navbar-brand" style="color: #efefef;font-family: fantasy;font-size:20px;" href="/account/home"><strong>stuBuy</strong></a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">


                    </li>
                    <li class="nav-item">

                    </li>

                </ul>
                <ul class="navbar-nav ml-auto col-md-6">
                    <li class="nav-item">
                        <div class="form-check ">
                            <form action="fc/?page=Search&type=model" method="post">
                                <ul class="navbar-nav ml-auto">
                                    <li style="list-style: none;"> <input name="search" class="form-control" style="width: 300px;" type="text" placeholder="Search anythings..."></li>
                                    <li style="padding-left: 20px;">   <input type="submit"  class="btn btn-primary"></li>
                                </ul>
                            </form>
                        </div>

                    </li>
                    <li class="nav-item" style="padding-left: 20px;">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#SignModal">
                            login
                        </button>
                    </li>

                </ul>
            </div>  
        </nav>


        <div class="container center_div">
            <div class="row">
                <div class="col-md-12 col-sm-4" style="height: 200px;width: 100%"></div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-4" style="height: 200px;width: 100%; background-color: cornsilk">
                    <p><%= request.getParameter("email").toString()%></p>

                    <form action="fc/?page=Updater&type=model&email=<%=request.getParameter("email").toString()%>" method="post" class="text-center">
                        <input class="form-control" type="text" name="password1" placeholder="Enter New Password"><br>
                        <input class="form-control" type="text" name="password2" placeholder="Enter Again Password"><br>
                        <button class="button btn btn-primary" type="submit">change</button>
                    </form>    
                </div>

            </div>
            <div class="col-md-12 col-sm-4" style="height: 200px;width: 100%"></div>
        </div>
    </div>




</body>

<footer id="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 footer-info"> <br><br>
                    <h1>stuBuy</h1>
                    <p> Its an e- Commerse Website created for the students where they can buy new as well as used products which are being sold by other Students</p>
                </div>
                <div class="col-lg-2 col-md-6 footer-links"><br><br>
                    <h4> Usefull Links</h4>
                    <ul>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>

                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 footer-contact"><br><br>
                    <h4>Contact Us</h4>
                    <p>
                        Integral University<br/>
                        Kursi Road, Lucknow<br/>
                        India<br/>
                        <strong>Phone: +916393545132</strong><br/>
                        <strong>Email: contact.nafees12@gmail.com</strong><br/>
                    </p>

                </div>
                <div class="col-lg-3 col-md-6 footer-newsletter"><br><br>
                    <h4>Our Newsletter</h4>
                    <p>  ---------------------------------------------------------------------------------</p>
                    <form accept="" method="post">
                        <input type="email" name="email"><input type="submit" value="Subscribe"></form>
                </div>
            </div>
        </div>
    </div>

</footer>

</html>