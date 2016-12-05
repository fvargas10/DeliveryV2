using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using System.Data.Common;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.IO;

namespace BussinessRules
{
    public class CatalogAdministrador
    {
        //ENCRIPTACION Y DESENCRIPTACION DE LAS CLAVES PARA EL LOGIN

        public string GetMD5(string str)
        {
            MD5 md5 = MD5CryptoServiceProvider.Create();
            ASCIIEncoding encoding = new ASCIIEncoding();
            byte[] stream = null;
            StringBuilder sb = new StringBuilder();
            stream = md5.ComputeHash(encoding.GetBytes(str));
            for (int i = 0; i < stream.Length; i++) sb.AppendFormat("{0:x2}", stream[i]);
            return sb.ToString();
        }

        public byte[] Clave = Encoding.ASCII.GetBytes("Tu Clave");
        public byte[] IV = Encoding.ASCII.GetBytes("Devjoker7.37hAES");

        public string Encripta(string Cadena)
        {

            byte[] inputBytes = Encoding.ASCII.GetBytes(Cadena);
            byte[] encripted;
            RijndaelManaged cripto = new RijndaelManaged();
            using (MemoryStream ms = new MemoryStream(inputBytes.Length))
            {
                using (CryptoStream objCryptoStream = new CryptoStream(ms, cripto.CreateEncryptor(Clave, IV), CryptoStreamMode.Write))
                {
                    objCryptoStream.Write(inputBytes, 0, inputBytes.Length);
                    objCryptoStream.FlushFinalBlock();
                    objCryptoStream.Close();
                }
                encripted = ms.ToArray();
            }
            return Convert.ToBase64String(encripted);
        }



        public string Desencripta(string Cadena)
        {
            byte[] inputBytes = Convert.FromBase64String(Cadena);
            byte[] resultBytes = new byte[inputBytes.Length];
            string textoLimpio = String.Empty;
            RijndaelManaged cripto = new RijndaelManaged();
            using (MemoryStream ms = new MemoryStream(inputBytes))
            {
                using (CryptoStream objCryptoStream = new CryptoStream(ms, cripto.CreateDecryptor(Clave, IV), CryptoStreamMode.Read))
                {
                    using (StreamReader sr = new StreamReader(objCryptoStream, true))
                    {
                        textoLimpio = sr.ReadToEnd();
                    }
                }
            }
            return textoLimpio;
        }
        //TERMINO DE LOS DOS METODOS PARA EL LOGIN



        public bool LoginAdmin(string rut_admin, string pass_admin)
        {
            bool ok = false;
            DataAccess.DataBase bd = new DataAccess.DataBase();
            bd.connect();
            string sql = "SELECT * FROM ADMINISTRADOR WHERE RUT_ADMIN='" + rut_admin + "' AND PASS_ADMIN= '" + pass_admin + "'";
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

        public bool ComprobarFormatoEmail(string sEmailAComprobar)
        {
            String sFormato;
            sFormato = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(sEmailAComprobar, sFormato))
            {
                if (Regex.Replace(sEmailAComprobar, sFormato, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

         // VALIDACION DE RUT INGRESADO
        public bool ValidaRut(string rut)
        {
            rut = rut.Replace(".", "").ToUpper();
            Regex expresion = new Regex("^([0-9]+-[0-9K])$");
            string dv = rut.Substring(rut.Length - 1, 1);
            if (!expresion.IsMatch(rut))
            {
                return false;
            }
            char[] charCorte = { '-' };
            string[] rutTemp = rut.Split(charCorte);
            if (dv != Digito(int.Parse(rutTemp[0])))
            {
                return false;
            }
            return true;
        }


        public string Digito(int rut)
        {
            int suma = 0;
            int multiplicador = 1;
            while (rut != 0)
            {
                multiplicador++;
                if (multiplicador == 8)
                    multiplicador = 2;
                suma += (rut % 10) * multiplicador;
                rut = rut / 10;
            }
            suma = 11 - (suma % 11);
            if (suma == 11)
            {
                return "0";
            }
            else if (suma == 10)
            {
                return "K";
            }
            else
            {
                return suma.ToString();
            }
        }

        //TERMINAN LOS DOS METODOS PARA EL RUT

        public void insertAdmin(Administrador ad)
        {

            DataAccess.DataBase bd = new DataBase();
            bd.connect();
            string sql = "INSERT INTO ADMINISTRADOR (RUT_ADMIN, NOM_ADMIN, PASS_ADMIN) VALUES ('" + ad.Rut_admin + "','" + ad.Nom_admin + "','" + ad.Pass_admin + "')";
            bd.CreateCommand(sql);
            bd.execute();
            bd.Close();

        }


        public Administrador GetNameAdmin(string rut_admin, string pass_admin)
        {
            DataAccess.DataBase bd = new DataAccess.DataBase();
            bd.connect();
            string sql = "SELECT NOM_ADMIN FROM ADMINISTRADOR WHERE RUT_ADMIN='" + rut_admin + "' AND PASS_ADMIN= '" + pass_admin + "'";
            bd.CreateCommand(sql);
            Administrador llocal = new Administrador();
            Administrador a = null;
            DbDataReader result = bd.Query();
            result.Read();
            a = new Administrador(result.GetString(0));
            result.Close();
            bd.Close();
            return a;
        }
    }
}
