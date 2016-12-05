using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class AgregarRestaurant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtciudad.Text = "Puerto Montt";
        }

        protected void Aceptar_Click(object sender, EventArgs e)
        {
            CatalogAdministrador catad = new CatalogAdministrador();
            if (catad.ComprobarFormatoEmail(txtcorreo.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error en el formato del correo ingresado')", true);
            }
            else
            {
                if (txtpass.Text == txtpass2.Text)
                {
                    CatalogRestaurant catrest = new CatalogRestaurant();
                    DateTime dateatencion = Convert.ToDateTime(this.txtatencion.Text);
                    DateTime datecierre = Convert.ToDateTime(this.txtcierre.Text);
                    Restaurant rest = new Restaurant(this.txtpass.Text, this.txtnombre.Text, this.txtdireccion.Text, this.txtciudad.Text, dateatencion, datecierre, this.txtcorreo.Text, this.txttel.Text);
                    catrest.insertRest(rest);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Restaurant agregado correctamente')", true);
                    txtpass.Text = "";
                    txtnombre.Text = "";
                    txtdireccion.Text = "";
                    txtcierre.Text = "";
                    txtatencion.Text = "";
                    txtcierre.Text = "";
                    txtcorreo.Text = "";
                    txttel.Text = "";
                    txtpass2.Text = "";

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error! Las contraseñas no coinciden.')", true);
                    txtpass.Text = "";
                    txtpass2.Text = "";

                }
            }   
        }
    }
}