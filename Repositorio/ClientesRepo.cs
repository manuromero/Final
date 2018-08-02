using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using System.Data.SqlClient;
using System.Data;

namespace Repositorio
{
    public class ClientesRepo
    {
        string cnn = ConfigurationManager.ConnectionStrings["ConeccionASQL"].ConnectionString;
      

        public DataTable ListarCliente()
        {
            DataTable dataTable = new DataTable();
            SqlConnection conn = new SqlConnection(cnn);

            string sql = "select * from Clientes";

            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataAdapter dAdapter = new SqlDataAdapter(cmd);
            dAdapter.Fill(dataTable);
            conn.Close();
            return dataTable;
        }


        public DataTable ListarClienteID(int idCliente)
        {
            DataTable dataTable = new DataTable();
            string sql = "select * from Clientes where idCliente=@val1";
            SqlConnection conn = new SqlConnection(cnn);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@val1", idCliente);
            SqlDataAdapter dA = new SqlDataAdapter(cmd);
            dA.Fill(dataTable);
            conn.Close();
            return dataTable;
        }


      
    }
}
