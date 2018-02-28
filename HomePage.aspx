<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Home | Demo AUT</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet" type="text/css" />
    <link href="css/navigation.css" rel="stylesheet" type="text/css" />

    <!-- Custom JS -->
    <script src="js/custom.js" type="text/javascript"></script>

    <%--Animate CSS--%>
    <link href="css/animate.css" rel="stylesheet" />

    <style type="text/css">
        .delay-5 {
            -webkit-animation-duration: 5s;
        }
    </style>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans+Narrow" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:500" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">

    <%--Google Ads--%>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
        (adsbygoogle = window.adsbygoogle || []).push({
            google_ad_client: "ca-pub-1422156190842169",
            enable_page_level_ads: true
        });
    </script>

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
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="HomePage.aspx"><span class="Main-Menu">Demo WebSite</span></a>
            </div>
            <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="act"><a href="HomePage.aspx"><span class="Main-Menu">Home</span></a></li>
                <li><a href="Alert.aspx"><span class="Main-Menu">Alert</span></a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="Main-Menu">Frames & Windows<span class="caret"></span></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="Frames.aspx"><span class="Main-Menu">Frames</span></a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="Windows.aspx"><span class="Main-Menu">Windows</span></a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="Main-Menu">Web Elements<span class="caret"></span></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="CB_RB.aspx"><span class="Main-Menu">Check Box | Radio Button</span></a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="DropDown.aspx"><span class="Main-Menu">DropDown</span></a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="WebTable.aspx"><span class="Main-Menu">WebTables</span></a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="DynamicProperties.aspx"><span class="Main-Menu">Dynamic Elements</span></a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="Registration.aspx"><span class="Main-Menu">Registration Page</span></a></li>

                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="Main-Menu">Widgets<span class="caret"></span></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="DateTimePicker.aspx"><span class="Main-Menu">DateTime Picker</span></a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="ToolTip.aspx"><span class="Main-Menu">Tooltip</span></a></li>
                        <li role="separator" class="divider"></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="Main-Menu">Interactions<span class="caret"></span></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="Drag'N'Drop.aspx"><span class="Main-Menu">Drag & Drop</span></a></li>
                    </ul>
                </li>
            </ul>
                </div>
        </div>
    </nav>

    <form runat="server">
        <div class="container" style="margin-top: 60px;">
            <div class="row">
                <div class="col-xs-5" style="margin-top: 50px;">
                    <asp:Image runat="server" CssClass="img-responsive img-rounded"
                        ImageUrl="~/Images/ThinkingMan.jpg" Height="400px" Width="400px" />
                </div>
                <div class="col-xs-7 animated bounceInRight delay-5">
                    <p class="text-justify home-page animated bounceInRight delay-5" style="margin-top: 50px;">
                        If you are also having the same question then you are at the right place!!!
                    </p>
                    <p class="text-justify home-page row-space animated bounceInRight delay-5">
                        DEMO AUT is a website specifically built for practicing Automation tools such as HP UFT / Selenium / Tosca and it is having most of the WebElements
                        that we come across in an Automation project.
                    </p>
                    <p class="text-justify home-page row-space animated bounceInRight delay-5">
                        Ths website is having all the basic requirement for testing simple and complex elements along with
                        some possible scenarios which you may face during your automation journey.
                    </p>
                    <p class="text-justify home-page row-space animated bounceInRight delay-5">
                        So why to wait... Go ahead, interact with elements and try to solve all the assignments.
                    </p>
                    <p class="text-center home-page row-space animated bounceInRight delay-5">
                        Happy Learning... :)
                    </p>
                </div>
            </div>
        </div>
    </form>

    <%-- Footer --%>
    <footer class="footer">
        <div class="container">
            <span class="footer-text">&copy; 2017 | Demo AUT</span>
        </div>
    </footer>
    <%-- Footer --%>

    <!-- Go to www.addthis.com/dashboard to customize your tools -->
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-59d27f01e579da87"></script>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
