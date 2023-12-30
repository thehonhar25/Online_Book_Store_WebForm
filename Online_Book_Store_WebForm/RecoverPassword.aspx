<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="Online_Book_Store_WebForm.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Your Password </title>

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
            <h2 style="margin-top: 103px; margin-bottom: 10px; padding-inline: 12rem;">Reset Password</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="lblNewPass" CssClass="col-md-2 custom-control-label" Style="padding-left: 4rem; font-size: 19px; font-style: inherit"
                    runat="server" Text="Your New Password" Visible="False"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtNewPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass="text-danger" runat="server" ErrorMessage="Enter Your New Password !!" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>


                </div>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="lblConfirmNewPass" CssClass="col-md-2 custom-control-label" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtComfirmNewPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmNewPass" CssClass="text-danger" runat="server" ErrorMessage="Enter Your Confirm  New Password !!" ControlToValidate="txtComfirmNewPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Confirm Password is not match ......try again" ControlToCompare="txtNewPass" ControlToValidate="txtComfirmNewPass" ForeColor="Red"></asp:CompareValidator>

                </div>
            </div>
            <br />

            <div class="form-group">
                <div class="col-md-2"></div>

                <div class="col-md-2">
                    <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click" />

                </div>


            </div>

            <div>
                <asp:Label ID="lblmsg" CssClass="col-md-2 custom-control-label" runat="server" Visible="False" Font-Bold="True" Font-Size="Larger" ForeColor="#66FF33"></asp:Label>
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
