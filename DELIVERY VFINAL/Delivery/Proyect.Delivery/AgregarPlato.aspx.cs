using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class AgregarPlato : System.Web.UI.Page
    {

        String codeRes = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            loadimage.Visible = false;
            this.txtrest.Text = (string)Session["NOMBRE_REST"];
            String Valor = Request.QueryString["Valor"];
            codeRes = Valor;
        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            CatalogPlato catpl = new CatalogPlato();
            if (fotoplato.HasFile)
            {
                fotoplato.SaveAs(Server.MapPath("images/uploadplatos//" + fotoplato.FileName));
                string url = (string)Server.MapPath("images/uploadplatos//" + fotoplato.FileName);
                loadimage.Visible = true;
                decimal precio = System.Convert.ToDecimal(txtprecio.Text);
                Plato pl = new Plato(this.codeRes, this.txtrest.Text, precio, this.txtdescripcion.Text, url);
                catpl.insertPlato(pl);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Plato agregado correctamente')", true);
                txtprecio.Text = "";
                txtdescripcion.Text = "";
                txtnombre.Text = "";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No se ha seleccionado ninguna imagen, no se pudo agregar el plato')", true);
            }
        }
    }
}