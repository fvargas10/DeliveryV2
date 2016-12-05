<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="UsuarioIngreso.aspx.cs" Inherits="Proyect.Delivery.UsuarioIngreso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <section>
		<div class="container section-padding">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="titulo">Login Usuario</h2>				    				                  
                    
                    <div class="col-lg-4 col-lg-offset-4">
                    
                    <div class="form-group">
                        <label>Rut:</label>
                        <asp:TextBox ID="txtrut" runat="server" class="form-control" placeholder="Rut usuario" Width="370px"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Contraseña" Width="370px" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="boton text-center">
                        <asp:LinkButton ID="btnadmin" runat="server" class="btn btn-default" OnClick="btnadmin_Click">Ingresar</asp:LinkButton>
                    </div>
  
				</div>

                    </div> 
				</div>      
			</div>			
	</section>

</asp:Content>
