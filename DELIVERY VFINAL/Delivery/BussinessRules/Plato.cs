using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
    public class Plato
    {
        private string email_rest;
        private string nom_plato;
        private decimal precio_plato;
        private string descripcion_plato;
        private string image_plato;

        public Plato(string email_rest, string nom_plato, decimal precio_plato, string descripcion_plato, string image_plato)
        {
            this.email_rest = email_rest;
            this.nom_plato = nom_plato;
            this.precio_plato = precio_plato;
            this.descripcion_plato = descripcion_plato;
            this.image_plato = image_plato;
        }

        public string Email_rest
        {
            get { return email_rest; }
            set { email_rest = value; }
        }

        public string Nom_plato
        {
            get { return nom_plato; }
            set { nom_plato = value; }
        }

        public decimal Precio_plato
        {
            get { return precio_plato; }
            set { precio_plato = value; }
        }

        public string Descripcion_plato
        {
            get { return descripcion_plato; }
            set { descripcion_plato = value; }
        }

        public string Image_plato
        {
            get { return image_plato; }
            set { image_plato = value; }
        }
    }

    
}
