using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
    public class Restaurant
    {
        private int cod_rest;
        private string pass_rest;
        private string nombre_rest;
        private string direccion_rest;
        private string ciudad_rest;
        private DateTime horario_atencion;
        private DateTime horario_cierre;
        private string email_rest;
        private string telefono_rest;

        public Restaurant(int cod_rest, string pass_rest, string nombre_rest, string direccion_rest, string ciudad_rest, DateTime horario_atencion, DateTime horario_cierre, string email_rest, string telefono_rest)
        {
            this.cod_rest=cod_rest;
            this.pass_rest=pass_rest;
            this.nombre_rest=nombre_rest;
            this.direccion_rest=direccion_rest;
            this.ciudad_rest=ciudad_rest;
            this.horario_atencion=horario_atencion;
            this.horario_cierre=horario_cierre;
            this.email_rest=email_rest;
            this.telefono_rest=telefono_rest;
        }

        public Restaurant(string pass_rest, string nombre_rest, string direccion_rest, string ciudad_rest, DateTime horario_atencion, DateTime horario_cierre, string email_rest, string telefono_rest)
        {
            this.pass_rest = pass_rest;
            this.nombre_rest = nombre_rest;
            this.direccion_rest = direccion_rest;
            this.ciudad_rest = ciudad_rest;
            this.horario_atencion = horario_atencion;
            this.horario_cierre = horario_cierre;
            this.email_rest = email_rest;
            this.telefono_rest = telefono_rest;
        }

        public Restaurant(string nombre_rest, string direccion_rest, string ciudad_rest, DateTime horario_atencion, DateTime horario_cierre, string email_rest, string telefono_rest)
        {
            
            this.nombre_rest = nombre_rest;
            this.direccion_rest = direccion_rest;
            this.ciudad_rest = ciudad_rest;
            this.horario_atencion = horario_atencion;
            this.horario_cierre = horario_cierre;
            this.email_rest = email_rest;
            this.telefono_rest = telefono_rest;
        }

        public Restaurant(string nombre_rest, string direccion_rest, string ciudad_rest, string email_rest, string telefono_rest)
        {
            this.nombre_rest = nombre_rest;
            this.direccion_rest = direccion_rest;
            this.ciudad_rest = ciudad_rest;
            this.email_rest = email_rest;
            this.telefono_rest = telefono_rest;
        }

        public Restaurant()
        {

        }

        public Restaurant(int cod_rest, string nombre_rest)
        {
            this.cod_rest = cod_rest;
            this.nombre_rest = nombre_rest;
        }

        public Restaurant(string email_rest, string pass_rest)
        {
            this.email_rest=email_rest;
            this.pass_rest=pass_rest;
        }

        public Restaurant(string nombre_rest)
        {
            this.nombre_rest = nombre_rest;
        }

        public int Cod_rest
        {
            get { return cod_rest; }
            set { cod_rest = value; }
        }

        public string Pass_rest
        {
            get { return pass_rest; }
            set { pass_rest = value; }
        }

        public string Nombre_rest
        {
            get { return nombre_rest; }
            set { nombre_rest = value; }
        }

        public string Direccion_rest
        {
            get { return direccion_rest; }
            set { direccion_rest = value; }
        }

        public string Ciudad_rest
        {
            get { return ciudad_rest; }
            set { ciudad_rest = value; }
        }

        public DateTime Horario_atencion
        {
            get { return horario_atencion; }
            set { horario_atencion = value; }
        }

        public DateTime Horario_cierre
        {
            get { return horario_cierre; }
            set { horario_cierre = value; }
        }

        public string Email_rest
        {
            get { return email_rest; }
            set { email_rest = value; }
        }

        public string Telefono_rest
        {
            get { return telefono_rest; }
            set { telefono_rest = value; }
        }

    }

}
