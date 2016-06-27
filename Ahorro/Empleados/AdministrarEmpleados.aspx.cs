using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
namespace Ahorro.Empleados
{
    public partial class AdministrarEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("/Login/LogIn.aspx");
        }

        protected void GridView1_OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            string country = GridView1.Rows[e.NewEditIndex].Cells[1].Text;
            Session["EmpleadoEdit"] = int.Parse(country);
            GridView1.EditIndex = e.NewEditIndex;
            Response.Redirect("/Empleados/IngresarEmpleado.aspx");
        }
    }
}