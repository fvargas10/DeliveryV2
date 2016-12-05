using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessRules;

namespace Proyect.Delivery
{
    public partial class BuscarRestaurant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            this.GridView1.Visible = false;
            CatalogRestaurant rest = new CatalogRestaurant();
            List<Restaurant> listrest = rest.findLocal("");

            this.GridView1.DataSource = listrest;
            this.DataBind();
        }
/**
        public void show()
        {
            this.GridView1.Visible = true;
            CatalogRestaurant clocal = new CatalogRestaurant();
            List<Restaurant> llocal = new List<Restaurant>();
            string t = this.txtrest.Text;
            if (t == null)
                t = "";
            llocal = clocal.findLocal(t);
            // this.GridView1.DataSource = llocal;
            // this.DataBind();
        }
**/
        protected void btnaceptar_Click(object sender, EventArgs e)
        {
            this.GridView1.Visible = true;
            CatalogRestaurant rest = new CatalogRestaurant();
            DateTime dateatencion = Convert.ToDateTime(this.GridView1.SelectedRow);
            List<Restaurant> listrest = rest.findLocal(this.txtrest.Text);

            this.GridView1.DataSource = listrest;
            this.DataBind();
        }
    }
}