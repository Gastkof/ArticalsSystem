<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertArticals.aspx.cs" Inherits="ArticalsSystem.InsertArticals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 30px;
        }
         
        .auto-style4 {
            text-align: left;
        }
         
        .auto-style8 {
            width: 100%;
            height: 134px;
            margin-top: 7px;
        }
        .auto-style9 {
            text-align: left;
            height: 58px;
        }
        .auto-style10 {
            text-align: left;
            height: 60px;
        }
        .auto-style11 {
            text-align: center;
            height: 40px;
        }
        .auto-style12 {
            text-align: left;
            height: 15px;
        }
         
        .auto-style13 {
            height: 29px;
        }
         
    </style>
        <link href="ArticalWeb.css" rel="stylesheet" type="text/css" />

</head>
    
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <div id="ArticalDiv" class="MenuDiv">
                    <asp:Menu ID="MenuArtical" runat="server" CssClass="MenuArtical" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/InsertNewResearcher.aspx" Text="Researcher" Value="2"></asp:MenuItem>
                            <asp:MenuItem Text="Artical" Value="1"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Queries.aspx" Text="Data" Value="3"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </div>
            </asp:Panel>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Articallb1" runat="server" Text="Add Artical" Font-Size="X-Large" Font-Bold="True" Font-Underline="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <table>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="ArticalIdb" runat="server" Text="ArticalID"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ArticalIDTextbox" runat="server" MaxLength="6"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="ArticalNamelb" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ArticalNameText" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="PublishDatelb" runat="server" Text="Date"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="DateText" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="SubjectSelected" runat="server" Height="17px" Width="169px">
                                    <asp:ListItem Value="-1">Chosse One</asp:ListItem>
                                    <asp:ListItem Value="1">HCI</asp:ListItem>
                                    <asp:ListItem Value="2">ACI</asp:ListItem>
                                    <asp:ListItem Value="3">Animal Rights</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Articalsbtn" runat="server" OnClick="Articalsbtn_Click" Text="Add " CssClass="AddResearcherbtn" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="magazinelb1" runat="server" Text="Add Magazines" Font-Size="X-Large" Font-Bold="True" Font-Underline="True"></asp:Label>
                </td>
            </tr>
            </table>
    <div>
        <table class="auto-style8">
            <tr>
                <td class="auto-style11">
                    <table>
                        <tr>
                            <td class="auto-style13">
                                <asp:Label ID="MagId" runat="server" Text="Id"></asp:Label>
                            </td>
                            <td class="auto-style13">
                                <asp:TextBox ID="MagIdText" runat="server" MaxLength="6"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Namelb" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:TextBox ID="MgTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="MagAddbtn" runat="server" OnClick="MagAddbtn_Click" Text="Add " CssClass="AddResearcherbtn" />
                </td>
            </tr>
            </table>
    </div>
        <div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ClearFormbtn1" runat="server" CssClass="AddResearcherbtn" OnClick="ClearFormbtn1_Click" Text="Clear" />
                </div>
    </form>
    </body>
</html>
