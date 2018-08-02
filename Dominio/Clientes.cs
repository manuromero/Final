using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Clientes
    {
        private int idCliente;
        private String nombre;
        private String apellido;
        private int edad;

        public int IdCliente
        {
            get
            {
                return idCliente;
            }

        }

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }

        public string Apellido
        {
            get
            {
                return apellido;
            }

            set
            {
                apellido = value;
            }
        }

        public int Edad
        {
            get
            {
                return edad;
            }

            set
            {
                edad = value;
            }
        }

        public Clientes(int idCliente, string nombre, string apellido, int edad)
        {
            this.idCliente = idCliente;
            this.nombre = nombre;
            this.apellido = apellido;
            this.edad = edad;
        }
        public Clientes()
        {
        }
    }
}
