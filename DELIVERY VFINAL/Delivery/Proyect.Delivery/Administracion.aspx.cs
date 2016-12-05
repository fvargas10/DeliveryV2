using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class Administracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadmin_Click(object sender, EventArgs e)
        {
            CatalogAdministrador catdmin = new CatalogAdministrador();
            Administrador admin = new Administrador();
            bool ok = catdmin.LoginAdmin(txtrut.Text, txtpass.Text);
            if (ok)
            {
                Session["ok"] = true;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('LOGIN OK')", true);
                admin = catdmin.GetNameAdmin(txtrut.Text, txtpass.Text);
                Session["NOM_ADMIN"] = admin.Nom_admin.ToString();
                Response.Redirect("MainAdmin.aspx");

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('LOGIN IS WRONG')", true);
            }
        }
    }
}