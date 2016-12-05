<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="AgregarPlato.aspx.cs" Inherits="Proyect.Delivery.AgregarPlato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <section>
		<div class="container section-padding">
			<div class="row">
				<div class="col-lg-12 text-center">

					<h2 class="titulo">Agregue su plato</h2>
                    <h3 class="subtitulo text-muted">Importante rellenar todos los campos antes de agregar un nuevo plato</h3>
				
                    <div class="form-group">
                        <label>Restaurant</label>&nbsp;
                        <asp:TextBox ID="txtrest" runat="server" class="form-control" Enabled="False" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Nombre</label>
                        <asp:TextBox ID="txtnombre" runat="server" class="form-control" placeholder="Nombre del Plato"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Precio</label>
                        <asp:TextBox ID="txtprecio" runat="server" class="form-control" placeholder="Valor del Plato"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Descripción</label>
                        <asp:TextBox ID="txtdescripcion" runat="server" class="form-control" placeholder="Añade información adicional a cerca del Plato" Height="50px" Width="850px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Foto referencial</label>
                    <asp:FileUpload ID="fotoplato" runat="server" CssClass="form-control" />
                        <asp:Label ID="loadimage" runat="server" Text="Imagen cargada correctamente"></asp:Label>
                        <br />
&nbsp;</div>

                    <div class="boton text-center">
                    <asp:Button ID="Aceptar" runat="server" CssClass="btn" Height="32px" OnClick="Aceptar_Click" Text="Aceptar" Width="93px" />
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
