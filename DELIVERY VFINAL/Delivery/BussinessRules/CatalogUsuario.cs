using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using System.Data.Common;
using System.Collections.Generic;

namespace BussinessRules
{
    public class CatalogUsuario
    {
        public bool LoginUsuario(string rut_usuario, string pass_usuario)
        {
            bool ok = false;
            DataAccess.DataBase bd = new DataAccess.DataBase();
            bd.connect();
            string sql = "SELECT * FROM USUARIO WHERE RUT_USUARIO='" + rut_usuario + "' AND PASS_USUARIO= '" + pass_usuario + "'";
            bd.CreateCommand(sql);
            DbDataReader result = bd.Query();
            if (result.Read())
            {
                ok = true;

            }
            //Administrador c = new Administrador(result.GetString(0), result.GetString(1));
            result.Close();
            bd.Close();
            return ok;

        }

        public void insertUsuario(Usuario usu)
        {

            DataAccess.DataBase bd = new DataBase();
            bd.connect();
            string sql = "INSERT INTO USUARIO (RUT_USUARIO,NOM_USUARIO,PASS_USUARIO) VALUES ('" + usu.Rut_usuario + "','" + usu.Nom_usuario + "','" + usu.Pass_usuario + "')";
            bd.CreateCommand(sql);
            bd.execute();
            bd.Close();

        }
    }
}
