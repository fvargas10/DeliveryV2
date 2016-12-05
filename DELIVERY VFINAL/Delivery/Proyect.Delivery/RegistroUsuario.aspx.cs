using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            CatalogAdministrador catadmin = new CatalogAdministrador();

            if (catadmin.ValidaRut(txtrut.Text) == true && txtpass.Text == txtpass2.Text)
            {
                
                CatalogUsuario catusu = new CatalogUsuario();
                
                Usuario usu = new Usuario(this.txtrut.Text, this.txtnombre.Text, this.txtpass.Text);
                catusu.insertUsuario(usu);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Rut valido')", true);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Usuario Registrado satisfactoriamente')", true);
                txtrut.Text = "";
                txtpass.Text = "";
                txtnombre.Text = "";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Rut no valido')", true);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error! las contraseñas no coinciden')", true);
                txtpass.Text = "";
                txtpass2.Text = "";
                
            }           
        }
    }
}