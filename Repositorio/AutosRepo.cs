using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositorio
{
    public class AutosRepo
    {
        String cnn = ConfigurationManager.ConnectionStrings["ConeccionASQL"].ConnectionString;
        public DataTable ListarAutos()
        {
            DataTable dataTable = new DataTable();
            SqlConnection conn = new SqlConnection(cnn);
            String sql = "select * from Autos";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataAdapter dAdapter = new SqlDataAdapter(cmd);
            dAdapter.Fill(dataTable);
            conn.Close();
            return dataTable;
        }

        public DataTable ListarAutoId(int idAuto)
        {
            DataTable dataTable = new DataTable();
            SqlConnection conn = new SqlConnection(cnn);
            String sql = "select * from Autos where idAutos=@Val1";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@Val1", idAuto);
            SqlDataAdapter dA = new SqlDataAdapter(cmd);
            dA.Fill(dataTable);
            conn.Close();
            return dataTable;
        }
    }
}
