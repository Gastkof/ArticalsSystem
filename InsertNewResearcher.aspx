<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertNewResearcher.aspx.cs" Inherits="ArticalsSystem.InsertNewResearcher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 50px;
            text-align: left;
        }
        .auto-style3 {
            height: 52px;
        }
        .auto-style4 {
            height: 61px;
        }
        </style>
    <link href="ArticalWeb.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div dir="ltr">
            <div class="ArticalDiv" id="MenuDiv">
                        <asp:Menu ID="Menu1" runat="server"  Height="16px" Orientation="Horizontal" CssClass="MenuArtical" ItemWrap="True" MaximumDynamicDisplayLevels="4">
                            <DynamicItemTemplate>
<%# Eval("Text") %>
                            </DynamicItemTemplate>
                            <Items>
                                <asp:MenuItem NavigateUrl="~/InsertNewResearcher.aspx" Selected="True" Text="Researcher" Value="1"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/InsertArticals.aspx" Text="Artical" Value="2"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Queries.aspx" Text="Data" Value="3"></asp:MenuItem>
                            </Items>
                            <StaticItemTemplate >
                                <%# Eval("Text") %>
                            </StaticItemTemplate>
                        </asp:Menu>
                    </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="background-color: #FFFFFF;">
                        <asp:Label ID="AddResearcherlb" runat="server" Text="Add Researcher" Font-Bold="True" ForeColor="Black" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lbID1" runat="server" Text="ID"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="IdTextbox" runat="server" MaxLength="9"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="FnameId" runat="server" Text="First Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Fnametextbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LnameId" runat="server" Text="Last Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Lnametextbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lbEmailId" runat="server" Text="Email"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="emailTextbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="ARankId" runat="server" Text="Academic Rank"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="AcadimcRanktextbox" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="CodeAlb" runat="server" Text="Academia code" EnableViewState="False"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="AcadimcCode" runat="server">
                                        <asp:ListItem Value="-1">Select One</asp:ListItem>
                                        <asp:ListItem Value="1">Haifa University</asp:ListItem>
                                        <asp:ListItem Value="2">Yezreel Valley College</asp:ListItem>
                                        <asp:ListItem Value="3">Afeka</asp:ListItem>
                                        <asp:ListItem Value="4">Ben Gurion</asp:ListItem>
                                        <asp:ListItem Value="5">Technion</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFFFF;" class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="AddResearcherbtn" runat="server" OnClick="AddResearcherbtn_Click" Text="Add " Font-Bold="True" Font-Names="David" Font-Overline="False" Font-Strikeout="False" CssClass="AddResearcherbtn" />
                    </td>
                </tr>
                </table>
        </div>
        <div class="auto-style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Clearbtn2" runat="server" CssClass="AddResearcherbtn" OnClick="Clearbtn2_Click" Text="Clear" />
        </div>
    </form>
</body>
</html>
