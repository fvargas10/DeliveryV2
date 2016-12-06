using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class PedidoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            this.txtrut.Text = (String)Session["RUT_USUARIO"];
            DateTime datet = DateTime.Now;
            txtfecha.Text = datet.ToString();
        }

        protected void realizarpedido_Click(object sender, EventArgs e)
        {
            CatalogPedido catped = new CatalogPedido();
            DateTime datetimenow = Convert.ToDateTime(this.txtfecha.Text);
            int idplato = Int32.Parse(ddrest.Text);
            int cantidadplato = Int32.Parse(txtcantidad.Text);
            Pedido ped = new Pedido(idplato, this.txtrut.Text, datetimenow, cantidadplato);
            catped.createPedido(ped);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Pedido creado exitosamente')", true);
            txtcantidad.Text = "";            
        }
    }
}