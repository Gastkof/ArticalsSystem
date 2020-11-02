<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Researchers.aspx.cs" Inherits="ArticalsSystem.Researchers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style5 {
            height: 26px;
            text-align: left;
        }
 
    </style>
                <link href="ArticalWeb.css" rel="stylesheet" type="text/css" />

</head>
    
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Articallb1" runat="server" Text="Researchers" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:GridView ID="RearchersTable" runat="server" CssClass="mydatagrid">
                    </asp:GridView>
                    <br />
                </td>
            </tr>
        </table>
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="BackBtnR" runat="server" OnClick="BackBtnR_Click" Text="Back" CssClass="AddResearcherbtn" />
                </td>
            </tr>
            </table>
    </div>
    </form>
    </body>
</html>
