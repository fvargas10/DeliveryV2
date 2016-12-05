<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Proyect.Delivery.RegistroUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

     <section>
		<div class="container section-padding">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="titulo">Registro del Usuario</h2>				    				                           
                    <div class="col-lg-4 col-lg-offset-4">
                     <table class="nav-justified">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Rut:"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtrut" runat="server" class="form-control" placeholder="Ej: 19234221-9"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnombre" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" class="form-control" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Repetir Contraseña:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpass2" runat="server" class="form-control" TextMode="Password" placeholder="Repetir Contraseña"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Aceptar" runat="server" CssClass="btn" Height="32px" OnClick="Aceptar_Click" Text="Aceptar" Width="93px" />
&nbsp;
                    <asp:Button ID="Cancelar" runat="server" CssClass="btn" Height="32px" Text="Cancelar" Width="93px" />
                </td>
            </tr>
        </table>   
    </div>
                    
</asp:Content>
