using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
    public class Pedido
    {
        private int id_plato;
        private string rut_usuario;
        private DateTime fecha_pedido;
        private int cantidad;

        public Pedido(int id_plato, string rut_usuario, DateTime fecha_pedido, int cantidad)
        {
            this.id_plato = id_plato;
            this.rut_usuario = rut_usuario;
            this.fecha_pedido = fecha_pedido;
            this.cantidad = cantidad;
        }

        public int Id_plato
        {
            get { return id_plato; }
            set { id_plato = value; }
        }

        public string Rut_usuario
        {
            get { return rut_usuario; }
            set { rut_usuario = value; }
        }

        public DateTime Fecha_pedido
        {
            get { return fecha_pedido; }
            set { fecha_pedido = value; }
        }

        public int Cantidad
        {
            get { return cantidad; }
            set { cantidad = value; }
        }


    }
}
