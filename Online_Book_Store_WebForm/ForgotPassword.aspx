<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Online_Book_Store_WebForm.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
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
                            <li><a href="Default.aspx">Home</a> </li>
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

                            <li><a href="Login.aspx">Login</a> </li>
                        </ul>


                    </div>
                </div>
            </div>

        </div>

        <div class="from-horizontal">
            <h2>Recover Password</h2>
            <hr />
            <h3>Please Your Email Address, We will send you the recovery link for your Password..!</h3>
            <div class="form-group">
                <asp:Label ID="lblEmail" CssClass="col-md-2 custom-control-label" runat="server" Text="Your Email Address"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtEmailID" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Enter Your Valid Email..!!" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>


                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2" ></div>

                <div class="col-md-2">
                    <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Send" OnClick="btnResetPass_Click" />
                    <asp:Label ID="lblResetPassMge" CssClass="text-success" runat="server"></asp:Label>
                </div>


            </div>

        </div>
    </form>
    <hr />
    <!--- Footer Contents Start --->
    <footer class="footer-pos">

        <div class="container">
            <p class="pull-right"><a href="#">Back to Top</a></p>
            <p>&copy;the_honhar25 &middot; <a href="Default.aspx">Home </a>&middot;<a href="#"> About </a>&middot;<a href="#"> Contact </a>&middot;<a href="#"> Products </a></p>

        </div>


    </footer>

    <!--- Footer Contents End --->
</body>
</html>
