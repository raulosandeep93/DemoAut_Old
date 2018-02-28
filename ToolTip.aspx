<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ToolTip.aspx.cs" Inherits="ToolTip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Tool Tip | Demo AUT</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet" type="text/css" />
    <link href="css/navigation.css" rel="stylesheet" type="text/css" />
    <!-- Custom JS -->
    <script src="js/custom.js" type="text/javascript"></script>


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
                    <li><a href="HomePage.aspx"><span class="Main-Menu">Home</span></a></li>
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
                    <li class="dropdown act">
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
    <form id="form1" runat="server">
        <div class="container jumbotron" style="margin-top: 100px; border-radius: 5px 5px;">
            <div class="wrapper">

                <div class="bs-example bs-example-tabs btn-group" role="tabpanel" data-example-id="togglable-tabs">
                    <ul class="nav nav-tabs nav-tabs-responsive" role="tablist">
                        <li class="responsive-menu">
                            <asp:Button runat="server" ID="btnToolTip" CssClass="btn btn-primary menu-button Elements-Text" Text="Tool Tip" OnClick="ToolTip_Click" /></li>
                    </ul>
                </div>
            </div>


            <asp:MultiView runat="server" ID="MainView">
                <asp:View runat="server">
                    <div class="container">
                        <div class="row sub-menu-space">
                            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 text-center">
                                <img src="Images/ToolTip/Narendra_Modi.jpg" data-toggle="tooltip" title="Narendra Modi" class="img-responsive img-rounded ToolTip-Image" />
                            </div>

                            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 text-center">
                                <img src="Images/ToolTip/APJ_Abdul_Kalam.JPG" data-toggle="tooltip" title="APJ Abdul Kalam" class="img-responsive img-rounded  ToolTip-Image" />
                            </div>

                            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 text-center">
                                <img src="Images/ToolTip/Donald_Trump.jpg" data-toggle="tooltip" title="Donald Trump" class="img-responsive img-rounded ToolTip-Image" />
                            </div>

                            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 text-center">
                                <img src="Images/ToolTip/Barack_Obama.jpg" data-toggle="tooltip" title="Barack Obama" class="img-responsive img-rounded ToolTip-Image" />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 01:</span><br />
                                <span class="Questions-Text">-Hover on any of the available image find the tool tip and print it in the console.</span><br />
                            </div>
                        </div>
                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 02:</span><br />
                                <span class="Questions-Text">-Print the tool tip values for all the images present on the page.</span><br />
                            </div>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>

    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

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
