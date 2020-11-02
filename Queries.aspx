<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Queries.aspx.cs" Inherits="ArticalsSystem.Queries" %>

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
            text-align: left;
        }
    </style>
            <link href="ArticalWeb.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <div>
            <div class="ArticalDiv">
                <asp:Menu ID="Menu1" runat="server" CssClass="MenuArtical" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/InsertNewResearcher.aspx" Text="Researcher" Value="1"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/InsertArticals.aspx" Text="Articals" Value="2"></asp:MenuItem>
                        <asp:MenuItem Selected="True" Text="Data" Value="3"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Datalb" runat="server" Font-Size="X-Large" Text="Data of Articals and researcher"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                        <br />
                        <br />
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="Reseacheridlb3" runat="server" Text="Reseacher id"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="ArticalDlb" runat="server" Text="Artical ID"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="MagazinIDlb" runat="server" Text="Magazin ID"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True">
                                        <asp:ListItem Value="-1">Select Value</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ArticalDropdwon" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True">
                                        <asp:ListItem Value="-1">Select Value</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="mgDropDownList" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True">
                                        <asp:ListItem Value="-1">Select Value</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="Addbtn2" runat="server" CssClass="AddResearcherbtn" OnClick="Addbtn2_Click" Text="Add" />
                                    &nbsp;
                                    <asp:Button ID="Removebtn" runat="server" CssClass="AddResearcherbtn" OnClick="Removebtn_Click" Text="Remove" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="dataQ1btn" runat="server" OnClick="dataQ1btn_Click" Text="Show Data not sorted" CssClass="AddResearcherbtn" Visible="False" />
                        <br />
                        <asp:GridView ID="Query1" runat="server" CssClass="mydatagrid">
                        </asp:GridView>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="dataQ1" runat="server"></asp:Label>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="dataQ2btn" runat="server" OnClick="dataQ2btn_Click" Text="Show Data Sorted" CssClass="AddResearcherbtn" Visible="False" />
                        <br />
                        <asp:GridView ID="Query2" runat="server" CssClass="mydatagrid">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="dataQ2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
