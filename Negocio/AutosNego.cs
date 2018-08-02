using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Repositorio;
using System.Data;

namespace Negocio
{
    public class AutosNego
    {
        AutosRepo autoRepo = new AutosRepo();
        public DataTable ListarAutos()
        {
            return autoRepo.ListarAutos();

        }

        public DataTable LitarAutoId(int idAuto)
        {
            return autoRepo.ListarAutoId(idAuto);
        }
    }
}
