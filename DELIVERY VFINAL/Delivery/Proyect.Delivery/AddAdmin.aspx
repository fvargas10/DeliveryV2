<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="Proyect.Delivery.LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 176px;
        }
        .auto-style8 {
            width: 176px;
            height: 26px;
        }
        .auto-style11 {
            width: 281px;
        }
        .auto-style12 {
            width: 281px;
            height: 26px;
        }
        .auto-style13 {
            width: 171px;
        }
        .auto-style14 {
            width: 171px;
            height: 26px;
        }
    </style>
</head>
<body style="height: 239px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">
                    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Administrador" style="font-size: x-large"></asp:Label>
                    </p>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label2" runat="server" Text="Rut:" style="font-size: large"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtrut" runat="server" EnableTheming="True" Width="241px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style14">
                    <asp:Label ID="Label3" runat="server" Text="Nombre:" style="font-size: large"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtnombre" runat="server" EnableTheming="True" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server" Text="Password:" style="font-size: large"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtpassword" runat="server" EnableTheming="True" Width="241px" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="Label5" runat="server" Text="Repetir Password:" style="font-size: large"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtpassword2" runat="server" EnableTheming="True" Width="241px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aceptar" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Cancelar" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
