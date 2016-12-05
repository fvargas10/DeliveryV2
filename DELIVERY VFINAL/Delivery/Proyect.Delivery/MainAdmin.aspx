<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainAdmin.aspx.cs" Inherits="Proyect.Delivery.MainAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 235px;
        }
        .auto-style5 {
            width: 235px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 147px;
        }
        .auto-style8 {
            width: 147px;
            height: 23px;
        }
    </style>
</head>
<body style="height: 494px; width: 628px;">
    <form id="form1" runat="server">
    <div style="background-image: url('images/lanchas.JPG'); height: 489px;">
        
    
        <table class="auto-style1">
            <caption>
                <asp:Label ID="Label1" runat="server" style="color: #000000; font-size: xx-large;" Text="BIENVENIDO ADMINISTRADOR" Font-Names="Bernard MT Condensed"></asp:Label>
            </caption>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" style="font-size: large; font-style: italic; font-weight: 700" Text="Nombre Admin:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtadmin" runat="server" EnableTheming="True" Width="241px" Enabled="False" BorderColor="#6699FF" style="color: #000000; background-color: #6699FF"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" style="color: #000000; font-size: x-large;" Text="Registrar Restaurant"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Entrar" OnClick="Button1_Click" style="font-size: large" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" style="color: #000000; font-size: x-large;" Text="Ver historial de Ventas"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Entrar" style="font-size: large" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
