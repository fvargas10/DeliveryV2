using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
    public class Administrador
    {
        private string rut_admin;
        private string nom_admin;
        private string pass_admin;

        public Administrador(string rut, string nom, string pass)
        {
            this.rut_admin = rut;
            this.nom_admin = nom;
            this.pass_admin = pass;
        }

        public Administrador()
        {
        }

        public Administrador(string rut, string pass)
        {
            this.rut_admin = rut;
            this.pass_admin = pass;
        }

        public Administrador(string nomAdmin)
        {
            this.nom_admin = nomAdmin;
        }

        public string Rut_admin
        {
            get { return rut_admin; }
            set { rut_admin = value; }
        }

        public string Nom_admin
        {
            get { return nom_admin; }
            set { nom_admin = value; }
        }

        public string Pass_admin
        {
            get { return pass_admin; }
            set { pass_admin = value; }
        }
    }
}
