<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="MenuAdministrador.aspx.cs" Inherits="Proyect.Delivery.MenuAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <section>
		<div class="container section-padding">
			<div class="row">
				<div class="col-lg-12 text-center">

					<h2 class="titulo">Bienvenido Administrador</h2>
                    <h3 class="subtitulo text-muted">Para seguir adelante por favor elija una de las siguientes opciones</h3>
				
                    <div class="form-group">
                        &nbsp;<asp:Label ID="Label1" runat="server" style="font-size: large" Text="Administrador:"></asp:Label>
                        <asp:Label ID="admin" runat="server" style="font-size: large; color: #0066FF" Text="Label"></asp:Label>
                    </div>

                    <div class="boton text-center">
                        <asp:Button ID="registrarrest" runat="server" class="btn" Text="Registrar un nuevo Restaurant" OnClick="registrarrest_Click" />
                    </div>

                     <div class="boton text-center">
                        <asp:Button ID="registraadmin" runat="server" class="btn" Text="Registrar un Administrador" OnClick="registraadmin_Click" />
                    </div>

                    <div class="boton text-center">
                        <asp:Button ID="historialventas" runat="server" class="btn" Text="Ver historial de Ventas" />
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
