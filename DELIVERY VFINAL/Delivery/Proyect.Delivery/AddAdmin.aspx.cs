using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtpassword.Text == txtpassword2.Text)
            {
                CatalogAdministrador catad = new CatalogAdministrador();
                Administrador admin = new Administrador(txtrut.Text, txtnombre.Text, txtpassword.Text);
                catad.insertAdmin(admin);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Administrador agregado correctamente')", true);
                txtrut.Text = "";
                txtnombre.Text = "";
                txtpassword.Text = "";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Las contraseñas no coinciden')", true);
                txtpassword2.Text = "";
                txtpassword.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}