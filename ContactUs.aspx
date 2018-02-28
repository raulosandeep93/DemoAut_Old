<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Alert</title>
    
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet" type="text/css" />
    
    <!-- Custom JS -->
    <script src="js/custom.js" type="text/javascript"></script>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans+Narrow" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 text-justify">
                <p class="responsive-menu" style="color: Purple;font-size:18px;line-height:inherit;">
                    Hi all, we hope that you all are doing great and this webite is helping all of you
                    to experiment with almost all types of elements present on web. We are continuously
                    working hard to make this website a common platform to make available all the elements
                    but we would like to hear from you about this initiative and would love to get your
                    feedback. We would appreciate all the negative feedback as it will help us to improve
                    this website at the same time we will expect some positive feedback which will keep
                    us engage to work. Please spend a minute to provide us with your valuable feedback.</p>
                <hr />
            </div>
        </div>
    </div>
    <div class="container row-space">
        <%--Name--%>
        <div class="row">
            <div class="col-xs-4">
            </div>
            <div class="col-xs-4">
                <asp:TextBox ID="txtName" runat="server" placeholder="Name" CssClass="form-control element"></asp:TextBox>
            </div>
            <div class="col-xs-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    CssClass="error" ErrorMessage="Name is mandatory." Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName"
                    CssClass="error" ErrorMessage="Name should only have alphabets." ValidationExpression="[a-zA-Z\s]{1,40}"
                    Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
        </div>
        <%--Email Id--%>
        <div class="row row-space">
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
        <%--Suggestion/Feedback/Report Bug/Requirements--%>
        <div class="row row-space">
            <div class="col-xs-4">
            </div>
            <div class="col-xs-4">
                <asp:DropDownList runat="server" ID="ddlChoice" CssClass="form-control dropdown element">
                    <asp:ListItem Value="0" Text="--Select--"></asp:ListItem>
                    <asp:ListItem Value="1" Text="Suggestion"></asp:ListItem>
                    <asp:ListItem Value="2" Text="Feedback"></asp:ListItem>
                    <asp:ListItem Value="3" Text="Report Bug"></asp:ListItem>
                    <asp:ListItem Value="4" Text="New Requirements"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-xs-4">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlChoice" CssClass="error"
                    ErrorMessage="Please select your choice." InitialValue="0"></asp:RequiredFieldValidator>
            </div>
        </div>
        <%--Message--%>
        <div class="row row-space">
            <div class="col-xs-4">
            </div>
            <div class="col-xs-4">
                <asp:TextBox ID="txtMessage" runat="server" placeholder="Message" CssClass="form-control element"
                    Rows="5" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="col-xs-4">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMessage" CssClass="error"
                    ErrorMessage="Message is mandatory."></asp:RequiredFieldValidator>
            </div>
        </div>
        <%--Send--%>
        <div class="row row-space">
            <div class="col-xs-4">
            </div>
            <div class="col-xs-4 text-center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success element"
                    OnClick="btnSubmit_Click" />
                <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-danger element" />
            </div>
            <div class="col-xs-4">
            </div>
        </div>
        <%--Status Message--%>
        <div class="row row-space">
            <div class="col-xs-12 text-center">
                <asp:Label runat="server" ID="lblStatus" Visible="false" CssClass="element"></asp:Label>
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
