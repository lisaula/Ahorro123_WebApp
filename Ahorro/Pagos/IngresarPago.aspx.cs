using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Ahorro.Pagos
{
    public partial class IngresarPago : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Registrar_OnServerClick(object sender, EventArgs e)
        {
            string connection_string = "data source=.; database=AHORRO123; integrated security=SSPI";
            try
            {
                using (SqlConnection con = new SqlConnection(connection_string))
                {
                    using (SqlCommand cmd = new SqlCommand("SP_PAGOS_Insert", con))
                    {
                        con.Open();
                        cmd.CommandType = CommandType.StoredProcedure;


                        cmd.Parameters.Add("@ID_PRESTAMO", SqlDbType.Int).Value = int.Parse(txtidprestamo.Value);
                        cmd.Parameters.Add("@MONTO", SqlDbType.Float).Value = double.Parse(txtmonto.Value);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            MessageBox.Show("Pago ingresado correctamente");
                            Response.Redirect("/Pagos/VerPagos.aspx");
                        }
                        else
                        {
                            //MessageBox.Show("Error");
                            //Error notification
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Error al insertar empleado.');", true);
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message + "');", true);
            }
        }

        protected void reset_OnServerClick(object sender, EventArgs e)
        {
            Response.Redirect("/Pagos/IngresarPago.aspx");
        }
    }
}