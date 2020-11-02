 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articals.aspx.cs" Inherits="ArticalsSystem.Articals" %>

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
            height: 26px;
            text-align: left;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
                <link href="ArticalWeb.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                    <asp:Label ID="Articallb2" runat="server" Text="Artical" Font-Size="X-Large"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="DataArticalg1" runat="server" CssClass="mydatagrid">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
            <br />
            <br />
            <br />
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="magazinelb" runat="server" Text="Magazines" Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="magazinegrid" runat="server" CssClass="mydatagrid">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="ArticalBackbtn" runat="server" OnClick="ArticalBackbtn_Click" Text="Back&gt;&gt;" CssClass="AddResearcherbtn" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
        </div>
    </form>
</body>
</html>
