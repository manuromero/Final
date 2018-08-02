using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Repositorio;
using Dominio;
using System.Data;

namespace Negocio
{
    public class IngresoNego
    {
        IngresoRepo ingresoRepo = new IngresoRepo();
        public void GuardarIngreso(Ingreso ingreso)
        {
            ingresoRepo.GuardarIngreso(ingreso);
        }

        public DataTable ListarIngresos()
        {
            return ingresoRepo.ListarIngresos();
        }

        public void UpdateIngreso(Ingreso ingreso, int idIngreso)
        {
            ingresoRepo.UpdateIngreso(ingreso, idIngreso);
        }
    }
}
