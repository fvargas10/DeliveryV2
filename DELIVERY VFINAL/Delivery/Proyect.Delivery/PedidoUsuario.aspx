<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="PedidoUsuario.aspx.cs" Inherits="Proyect.Delivery.PedidoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <section>
		<div class="container section-padding">
			<div class="row">
				<div class="col-lg-12 text-center">

					<h2 class="titulo">Muy Bien! Ya puedes realizar tu Pedido</h2>
                    <h3 class="subtitulo text-muted">Por favor, rellene todos los campos de a continuación para realizar su Pedido</h3>

                    <div class="form-group">
                        <label>Rut del Usuario ingresado</label>
                        <asp:TextBox ID="txtrut" runat="server" class="form-control" Enabled="False" ReadOnly="True" CssClass="form-control" Width="220px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Seleccione el Plato que mas le guste</label>
                        <asp:DropDownList ID="ddrest" runat="server" class="form-control" Width="220px" AutoPostBack="True" CssClass="form-control" DataSourceID="restaurant" DataTextField="NOM_PLATO" DataValueField="ID_PEDIDO"></asp:DropDownList>
                        <asp:SqlDataSource ID="restaurant" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDelivery %>" SelectCommand="SELECT PEDIDO.ID_PEDIDO, PLATO.NOM_PLATO FROM PEDIDO INNER JOIN PLATO ON PEDIDO.ID_PLATO = PLATO.ID_PLATO"></asp:SqlDataSource>
                    </div>
                    <div class="form-group">
                        <label>Fecha y Hora Actual</label>
                        <asp:TextBox ID="txtfecha" runat="server" class="form-control" Enabled="False" CssClass="form-control" ReadOnly="True" Width="220px" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Cantidad de Platos para realizar el pedido</label>
                        <asp:TextBox ID="txtcantidad" runat="server" class="form-control" placeholder="Ingrese la cantidad que desee" TextMode="Number" Width="220px"></asp:TextBox>
                    </div>              
                    <div class="bottom">
                    <asp:Button ID="realizarpedido" runat="server" CssClass="btn" Text="Realizar Pedido" OnClick="realizarpedido_Click"/>
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
