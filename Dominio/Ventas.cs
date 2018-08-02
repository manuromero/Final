using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Ventas
    {
        private int idVentas;
        private int idCliente;
        private int idAuto;
        private int valor;
        private DateTime fechaVenta;

        public int IdVentas
        {
            get
            {
                return idVentas;
            }
        }

        public int IdCliente
        {
            get
            {
                return idCliente;
            }

            set
            {
                idCliente = value;
            }
        }

        public int IdAuto
        {
            get
            {
                return idAuto;
            }

            set
            {
                idAuto = value;
            }
        }

        public int Valor
        {
            get
            {
                return valor;
            }

            set
            {
                valor = value;
            }
        }

        public DateTime FechaVenta
        {
            get
            {
                return fechaVenta;
            }

            set
            {
                fechaVenta = value;
            }
        }

        public Ventas(int idVentas, int idCliente, int idAuto, int valor, DateTime fechaVenta)
        {
            this.idVentas = idVentas;
            this.idCliente = idCliente;
            this.idAuto = idAuto;
            this.valor = valor;
            this.fechaVenta = fechaVenta;
        }
        public Ventas()
        {
        }
    }
}
