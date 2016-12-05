using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class AgregarAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            if (txtpass.Text == txtpass2.Text)
            {
                CatalogAdministrador catad = new CatalogAdministrador();
                Administrador admin = new Administrador(txtrut.Text, txtnombre.Text, txtpass.Text);
                catad.insertAdmin(admin);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Administrador agregado correctamente')", true);
                txtrut.Text = "";
                txtnombre.Text = "";
                txtpass.Text = "";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Las contraseñas no coinciden')", true);
                txtpass2.Text = "";
                txtpass.Text = "";
            }
        }
    }
}