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
    public class IngresoRepo
    {
        String cnn = ConfigurationManager.ConnectionStrings["ConeccionASQL"].ConnectionString;

        public void GuardarIngreso(Ingreso ingreso)
        {
            SqlConnection conn = new SqlConnection(cnn);
            String sql = "insert into ingreso (nombreApellido,dni,autoIngresado,fechaIngreso) values(@val1,@val2,@val3,@val4)";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@val1", ingreso.NombreApellido);
                cmd.Parameters.AddWithValue("@val2", ingreso.Dni);
                cmd.Parameters.AddWithValue("@val3", ingreso.AutoIngresado);
                cmd.Parameters.AddWithValue("@val4", ingreso.FechaIngreso);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "error ";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                conn.Close();
            }
        }
        public DataTable ListarIngresos()
        {
            DataTable dataTable = new DataTable();
            SqlConnection conn = new SqlConnection(cnn);
            String sql = ("Select * from ingreso");
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataAdapter dAdapter = new SqlDataAdapter(cmd);
            dAdapter.Fill(dataTable);
            conn.Close();
            return dataTable;
        }
        public void UpdateIngreso(Ingreso ingreso,int idIngreso)
        {
            SqlConnection conn = new SqlConnection(cnn);
            string sql = "update ingreso set nombreApellido=@val1, dni=@val2, autoIngresado=@val3, fechaIngreso=@val4 where idIngreso=@val5";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@val1", ingreso.NombreApellido);
                cmd.Parameters.AddWithValue("@val2", ingreso.Dni);
                cmd.Parameters.AddWithValue("@val3", ingreso.AutoIngresado);
                cmd.Parameters.AddWithValue("@val4", ingreso.FechaIngreso);
                cmd.Parameters.AddWithValue("@val5", idIngreso.ToString());
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "error";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
