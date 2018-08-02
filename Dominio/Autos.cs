using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Autos
    {
        private int idAuto;
        private String marca;
        private String modelo;
        private int año;
        private DateTime fechaCompra;

        public int IdAuto
        {
            get
            {
                return idAuto;
            }

        }

        public string Marca
        {
            get
            {
                return marca;
            }

            set
            {
                marca = value;
            }
        }

        public string Modelo
        {
            get
            {
                return modelo;
            }

            set
            {
                modelo = value;
            }
        }

        public int Año
        {
            get
            {
                return año;
            }

            set
            {
                año = value;
            }
        }

        public DateTime FechaCompra
        {
            get
            {
                return fechaCompra;
            }

            set
            {
                fechaCompra = value;
            }
        }

        public Autos(int idAuto, string marca, string modelo, int año, DateTime fechaCompra)
        {
            this.idAuto = idAuto;
            this.marca = marca;
            this.modelo = modelo;
            this.año = año;
            this.fechaCompra = fechaCompra;
        }
        public Autos()
        {
        }
    }
}
