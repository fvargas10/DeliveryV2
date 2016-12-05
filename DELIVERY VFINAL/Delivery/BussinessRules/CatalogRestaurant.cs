using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using System.Data.Common;
using System.Data;
using System.Globalization;

namespace BussinessRules
{
    public class CatalogRestaurant
    {
        public bool LoginRest(string email_rest, string pass_rest)
        {
            bool ok = false;
            DataAccess.DataBase bd = new DataAccess.DataBase();
            bd.connect();
            string sql = "SELECT * FROM RESTAURANT WHERE EMAIL_REST='" + email_rest + "' AND PASS_REST= '" + pass_rest + "'";
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

        public Restaurant ReturnNombre(string email_rest, string pass_rest)
        {
            DataAccess.DataBase bd = new DataAccess.DataBase();
            bd.connect();
            string sql = "SELECT NOMBRE_REST FROM RESTAURANT WHERE EMAIL_REST='" + email_rest + "' AND PASS_REST= '" + pass_rest + "'";
            bd.CreateCommand(sql);
            Restaurant llocal = new Restaurant();
            Restaurant a = null;
            DbDataReader result = bd.Query();
            result.Read();
            a = new Restaurant(result.GetString(0));
            result.Close();
            bd.Close();
            return a;
        }


        public void insertRest(Restaurant rest)
        {

            DataAccess.DataBase bd = new DataBase();
            bd.connect();
            string sql = "INSERT INTO RESTAURANT (PASS_REST, NOMBRE_REST, DIRECCION_REST, CIUDAD_REST, HORARIO_ATENCION, HORARIO_CIERRE, EMAIL_REST, TELEFONO_REST) VALUES ('" + rest.Pass_rest + "','" + rest.Nombre_rest + "','" + rest.Direccion_rest + "','" + rest.Ciudad_rest + "','" + rest.Horario_atencion + "','" + rest.Horario_cierre + "','" + rest.Email_rest + "','" + rest.Telefono_rest + "')";
            bd.CreateCommand(sql);
            bd.execute();
            bd.Close();

        }

        public void deleteRest(string name)
        {
            DataAccess.DataBase bd = new DataBase();
            bd.connect();
            string sql = "DELETE FROM RESTAURANT WHERE RESTAURANT.NOMBRE_REST='" + name + "'";
            bd.CreateCommand(sql);
            bd.execute();
            bd.Close();
        }

        public List<Restaurant> findLocal(string name)
        {
            String res;
            DataAccess.DataBase bd = new DataBase();
            bd.connect();
            string sql = "select * from RESTAURANT where NOMBRE_REST like '%" + name + "%'";
            bd.CreateCommand(sql);
            List<Restaurant> llocal = new List<Restaurant>();
            Restaurant a = null;
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                
                res = result.GetDateTime(4).ToString("t", CultureInfo.CreateSpecificCulture("en-us"));
                a = new Restaurant(result.GetString(1), result.GetString(2), result.GetString(3), result.GetDateTime(4), result.GetDateTime(5), result.GetString(6), result.GetString(7));
                llocal.Add(a);
            }
            result.Close();
            bd.Close();
            return llocal;
        }

        public List<Restaurant> getCodeRest()
        {
            DataAccess.DataBase bd = new DataAccess.DataBase();
            bd.connect(); //método conectar

            List<Restaurant> rest = new List<Restaurant>();
            string sql = "SELECT COD_REST,NOMBRE_REST FROM RESTAURANT";
            bd.CreateCommand(sql);
            DbDataReader readed = bd.Query();//resultado de la consulta
            while (readed.Read())
            {
                Restaurant r = new Restaurant(readed.GetInt32(0), readed.GetString(1));
                rest.Add(r);
            }
            readed.Close();
            bd.Close();
            return rest;
        }

        /**
        public List<Restaurant> showRestaurant(string s)
        {
            DataAccess.DataBase bd = new DataAccess.DataBase();
            bd.connect();
            if (s == null)
                s = "";
            List<Restaurant> listRestaurant = new List<Restaurant>();
            string sqlSearch = "SELECT NOMBRE_REST from academic inner join staff on AcademicName=StaffName where AcademicName like '%" + s + "%'";
            bd.CreateCommand(sqlSearch);
            //Devolver valores
            DbDataReader result = bd.Query(); //disponible resultado
            while (result.Read())
            {
                Academic a = new Academic(result.GetString(0), result.GetString(1)); //Datos tabla consulta sql
                listRestaurant.Add(a);
            }
            result.Close();
            bd.close();
            return listRestaurant;

        }}**/
    }
}

