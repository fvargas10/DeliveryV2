using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class RestaurantIngreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnrestaurant_Click(object sender, EventArgs e)
        {
            CatalogRestaurant catrest = new CatalogRestaurant();
            Restaurant rest = new Restaurant();
            bool ok = catrest.LoginRest(txtemail.Text, txtpass.Text);
            if (ok)
            {
                Session["ok"] = true;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('LOGIN OK')", true);
                rest = catrest.ReturnNombre(txtemail.Text, txtpass.Text);
                Session["NOMBRE_REST"] = rest.Nombre_rest.ToString();
                String Valor = txtemail.Text;
                Response.Redirect("AgregarPlato.aspx?Valor=" + Valor);
                //Session["NOMBRE_REST"] = catrest.ReturnNombre(txtrut.Text, txtpass.Text);
                Response.Redirect("AgregarPlato.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('LOGIN IS WRONG')", true);
            }
        }
    }
}