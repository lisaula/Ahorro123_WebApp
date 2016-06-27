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
    public partial class NuevasAfiliaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Generar_OnServerClick(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string connection_string = "data source=.; database=AHORRO123; integrated security=SSPI";
            SqlConnection con = new SqlConnection(connection_string);
            SqlCommand com = new SqlCommand("SP_R_NUEVAS_AFILIACIONES", con);
            com.Parameters.AddWithValue("@YEAR", int.Parse(txtyear.Value));
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
            Response.Redirect("/Reportes/NuevasAfiliaciones.aspx");
        }
    }
}