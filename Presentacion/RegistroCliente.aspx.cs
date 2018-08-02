using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;
using System.Data;

namespace Presentacion
{
    public partial class RegistroCliente : System.Web.UI.Page
    {
        ClientesNego clienteNego = new ClientesNego();
        AutosNego autoNego = new AutosNego();
        IngresoNego ingresoNego = new IngresoNego();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                    ListarClientes();
                    ListarAutos();

            }
        }

        public void ListarClientes()
        {
            DDlClientes.DataSource = clienteNego.ListarCliente();
            DDlClientes.DataTextField = "nombre";
            DDlClientes.DataValueField = "idCliente";
            DDlClientes.DataBind();
            DDlClientes.Items.Insert(0, new ListItem("seleccione opcion", "0"));
        }
        public void ListarAutos()
        {
            DDlClientes.DataSource = autoNego.ListarAutos();
            DDlClientes.DataTextField = "modelo";
            DDlClientes.DataValueField = "idAuto";
            DDlClientes.DataBind();
            DDlClientes.Items.Insert(0, new ListItem("seleccione opcion", "0"));
        }

        protected void DDlClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idCliente = int.Parse(DDlClientes.SelectedValue);
            ListarClienteId(idCliente);
        }

        public void ListarClienteId(int idCliente)
        {
            DataTable dataTable = new DataTable();
            dataTable = clienteNego.LitarClienteId(idCliente);
            HFIdCliente.Value = dataTable.Rows[0]["idCliente"].ToString();
            LblNombreCliente.Text = dataTable.Rows[0]["nombre"].ToString();
            LblApellido.Text = dataTable.Rows[0]["apellido"].ToString();
        }

        protected void DDLAuto_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idAuto = int.Parse(DDlClientes.SelectedValue);
            ListarAutoId(idAuto);
        }
        public void ListarAutoId(int idAuto)
        {
            DataTable dataTable = new DataTable();
            dataTable = autoNego.LitarAutoId(idAuto);
            HFIdAuto.Value = dataTable.Rows[0]["idAuto"].ToString();
            LblmarcaAuto.Text = dataTable.Rows[0]["marca"].ToString();
            LblmodeloAuto.Text = dataTable.Rows[0]["modelo"].ToString();
            LblAñoauto.Text = dataTable.Rows[0]["año"].ToString();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Ingreso ingreso = new Ingreso();
            ingreso.NombreApellido = (LblNombreCliente.Text + LblApellido.Text);
            ingreso.AutoIngresado= (LblmarcaAuto.Text+LblmodeloAuto.Text);
            ingreso.Dni = int.Parse(TbxDni.Text);
            ingreso.FechaIngreso = Convert.ToDateTime(TbxFechaIngreso);
            ingresoNego.GuardarIngreso(ingreso);


        }

        protected void BtnListarIngresos_Click(object sender, EventArgs e)
        {
            GdvIngresos.DataSource = ingresoNego.ListarIngresos();
            GdvIngresos.DataBind();
        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {
            Button btnSelect = (sender as Button);
            string commandArgument = btnSelect.CommandArgument;
            GridViewRow row = (btnSelect.NamingContainer as GridViewRow);
            int rowIndex = row.RowIndex;
            Response.Redirect("~/EditarIngreso.aspx?idIngreso=" + commandArgument);
        }

        protected void BtnRegistrarServicio_Click(object sender, EventArgs e)
        {
            Button btnSelect = (sender as Button);
            string commandArgument = btnSelect.CommandArgument;
            GridViewRow row = (btnSelect.NamingContainer as GridViewRow);
            int rowIndex = row.RowIndex;
            Response.Redirect("~/RegistrarServicio.aspx?idIngreso=" + commandArgument);
        }
    }
}