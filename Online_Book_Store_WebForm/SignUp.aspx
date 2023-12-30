<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Online_Book_Store_WebForm.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
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
                        <li class="active"><a href="SignUp.aspx">Registration</a> </li>
                         <li><a href="Login.aspx">Login</a> </li>
                    </ul>

                </div>
            </div>
        </div>

        <!---- SignUp Page---->
        <div style="margin-top: 65px; text-align: center">
            <label>User Name : </label>
            <br />
            <asp:TextBox ID="txtUname" runat="server" CssClass="form-control cwidth" placeholder="Enter your Name"></asp:TextBox>
            <br />
            <label>Password : </label>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control cwidth" placeholder=" Enter your Password"></asp:TextBox>
            <br />
            <label>Confirm Password : </label>
            <br />
            <asp:TextBox ID="txtComfirmPass" runat="server" CssClass="form-control cwidth" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>
            <br />
            <label>Full Name : </label>
            <br />
            <asp:TextBox ID="txtFname" runat="server" CssClass="form-control cwidth" placeholder="Enter Full Name"></asp:TextBox>
            <br />
            <label>Email : </label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control cwidth" placeholder="Enter Your Email "></asp:TextBox>


            <div class="btnSignUp">
                <asp:Button ID="btnSignUp" runat="server" class="btn btn-success" Text="Sign Up" OnClick="btnSignUp_Click" />

            </div>
        </div>

        <!---- SignUp Page end ---->



        <!--- Footer Contents Start --->
        <footer class="footer-pos">

            <div class="container">
                <p class="pull-right"><a href="#">Back to Top</a></p>
                <p>&copy;the_honhar25 &middot; <a href="Default.aspx">Home </a>&middot;<a href="#"> About </a>&middot;<a href="#"> Contact </a>&middot;<a href="#"> Products </a></p>

            </div>



        </footer>

        <!--- Footer Contents End --->

    </form>
</body>
</html>
