﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Online_Book_Store_WebForm.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online book Store</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation </span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx">

                            <span>
                                <img src="Icon/book-shop.png" alt="My Book Store" hight="30" width="30" /></span>
                            <span>Online Book Store </span></a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a> </li>
                            <li><a href="#">About</a> </li>
                            <li><a href="#">Contact Us</a> </li>
                            <li><a href="#">Blog</a> </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Analysis & Strategy </a></li>
                                    <li><a href="#">Programming & Software Development</a> </li>
                                    <li><a href="#">Sciences, Technology & Medicine</a> </li>
                                    <li><a href="#">Business & Finance</a> </li>
                                    <li><a href="#">Personal Transformation</a> </li>
                                    <li><a href="#">Design & Fashiont</a> </li>
                                    <li><a href="#">Self-Help</a> </li>
                                    <li><a href="#">Kindle Store</a> </li>
                                    <li><a href="#">Business & Investing eBooks</a> </li>
                                </ul>

                            </li>
                            <li><a href="SignUp.aspx">Registration</a> </li>
                             <li><a href="Login.aspx">Login</a> </li>
                        </ul>

                    </div>
                </div>
            </div>

            <!--- image Slider --->

            <div class="container">
                <h2 style="margin-top:65px">Carousel Example</h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="Slider Image/firstBook.jpeg" alt="Los Angeles" width="400px" height="400px"/>
                        </div>

                        <div class="item">                            
                            <img src="Slider Image/secondBook.jpeg" alt="Chicago" width="400px" height="400px" />
                        </div>

                        <div class="item">
                            <img src="Slider Image/thirdbook.jpeg" alt="New york" width="400px" height="400px"/>
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <!--- image Slider end --->



        <br />
        <br />
        <br />
        <!--- Middle Contents start --->
        <div class="container center ">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle " src="Books Image/Taddy.jpg" alt="thumb" width="140" height="140" />
                    <h2>Books</h2>
                    <p>Look Who's Hiding - Forest : Pull The Tab Novelty Books For Children   </p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo; </a></p>

                </div>


                <div class="col-lg-4">
                    <img class="img-circle" src="Books Image/Oct.jpg" alt="thumb" width="140" height="140" />
                    <h2>Books</h2>
                    <p>Look Who's Hiding - Ocean : Pull The Tab Novelty Books For Children </p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo; </a></p>

                </div>



                <div class="col-lg-4">
                    <img class="img-circle" src="Books Image/Cow.jpg" alt="thumb" width="140" height="140" />
                    <h2>Books</h2>
                    <p>
                        Look Who's Hiding - Farm : Pull The Tab Novelty Books For Children 
                    </p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo; </a></p>

                </div>

            </div>

        </div>
        <!--- Middle Contents End --->




    </form>

         <!--- Footer Contents Start --->
<footer>

    <div class="container">
        <p class="pull-right"> <a href="#">Back to Top</a></p>
        <p>&copy;the_honhar25 &middot; <a href="Default.aspx" > Home </a> &middot;<a href="#"> About </a>&middot;<a href="#"> Contact </a>&middot;<a href="#"> Products </a></p>

    </div>



</footer>

 <!--- Footer Contents End --->
</body>

    
    


</html>
