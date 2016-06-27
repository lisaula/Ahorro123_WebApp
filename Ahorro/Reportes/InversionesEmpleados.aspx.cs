using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ahorro.Reportes
{
    public partial class InversionesEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Generar_OnServerClick(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string connection_string = "data source=.; database=AHORRO123; integrated security=SSPI";
            SqlConnection con = new SqlConnection(connection_string);
            SqlCommand com = new SqlCommand("SP_R_INVERSION_EMPLEADO", con);
            string t = txtID.Value;

            if (t != "")
            {
                com.Parameters.AddWithValue("@ID", int.Parse(txtID.Value));
            }
            if(txtnombre.Value!="")
                com.Parameters.AddWithValue("@NOMBRE", (txtnombre.Value));

            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            try
            {
                con.Open();
                da.Fill(dt);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
            GridView1.AutoGenerateColumns = true;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        protected void reset_OnServerClick(object sender, EventArgs e)
        {
            Response.Redirect("/Reportes/InversionesEmpleados.aspx");
        }
    }
}