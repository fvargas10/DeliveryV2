<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="BuscarRestaurant.aspx.cs" Inherits="Proyect.Delivery.BuscarRestaurant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <section>
		<div class="container section-padding">
			<div class="row">
				<div class="col-lg-12 text-center">
                    <h1 class="titulo1">Felicitaciónes</h1>
					<h2 class="titulo2">Bienvenido Usuario</h2>
                    <h3 class="subtitulo text-muted">Ya puedes buscar y seleccionar un restaurant y comenzar un nuevo pedido</h3>				
                    <div class="form-group">
                        <label>Restaurant</label>
                        <asp:TextBox ID="txtrest" runat="server" class="form-control"></asp:TextBox>
                        <asp:Button ID="btnaceptar" runat="server" Text="Aceptar" CssClass="form-control" OnClick="btnaceptar_Click" />
                    <div class="boton text-center">
                        <table class="nav-justified">
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1145px">
                            <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="nombre_rest" HeaderText="Nombre" />
                            <asp:BoundField DataField="direccion_rest" HeaderText="Direccion" />
                            <asp:BoundField DataField="email_rest" HeaderText="Correo" />
                            <asp:BoundField DataField="telefono_rest" HeaderText="Telefono" />
                            <asp:BoundField DataField="horario_atencion" HeaderText="Apertura" />
                            <asp:BoundField DataField="horario_cierre" HeaderText="Cierre" />
                            <asp:CommandField SelectText="Visitar Restaurant" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
			</div>

			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
                    
                    
				</div>
			</div>
			
		</div>
	</section>
</asp:Content>
