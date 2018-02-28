<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Registration | Demo AUT</title>

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
            <div class="row">
                <div class="col-xs-12 text-center">
                    <asp:Label runat="server" Text="Hi Team, This is just a dummy page. We are not going to store any of the data being entered by you."
                        CssClass="text-capitalize text-primary Error-Message" Font-Size="Medium" ForeColor="OrangeRed"></asp:Label>
                </div>
                <div class="col-xs-4">
                </div>
            </div>
        </div>

        <div class="container jumbotron jumbotron-bg" style="margin-top: 20px; border-radius: 5px 5px;">
            <div class="row row-space">
                <div class="col-xs-4">
                </div>
                <div class="col-xs-4 text-center">
                    <asp:Label runat="server" Text="Registration Form" CssClass="text-capitalize text-primary Heading"></asp:Label>
                </div>
                <div class="col-xs-4">
                </div>
            </div>

            <div class="row row-space">
                <div class="col-xs-3 col-xs-offset-3">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control Elements-Text" placeholder="Enter your First Name" ForeColor="PaleVioletRed" ToolTip="First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName"
                        CssClass="Error-Message" ErrorMessage="First Name is mandatory." Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtFirstName"
                        CssClass="Error-Message" ErrorMessage="First Name should only have alphabets." ValidationExpression="[a-zA-Z\s]{1,40}"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </div>

                <div class="col-xs-3">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control Elements-Text" placeholder="Enter your Last Name" ForeColor="PaleVioletRed" ToolTip="Last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName"
                        CssClass="Error-Message" ErrorMessage="Last Name is mandatory." Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtLastName"
                        CssClass="Error-Message" ErrorMessage="Last Name should only have alphabets." ValidationExpression="[a-zA-Z\s]{1,40}"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="row row-space">
                <div class="col-xs-3 col-xs-offset-3">
                    <asp:TextBox ID="txtEmailId" runat="server" CssClass="form-control Elements-Text" placeholder="Please enter your Email Id." ForeColor="PaleVioletRed" ToolTip="Email ID"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmailId"
                        CssClass="Error-Message" ErrorMessage="Email Id is mandatory." Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmailId"
                        CssClass="Error-Message" ErrorMessage="Invalid Email Id." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
                <div class="col-xs-3">
                    <asp:TextBox ID="txtMobileNumber" runat="server" placeholder="Mobile Number" CssClass="form-control Elements-Text" ForeColor="PaleVioletRed" ToolTip="Mobile Number"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobileNumber"
                        CssClass="Error-Message" ErrorMessage="Mobile Number is mandatory." Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtMobileNumber"
                        CssClass="Error-Message" ErrorMessage="Invalid Mobile Number." ValidationExpression="[0-9]{10}"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="row row-space">
                <div class=" col-xs-6 col-xs-offset-3">
                    <asp:TextBox ID="txtAddress" runat="server" placeholder="Please enter your Address." ForeColor="PaleVioletRed"
                        CssClass="form-control Elements-Text" TextMode="MultiLine" Rows="2" ToolTip="Address"></asp:TextBox>
                </div>
            </div>

            <div class="row row-space">
                <div class="text-center col-xs-6 col-xs-offset-3">
                    <asp:RadioButtonList ID="rblGender" runat="server" CssClass="form-control Elements-Text" ForeColor="PaleVioletRed"
                        RepeatLayout="Flow" RepeatDirection="Horizontal" Font-Size="14px" Font-Bold="false" ToolTip="Gender">
                        <asp:ListItem class="radio-inline" Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem class="radio-inline" Text="Female" Value="Female"></asp:ListItem>
                        <asp:ListItem class="radio-inline" Text="Others" Value="Others"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rblGender"
                        CssClass="Error-Message" ErrorMessage="Gender is mandatory." Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row row-space">
                <div class="text-center col-xs-6 col-xs-offset-3">
                    <asp:CheckBoxList ID="cblSkills" runat="server" CssClass="Elements-Text form-control" ToolTip="Skill Set"
                        RepeatLayout="Flow" RepeatDirection="Horizontal" ForeColor="PaleVioletRed" Font-Size="14px" Font-Bold="false">
                        <asp:ListItem class="checkbox-inline" Text="Selenium" Value="Selenim"></asp:ListItem>
                        <asp:ListItem class="checkbox-inline" Text="HP UFT" Value="HP UFT"></asp:ListItem>
                        <asp:ListItem class="checkbox-inline" Text="Tosca" Value="Tosca"></asp:ListItem>
                        <asp:ListItem class="checkbox-inline" Text="RFT" Value="RFT"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>

            <div class="row row-space">
                <div class="col-xs-6 col-xs-offset-3">
                    <asp:DropDownList runat="server" ID="ddlYearOfExperience" CssClass="form-control dropdown Elements-Text text-center"
                        ForeColor="PaleVioletRed" Font-Size="14px" Font-Bold="true" ToolTip="Qualification">
                        <asp:ListItem Text="--Select Year Of Experience--"></asp:ListItem>
                        <asp:ListItem Text="0"></asp:ListItem>
                        <asp:ListItem Text="<2"></asp:ListItem>
                        <asp:ListItem Text=">2 or <5"></asp:ListItem>
                        <asp:ListItem Text=">5 or <10"></asp:ListItem>
                        <asp:ListItem Text=">10"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlYearOfExperience"
                        CssClass="Error-Message" InitialValue="--Select Year Of Experience--" ErrorMessage="Year of experience is mandatory." Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row row-space">
                <div class="col-xs-6 col-xs-offset-3 text-center">
                    <asp:FileUpload runat="server" ID="fuUpload" CssClass="form-control btn btn-default Elements-Text" ForeColor="PaleVioletRed" Font-Size="14px" ToolTip="Upload Resume/CV" />
                </div>
            </div>

            <div class="row row-space">
                <div class="col-xs-6 col-xs-offset-3 text-center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success Elements-Text" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-danger Elements-Text" OnClick="btnReset_Click" CausesValidation="false" />
                </div>
            </div>

            <div class="row row-space">
                <div class="col-xs-6 col-xs-offset-3 text-center">
                    <asp:Label ID="lblSizeError" runat="server" CssClass="Elements-Text" ForeColor="PaleVioletRed" />
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
