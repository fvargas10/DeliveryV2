using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class UsuarioIngreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadmin_Click(object sender, EventArgs e)
        {
            CatalogUsuario catusu = new CatalogUsuario();
            Usuario usu = new Usuario();
            bool ok = catusu.LoginUsuario(txtrut.Text, txtpass.Text);
            if (ok)
            {
                Session["ok"] = true;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('LOGIN OK')", true);
                Response.Redirect("BuscarRestaurant.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('LOGIN IS WRONG')", true);
            }
        }
    }
}