<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proyect.Delivery.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style13 {
            width: 100%;
        }
        .auto-style17 {
            width: 405px;
        }
        .auto-style18 {
            width: 203px;
        }
        .auto-style19 {
            width: 428px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('images/almejas222.jpg'); height: 638px; width: 874px;">
        &nbsp;
        <table class="auto-style13">
            <caption>
                <asp:Label ID="Label1" runat="server" Font-Names="Goudy Stout" Font-Overline="True" Font-Size="XX-Large" style="font-size: xx-large; color: #FFCC66" Text="Delivery SeaFood"></asp:Label>
                <br />
            </caption>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style17">&nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Rockwell Extra Bold" style="font-size: xx-large; color: #FF9900; font-weight: 700" OnClick="LinkButton1_Click">Administración</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton7" runat="server" Font-Names="Segoe Marker" OnClick="LinkButton7_Click" style="font-size: xx-large; color: #FFFFFF">Registrarme</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style17">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Names="Rockwell Extra Bold" style="font-size: xx-large; color: #FF9900; font-weight: 700" BorderColor="Black" Font-Overline="True" Font-Strikeout="False" OnClick="LinkButton4_Click">Ingreso Usuario</asp:LinkButton>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Names="Rockwell Extra Bold" style="font-size: xx-large; color: #FF9900; font-weight: 700" OnClick="LinkButton5_Click">Ingreso Restaurant</asp:LinkButton>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
