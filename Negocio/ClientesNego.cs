using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Repositorio;
using System.Data;

namespace Negocio
{
    public class ClientesNego
    {
        ClientesRepo clienteRepo = new ClientesRepo();
        public DataTable ListarCliente()
        {
            return clienteRepo.ListarCliente();

        }

        public DataTable LitarClienteId(int idCliente)
        {
            return clienteRepo.ListarClienteID(idCliente);
        }
    }
}
