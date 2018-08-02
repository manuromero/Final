using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion
{
    public partial class EditarIngreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["idIngreso"] != null)
                {
                    int idIngreso = int.Parse(Request.QueryString["idIngreso"]);
                    CargarIngreso(idIngreso);

                }
            }
        }

        public void CargarIngreso(int idIngreso)
        {

        }
        protected void BtnGuardar_Click(object sender, EventArgs e)
        {

        }

        protected void Btnvolverinicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RegistroCliente.aspx");
        }
    }
}