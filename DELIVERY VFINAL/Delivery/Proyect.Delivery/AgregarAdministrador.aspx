<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="AgregarAdministrador.aspx.cs" Inherits="Proyect.Delivery.AgregarAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <section>
		<div class="container section-padding">
			<div class="row">
				<div class="col-lg-12 text-center">

					<h2 class="titulo">Agregue un nuevo Administrador al sistema</h2>
                    <h3 class="subtitulo text-muted">Importante rellenar todos los campos antes de agregar un nuevo Administrador</h3>
				
                    <div class="form-group">
                        <label>Rut</label>
                        <asp:TextBox ID="txtrut" runat="server" class="form-control" placeholder="Ingrese su Rut"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Nombre</label>
                        <asp:TextBox ID="txtnombre" runat="server" class="form-control" placeholder="Ingrese su Nombre"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Repetir Contraseña</label>
                        <asp:TextBox ID="txtpass2" runat="server" class="form-control" placeholder="Repetir Contraseña" TextMode="Password"></asp:TextBox>
                    </div>                  
                    <div class="bottom">
                    <asp:Button ID="Aceptar" runat="server" CssClass="btn" Text="Registrar nuevo Administrador" OnClick="Aceptar_Click" />
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
