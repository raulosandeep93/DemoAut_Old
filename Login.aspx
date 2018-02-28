﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Login</title>
    
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet" type="text/css" />
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">

    <%--Google Analytics--%>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-104912395-1', 'auto');
        ga('send', 'pageview');

    </script>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <nav class="navbar navbar-inverse menu">
    <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Selenium Demo WebSite</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="SignUp.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    </div>
    </nav>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 100px;">
            <div class="row">
                <div class="col-xs-4">
                </div>
                <div class="col-xs-4 text-center">
                    <asp:Label runat="server" Text="Login Form" CssClass="text-capitalize text-primary element" Font-Size="XX-Large"></asp:Label>
                </div>
                <div class="col-xs-4">
                </div>
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col-xs-4">
                </div>
                <div class="col-xs-4">
                    <asp:TextBox ID="txtEmailId" runat="server" placeholder="Email Id" CssClass="form-control element"></asp:TextBox>
                </div>
                <div class="col-xs-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmailId"
                        CssClass="error" ErrorMessage="Email Id is mandatory." Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailId"
                        CssClass="error" ErrorMessage="Invalid Email Id." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row row-space">
                <div class="col-xs-4">
                </div>
                <div class="col-xs-4">
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="form-control element" TextMode="Password"></asp:TextBox>
                </div>
                <div class="col-xs-4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword"
                        CssClass="error" ErrorMessage="Password is mandatory." Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPassword"
                        CssClass="error" ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character."
                        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row row-space">
                <div class="col-xs-4">
                </div>
                <div class="col-xs-4 text-center">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success element" OnClick="btnLogin_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-danger element" OnClick="btnReset_Click" />
                </div>
                <div class="col-xs-4">
                </div>
            </div>
            <div class="row row-space">
                <div class="col-xs-4">
                </div>
                <div class="col-xs-4 text-center">
                    <asp:Label runat="server" ID="lblSuccess" Visible="false" CssClass="element text-success"></asp:Label>
                    <asp:Label runat="server" ID="lblError" Visible="false" CssClass="element text-danger"></asp:Label>
                </div>
                <div class="col-xs-4">
                </div>
            </div>
        </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
