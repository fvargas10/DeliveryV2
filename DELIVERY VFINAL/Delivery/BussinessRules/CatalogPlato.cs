using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;

namespace BussinessRules
{
    public class CatalogPlato
    {
        public void insertPlato(Plato pl)
        {

            DataAccess.DataBase bd = new DataBase();
            bd.connect();
            string sql = "INSERT INTO PLATO (EMAIL_REST, NOM_PLATO, PRECIO_PLATO, DESCRIPCION_PLATO, IMAGE_PLATO) VALUES ('" + pl.Email_rest + "','" + pl.Nom_plato + "','" + pl.Precio_plato + "','" + pl.Descripcion_plato + "','" + pl.Image_plato +"')";
            bd.CreateCommand(sql);
            bd.execute();
            bd.Close();

        }

    }
}
