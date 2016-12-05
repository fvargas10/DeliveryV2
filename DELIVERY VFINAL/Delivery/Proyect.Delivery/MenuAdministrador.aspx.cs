using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyect.Delivery
{
    public partial class MenuAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //captura el nombre de cualquier administrador que ingresa al sistema
            this.admin.Text = (String)Session["NOM_ADMIN"];
        }

        protected void registrarrest_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarRestaurant.aspx");
        }

        protected void registraadmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarAdministrador.aspx");
        }
    }
}