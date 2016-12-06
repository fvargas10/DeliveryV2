using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;

namespace BussinessRules
{
    public class CatalogPedido
    {
        public void createPedido(Pedido ped)
        {

            DataAccess.DataBase bd = new DataBase();
            bd.connect();
            string sql = "INSERT INTO PEDIDO (ID_PLATO, RUT_USUARIO, FECHA_PEDIDO, CANTIDAD_PEDIDO) VALUES ('" + ped.Id_plato  + "','" + ped.Rut_usuario + "','" + ped.Fecha_pedido + "','" + ped.Cantidad + "')";
            bd.CreateCommand(sql);
            bd.execute();
            bd.Close();

        }
    }
}
