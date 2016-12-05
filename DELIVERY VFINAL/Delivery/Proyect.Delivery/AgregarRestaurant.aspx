<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="AgregarRestaurant.aspx.cs" Inherits="Proyect.Delivery.AgregarRestaurant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <section>
		<div class="container section-padding">
			<div class="row">
				<div class="col-lg-12 text-center">

					<h2 class="titulo">Agregue un nuevo Restaurant</h2>
                    <h3 class="subtitulo text-muted">Importante rellenar todos los campos antes de agregar un nuevo Restaurant</h3>
				
                    <div class="form-group">
                        <label>Ciudad donde se encuentran ubicados</label>
                        <asp:TextBox ID="txtciudad" runat="server" class="form-control" Enabled="False" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Nombre del Restaurant</label>
                        <asp:TextBox ID="txtnombre" runat="server" class="form-control" placeholder="Restaurant"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Dirección donde se encuentra ubicado</label>
                        <asp:TextBox ID="txtdireccion" runat="server" class="form-control" placeholder="Direccion"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Correo</label>
                        <asp:TextBox ID="txtcorreo" runat="server" class="form-control" placeholder="Correo" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Teléfono de contacto</label>
                        <asp:TextBox ID="txttel" runat="server" class="form-control" placeholder="Telefono" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Horario de Apertura</label>
                        <asp:TextBox ID="txtatencion" runat="server" class="form-control" placeholder="Hora de Apertura" TextMode="Time"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Horario de Cierre</label>
                        <asp:TextBox ID="txtcierre" runat="server" class="form-control" placeholder="Hora de Cierre" TextMode="Time"></asp:TextBox>
                    </div>
                     <div class="form-group">
                        <label>Ingrese una clave</label>
                        <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Vuelva a ingresa su clave</label>
                        <asp:TextBox ID="txtpass2" runat="server" class="form-control" placeholder="Nuevamente" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="bottom">
                    <asp:Button ID="Aceptar" runat="server" CssClass="btn" Text="Aceptar y Guardar Restaurant" OnClick="Aceptar_Click" />
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
