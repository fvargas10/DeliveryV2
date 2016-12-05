<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRestaurant.aspx.cs" Inherits="Proyect.Delivery.AddRestaurant" %>    
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        //funcion para validar el correo
        function VerificaEmail(Email) {
            var emailRegEx = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i;
            if (Email.search(emailRegEx) == -1) {
                status = false;
            } else {
                status = true;
            }
            return status;
        }
</script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 33px;
        }
        .auto-style3 {
            width: 222px;
        }
        .auto-style4 {
            width: 141px;
        }
        .auto-style5 {
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('images/pajaro2.jpg'); height: 431px; width: 1011px;">
    
        <table class="auto-style1">
            <caption>
                <br />
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #FFFFFF; font-size: large" Text="AGREGAR RESTAURANT"></asp:Label>
                <br />
                <br />
            </caption>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Contraseña:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtpass" runat="server" EnableTheming="True" Width="167px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" style="font-size: large" Text="Horario Atención:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtatencion" runat="server" EnableTheming="True" Width="167px" TextMode="Time"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label10" runat="server" style="font-size: large" Text="Repetir Contraseña:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtpass2" runat="server" EnableTheming="True" Width="167px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" style="font-size: large" Text="Horario Cierre:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcierre" runat="server" EnableTheming="True" Width="167px" TextMode="Time"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" style="font-size: large" Text="Nombre:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtnombre" runat="server" EnableTheming="True" Width="167px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" style="font-size: large" Text="Correo:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcorreo" runat="server" EnableTheming="True" Width="167px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" style="font-size: large" Text="Dirección:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtdir" runat="server" EnableTheming="True" Width="167px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" style="font-size: large" Text="Teléfono:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttel" runat="server" EnableTheming="True" Width="167px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" style="font-size: large" Text="Ciudad:"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtciudad" runat="server" EnableTheming="True" Width="167px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" />
                </td>
                <td>
                    <asp:Button ID="salir" runat="server" OnClick="salir_Click" Text="Salir" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
