<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageLocal.aspx.cs" Inherits="Proyect.Delivery.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 295px;
        }
        .auto-style3 {
            width: 219px;
        }
        .auto-style5 {
            width: 222px;
            color: #FFFFFF;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style7 {
            width: 222px;
        }
    </style>
</head>
<body style="height: 513px">
    <form id="form1" runat="server">
    <div style="background-image: url('images/fondo local.jpg')">
    
        <table class="auto-style1">
            <caption>
                <asp:Label ID="Label1" runat="server" style="font-size: xx-large; color: #FFFFFF;" Text="Gestionar Locales" Font-Names="Arial Black"></asp:Label>
            </caption>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Ingrese nombre local:" CssClass="auto-style6" style="font-size: x-large"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="NTextBox" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="FButton" runat="server" OnClick="FButton_Click" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                        <Columns>
                            <asp:BoundField DataField="nombre_rest" HeaderText="Nombre" />
                            <asp:BoundField DataField="direccion_rest" HeaderText="Direccion" />
                            <asp:BoundField DataField="email_rest" HeaderText="Correo" />
                            <asp:BoundField DataField="telefono_rest" HeaderText="Telefono" />
                            <asp:BoundField DataField="horario_atencion" HeaderText="Apertura" />
                            <asp:BoundField DataField="horario_cierre" HeaderText="Cierre" />
                            <asp:CommandField SelectText="Visitar Restaurant" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
