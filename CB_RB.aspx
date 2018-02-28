<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/CB_RB.aspx.cs" Inherits="CheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Check Box - Radio Button | Demo AUT</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet" type="text/css" />
    <link href="css/navigation.css" rel="stylesheet" type="text/css" />
    <!-- Custom JS -->
    <script src="js/custom.js" type="text/javascript"></script>

    <%--Checkbox--%>
    <script type="text/javascript">
        function printChecked() {
            var items = document.getElementsByName('CB');
            var selectedItems = "";
            for (var i = 0; i < items.length; i++) {
                if (items[i].type == 'checkbox' && items[i].checked == true)
                    selectedItems += items[i].value + "\n";
            }
            alert(selectedItems);
        }
    </script>

    <%--Radio Button--%>
    <script type="text/javascript">
        function printRadio() {
            var items = document.getElementsByName('RB');
            var selectedItems = "";
            for (var i = 0; i < items.length; i++) {
                if (items[i].type == 'radio' && items[i].checked == true)
                    selectedItems += items[i].value + "\n";
            }
            alert(selectedItems);
        }
    </script>

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
                    <li class="dropdown act">
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

    <form id="form1" runat="server">
        <div class="container jumbotron" style="margin-top: 100px; border-radius: 5px 5px;">
            <div class="wrapper">

                <div class="bs-example bs-example-tabs btn-group" role="tabpanel" data-example-id="togglable-tabs">
                    <ul class="nav nav-tabs nav-tabs-responsive" role="tablist">
                        <li class="responsive-menu">
                            <asp:Button runat="server" CssClass="btn btn-primary menu-button Elements-Text" Text="Check Box" OnClick="CB_Click" /></li>
                        <li class="responsive-menu">
                            <asp:Button runat="server" CssClass="btn btn-primary menu-button Elements-Text" Text="Radio Button" OnClick="RB_Click" /></li>
                    </ul>
                </div>
            </div>

            <asp:MultiView runat="server" ID="MainView">
                <asp:View runat="server">
                    <div class="container">
                        <div class="row sub-menu-space">
                            <div class="col-xs-12 text-center">
                                <span class="Elements-Text" style="color: palevioletred;">Please select your favourite Bollywood stars.</span>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-xs-6 text-center">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox" name="CB" value="Shahrukh Khan" />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Shahrukh Khan</label>
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox" name="CB" value="Salman Khan" disabled />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Salman Khan</label>
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox" name="CB" value="Aamir Khan" checked />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Aamir Khan</label>
                                </div>
                            </div>

                            <div class="col-xs-6 text-center">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox" name="CB" value="Deepika Padukone" checked />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Deepika Padukone</label>
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox" name="CB" value="Priyanka Chopra" />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Priyanka Chopra</label>
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox" name="CB" value="Katrina Kaif" disabled />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Katrina Kaif</label>
                                </div>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-xs-12 text-center">
                                <input type="button" id="btnSubmit" class="btn btn-danger Elements-Text" value="Submit" onclick="printChecked();" />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 01:</span><br />
                                <span class="Questions-Text">-Iterate through all the check box available and print the text being displayed.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 02:</span><br />
                                <span class="Questions-Text">-Iterate through all the checkbox available and print only the ones which are <span class="highlight">disabled</span>  on page load.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 03:</span><br />
                                <span class="Questions-Text">-Iterate through all the checkbox available and print only the ones which are <span class="highlight">pre selected</span> on page load.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 04:</span><br />
                                <span class="Questions-Text">-Select checkbox with values as <span class="highlight">Shahrukh Khan</span> and <span class="highlight">Priyanka Chopra</span> .</span><br />
                                <span class="Questions-Text">-Click on <span class="highlight">Submit</span> button. </span>
                                <br />
                                <span class="Questions-Text">-Fetch the message being displayed in <span class="highlight">alert box</span> and assert whether the proper checkbox has been selected.</span>
                            </div>
                        </div>

                    </div>
                </asp:View>

                <asp:View runat="server">
                    <div class="container">
                        <div class="row sub-menu-space">
                            <div class="col-xs-12 text-center">
                                <span class="Elements-Text" style="color: palevioletred;">Please select your favourite Hollywood stars.</span>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-xs-6 text-center">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="radio" name="RB" id="Johnny Depp" value="Johnny Depp" checked />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Johnny Depp</label>
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="radio" name="RB" id="Tom Cruise" value="Tom Cruise" disabled />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Tom Cruise</label>
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="radio" name="RB" id="Leonardo DiCaprio" value="Leonardo DiCaprio" />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Leonardo DiCaprio</label>
                                </div>

                            </div>

                            <div class="col-xs-6 text-center">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="radio" name="RB" id="Scarlett Johansson" value="Scarlett Johansson" />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Scarlett Johansson</label>
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="radio" name="RB" id="Kim Kardashian" value="Kim Kardashian" disabled />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Kim Kardashian</label>
                                </div>

                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="radio" name="RB" id="Jennifer Lawrence" value="Jennifer Lawrence" />
                                    </span>
                                    <label class="form-control Elements-Text" style="color: palevioletred">Jennifer Lawrence</label>
                                </div>
                            </div>

                        </div>

                        <div class="row row-space">
                            <div class="col-xs-12 text-center">
                                <input type="button" id="btnRB" class="btn btn-danger Elements-Text" value="Submit" onclick="printRadio();" />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 01:</span><br />
                                <span class="Questions-Text">-Iterate through all the radio button available and print the text being displayed.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 02:</span><br />
                                <span class="Questions-Text">-Iterate through all the radio button available and print only the ones which are <span class="highlight">disabled</span>  on page load.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 03:</span><br />
                                <span class="Questions-Text">-Iterate through all the radio button available and print only the ones which are <span class="pre-scrollable">pre selected</span> on page load.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 04:</span><br />
                                <span class="Questions-Text">-Select radio button with value as <span class="highlight">Leonardo DiCaprio</span>.</span><br />
                                <span class="Questions-Text">-Click on <span class="highlight">Submit</span> button. </span>
                                <br />
                                <span class="Questions-Text">-Fetch the message being displayed in <span class="highlight">alert box</span> and assert whether the proper radio button has been selected.</span>
                            </div>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
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
