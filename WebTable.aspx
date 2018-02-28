<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebTable.aspx.cs" Inherits="WebTable" %>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>WebTable | Demo AUT</title>

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

<html xmlns="http://www.w3.org/1999/xhtml">
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
                            <asp:Button runat="server" ID="btnStaticTable" CssClass="btn btn-primary menu-button Elements-Text" Text="WebTable - Static Table" OnClick="StaticTable_Click" /></li>
                        <li class="responsive-menu">
                            <asp:Button runat="server" ID="btnDynamicTable" CssClass="btn btn-primary menu-button Elements-Text" Text="WebTable - Dynamic Table" OnClick="DynamicTable_Click" /></li>
                    </ul>
                </div>
            </div>

            <asp:MultiView runat="server" ID="MainView">
                <asp:View runat="server">
                    <div class="container">
                        <div class="row sub-menu-space">
                            <div class="col-xs-12 text-center">
                                <asp:GridView runat="server" ID="gvEmployeeDatabaseStaticData" CssClass="Elements-Text text-center table table-bordered table-hover table-responsive" ForeColor="PaleVioletRed" Font-Size="Large"></asp:GridView>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 01:</span><br />
                                <span class="Questions-Text">-Count the number of <span class="highlight">rows and columns </span>present in table and print it in the console.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 02:</span><br />
                                <span class="Questions-Text">-Print the <span class="highlight">Employee Name</span> and <span class="highlight">Designation</span> of all the employees who lives in <span class="highlight">Mumbai</span></span><br />
                            </div>
                        </div>


                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 03:</span><br />
                                <span class="Questions-Text">-Check whether all the employees are getting proper salary depending on the below business requirement.</span><br />
                                <span class="Questions-Text">-<span class="highlight">Gross Income Per Month = Annual Salary / 12</span></span><br />
                                <span class="Questions-Text">-Print the Employee Name and Designation in the console for whom the business requirement is <span class="highlight">not met</span>.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 04:</span><br />
                                <span class="Questions-Text">-Print the <span class="highlight">Row Number</span> and <span class="highlight">Column Number</span> for the employee having Designation as <span class="highlight">NA</span></span><br />
                            </div>
                        </div>

                    </div>
                </asp:View>

                <asp:View runat="server">
                    <div class="container">
                        <div class="row sub-menu-space">
                            <div class="col-xs-12 text-center">
                                <asp:Label runat="server" ID="lblCount" Text="Hi, If you have deleted all the rows please navigate back from some other page by the time data gets refreshed." Font-Size="Small" CssClass="Elements-Text" ForeColor="PaleVioletRed"></asp:Label>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-xs-10 col-xs-offset-1 text-center text-capitalize">
                                <asp:GridView ID="gvDynamicTable" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="DynamicGridView" ShowFooter="True"
                                    CssClass="Elements-Text text-center table table-bordered table-hover table-responsive" ForeColor="PaleVioletRed" Font-Size="Large">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:TemplateField HeaderText="EmpId" SortExpression="EmpId">
                                            <EditItemTemplate>
                                                <asp:Label ID="lblEditEmpId" runat="server" Text='<%# Eval("EmpId") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblItemEmpId" runat="server" Text='<%# Bind("EmpId") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:LinkButton runat="server" ID="lbInsert" Text="Insert" OnClick="lbInsert_Click" ValidationGroup="Insert"></asp:LinkButton>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="EmpName" SortExpression="EmpName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditEmpName" runat="server" Text='<%# Bind("EmpName") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvEditEmpName" ErrorMessage="Employee Name is Mandatory."
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtEditEmpName" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revEditEmpName" ErrorMessage="Invalid format." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtEditEmpName" ValidationGroup="Edit"></asp:RegularExpressionValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblItemEmpName" runat="server" Text='<%# Bind("EmpName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox runat="server" ID="txtInsertEmpName" CssClass="form-control Elements-Text" ForeColor="PaleVioletRed"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvInsertEmpName" ErrorMessage="Employee Name is Mandatory."
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtInsertEmpName" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revInsertEmpName" ErrorMessage="Invalid format." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtInsertEmpName" ValidationGroup="Insert"></asp:RegularExpressionValidator>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Designation" SortExpression="Designation">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditDesignation" runat="server" Text='<%# Bind("Designation") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvUpdateDesignation" ErrorMessage="Designation is Mandatory."
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtEditDesignation" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revUpdateDesignation" ErrorMessage="Invalid format." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtEditDesignation" ValidationGroup="Edit"></asp:RegularExpressionValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblItemDesignation" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox runat="server" ID="txtInsertDesignation" CssClass="form-control Elements-Text" ForeColor="PaleVioletRed"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvInsertDesignation" ErrorMessage="Designation is Mandatory."
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtInsertDesignation" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revInsertDesignation" ErrorMessage="Invalid format." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtInsertDesignation" ValidationGroup="Insert"></asp:RegularExpressionValidator>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Location" SortExpression="Location">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtEditLocation" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvUpdateLocation" ErrorMessage="Location is Mandatory."
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtEditLocation" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revUpdateLocation" ErrorMessage="Invalid format." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtEditLocation" ValidationGroup="Edit"></asp:RegularExpressionValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblItemLocation" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox runat="server" ID="txtInsertLocation" CssClass="form-control Elements-Text" ForeColor="PaleVioletRed"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="rfvInsertLocation" ErrorMessage="Location is Mandatory."
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtInsertLocation" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ID="revInsertLocation" ErrorMessage="Invalid format." ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"
                                                    Text="*" CssClass="Error-Message" ControlToValidate="txtInsertLocation" ValidationGroup="Insert"></asp:RegularExpressionValidator>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                                            <EditItemTemplate>
                                                <asp:DropDownList runat="server" ID="ddlEditGender" SelectedValue='<%# Bind("Gender") %>'>
                                                    <asp:ListItem Text="--Select Gender--" Value="--Select Gender--"></asp:ListItem>
                                                    <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                                                    <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator runat="server" id="rfvEditGender" ControlToValidate="ddlEditGender" ErrorMessage="Gender is Mandatory."
                                                    Text="*" CssClass="Error-Message" InitialValue="--Select Gender--" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblItemGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:DropDownList runat="server" ID="ddlInsertGender" CssClass="form-control Elements-Text" ForeColor="PaleVioletRed" Font-Size="Medium">
                                                    <asp:ListItem Text="--Gender--" Value="--Gender--"></asp:ListItem>
                                                    <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                                                    <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator runat="server" id="rfvInsertGender" ControlToValidate="ddlInsertGender" ErrorMessage="Gender is Mandatory."
                                                    Text="*" CssClass="Error-Message" InitialValue="--Select Gender--" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:ValidationSummary runat="server" ID="vsInsert" ForeColor="Red" ValidationGroup="Insert" CssClass="text-left" />
                                <asp:ValidationSummary runat="server" ID="vaEdit" ForeColor="Red" ValidationGroup="Edit" CssClass="text-left" />
                                <asp:SqlDataSource runat="server" ID="DynamicGridView" ConnectionString="<%$ ConnectionStrings:DBCS %>" 
                                    DeleteCommand="DELETE FROM [EmpDetails] WHERE [EmpId] = @EmpId" 
                                    InsertCommand="INSERT INTO [EmpDetails] ([EmpName], [Designation], [Location], [Gender]) VALUES (@EmpName, @Designation, @Location, @Gender)" 
                                    SelectCommand="SELECT * FROM [EmpDetails] ORDER BY [EmpId]" 
                                    UpdateCommand="UPDATE [EmpDetails] SET [EmpName] = @EmpName, [Designation] = @Designation, [Location] = @Location, [Gender] = @Gender WHERE [EmpId] = @EmpId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="EmpId" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="EmpId" Type="String" />
                                        <asp:Parameter Name="EmpName" Type="String" />
                                        <asp:Parameter Name="Designation" Type="String" />
                                        <asp:Parameter Name="Location" Type="String" />
                                        <asp:Parameter Name="Gender" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="EmpName" Type="String" />
                                        <asp:Parameter Name="Designation" Type="String" />
                                        <asp:Parameter Name="Location" Type="String" />
                                        <asp:Parameter Name="Gender" Type="String" />
                                        <asp:Parameter Name="EmpId" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 01:</span><br />
                                <span class="Questions-Text">-Count the number of rows and coluns present in the table and print it in the console.</span><br />
                                <span class="Questions-Text">-<span class="highlight">Delete</span> the last row present in the table.</span><br />
                                <span class="Questions-Text">-<span class="highlight">Soft Assert</span> whether the new row count is same as found on Step 1.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 02:</span><br />
                                <span class="Questions-Text">-For the last row in the table fetch the values for <span class="highlight">Name</span> and <span class="highlight">Mobile Number</span>.</span><br />
                                <span class="Questions-Text">-For the same row in the table <span class="highlight">update</span> the values for Name and Mobile Number.</span><br />
                                <span class="Questions-Text">-For the same row in the table <span class="highlight">assert</span> whether the values for Name and Mobile Number are same as fetched in Step 1.</span><br />
                            </div>
                        </div>

                        <div class="row" style="margin-top: 30px;">
                            <div class="col-xs-12 text-left">
                                <span class="Assignment-Text">Assignment 03:</span><br />
                                <span class="Questions-Text">-<span class="highlight">Insert</span> a new row in the table.</span><br />
                                <span class="Questions-Text">-Iterate through all the rows and check whether the recently added row has been added in table.</span><br />
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
