<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Try.aspx.cs" Inherits="Try" %>

<!DOCTYPE html>
<head>
    <title>WebTable</title>
</head>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
        <div class="container jumbotron" style="margin-top: 100px; border-radius: 5px 5px;">
            <asp:MultiView runat="server" ID="MainView">
                <asp:View runat="server">
                    <div class="container">
                        <div class="row sub-menu-space">
                            <div class="col-xs-12 text-center">
                                <asp:Label runat="server" ID="lblCount" CssClass="Elements-Text" ForeColor="PaleVioletRed"></asp:Label>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-xs-8 col-xs-offset-2 text-center">
                                <asp:GridView ID="gvDynamicTable" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" ShowFooter="True">
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:TemplateField HeaderText="ID" InsertVisible="False" SortExpression="ID">
                                            <EditItemTemplate>
                                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblID" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:LinkButton runat="server" ID="lbInsert" ValidationGroup="Insert" OnClick="lbInsert_Click">Insert</asp:LinkButton>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Name is Mandatory." Text="*"
                                                    CssClass="Error-Message" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox runat="server" ID="txtInsertName"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Name is Mandatory." Text="*" ValidationGroup="Insert"
                                                    CssClass="Error-Message" ControlToValidate="txtInsertName"></asp:RequiredFieldValidator>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="MobileNumber" SortExpression="MobileNumber">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtMobileNumber" runat="server" Text='<%# Bind("MobileNumber") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Mobile Number is Mandatory." Text="*"
                                                    CssClass="Error-Message" ControlToValidate="txtMobileNumber"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblMobileNumber" runat="server" Text='<%# Bind("MobileNumber") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox runat="server" ID="txtInsertMobileNumber"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Mobile Number is Mandatory." Text="*" ValidationGroup="Insert"
                                                    CssClass="Error-Message" ControlToValidate="txtInsertMobileNumber"></asp:RequiredFieldValidator>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="City" SortExpression="City">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ErrorMessage="City is Mandatory." Text="*"
                                                    CssClass="Error-Message" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox runat="server" ID="txtInsertCity"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ErrorMessage="City is Mandatory." Text="*" ValidationGroup="Insert"
                                                    CssClass="Error-Message" ControlToValidate="txtInsertCity"></asp:RequiredFieldValidator>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:ValidationSummary runat="server" CssClass="Error-Message" ValidationGroup="Insert" />
                                <asp:ValidationSummary runat="server" CssClass="Error-Message" />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" DeleteCommand="DELETE FROM [DummyData] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DummyData] ([Name], [MobileNumber], [City]) VALUES (@Name, @MobileNumber, @City)" SelectCommand="SELECT * FROM [DummyData]" UpdateCommand="UPDATE [DummyData] SET [Name] = @Name, [MobileNumber] = @MobileNumber, [City] = @City WHERE [ID] = @ID">
                                    <DeleteParameters>
                                        <asp:Parameter Name="ID" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Name" Type="String" />
                                        <asp:Parameter Name="MobileNumber" Type="String" />
                                        <asp:Parameter Name="City" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Name" Type="String" />
                                        <asp:Parameter Name="MobileNumber" Type="String" />
                                        <asp:Parameter Name="City" Type="String" />
                                        <asp:Parameter Name="ID" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>

