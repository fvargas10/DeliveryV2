using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
    public class Usuario
    {
        private string rut_usuario;
        private string nom_usuario;
        private string pass_usuario;

        public Usuario(string rut_usuario, string nom_usuario, string pass_usuario)
        {
            this.rut_usuario = rut_usuario;
            this.nom_usuario = nom_usuario;
            this.pass_usuario = pass_usuario;
        }

        public Usuario()
        {

        }

        public Usuario(string rut_usuario, string pass_usuario)
        {
            this.rut_usuario = rut_usuario;
            this.pass_usuario = pass_usuario;
        }

        public string Rut_usuario
        {
            get { return rut_usuario; }
            set { rut_usuario = value; }
        }

        public string Nom_usuario
        {
            get { return nom_usuario; }
            set { nom_usuario = value; }
        }

        public string Pass_usuario
        {
            get { return pass_usuario; }
            set { pass_usuario = value; }
        }
    }
}
