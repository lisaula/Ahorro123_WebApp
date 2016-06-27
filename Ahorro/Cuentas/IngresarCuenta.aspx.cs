using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
namespace Ahorro.Cuentas
{
    public partial class IngresarCuenta : System.Web.UI.Page
    {
        private bool actualizar = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CuentaEdit"] != null)
            {
                string connection_string = "data source=.; database=AHORRO123; integrated security=SSPI";
                try
                {
                    using (SqlConnection con = new SqlConnection(connection_string))
                    {
                        using (SqlCommand cmd = new SqlCommand("SP_CUENTAS_Select", con))
                        {
                            con.Open();
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.Add("@ID_CUENTA", SqlDbType.Int).Value = Session["CuentaEdit"];
                            SqlDataReader dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {
                                p0.Visible = true;
                                p1.Visible = true;
                                p2.Visible = true;
                                p3.Visible = true;
                                p4.Visible = true;
                                actualizar = true;
                                p0.InnerText = "Valor actual: " +
                                               ((dr.IsDBNull(1)) ? "" : dr["ID_EMPLEADO"]);
                                p1.InnerText = "Valor actual: " + ((dr.IsDBNull(3)) ? "" : dr["TIPO"]);
                                p2.InnerText = "Valor actual: " +
                                               ((dr.IsDBNull(4)) ? "" : dr["SALDO"]);
                                p3.InnerText = "Valor actual: " +
                                               ((dr.IsDBNull(5)) ? "" : dr["MONTO_ANUAL"]);
                                p4.InnerText = "Valor actual: " +
                                               ((dr.IsDBNull(6)) ? "" : dr["PLAZO_FIJO"]);
                            }
                            else
                            {
                                //MessageBox.Show("Error");
                                //Error notification
                                ClientScript.RegisterStartupScript(this.GetType(), "myalert",
                                    "alert('Error al insertar empleado.');", true);
                            }

                        }
                    }
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message + "');", true);
                }
            }
            else
            {
                p0.Visible = false;
                p1.Visible = false;
                p2.Visible = false;
                p3.Visible = false;
                p4.Visible = false;
                actualizar = false;
            }
        }


        protected void Registrar_OnServerClick(object sender, EventArgs e)
        {
            string connection_string = "data source=.; database=AHORRO123; integrated security=SSPI";
            try
            {
                using (SqlConnection con = new SqlConnection(connection_string))
                {
                    string procedure = actualizar ? "SP_CUENTAS_Update" : "SP_CUENTAS_Insert";
                    using (SqlCommand cmd = new SqlCommand(procedure, con))
                    {
                        con.Open();
                        cmd.CommandType = CommandType.StoredProcedure;

                        if (actualizar)
                        {
                            cmd.Parameters.Add("@ID_CUENTA", SqlDbType.Int).Value = Session["CuentaEdit"];
                            actualizar = false;
                        }

                        cmd.Parameters.Add("@ID_EMPLEADO", SqlDbType.Int).Value = int.Parse(txt_idempleado.Value);
                        cmd.Parameters.Add("@TIPO", SqlDbType.Int).Value = int.Parse(txttipo.Value);
                        cmd.Parameters.Add("@SALDO", SqlDbType.Decimal).Value = double.Parse(txtsaldo.Value);
                        cmd.Parameters.Add("@MONTO_A", SqlDbType.Decimal).Value = double.Parse(txtmontoa.Value);
                        cmd.Parameters.Add("@PLAZO_FIJO", SqlDbType.Int).Value = int.Parse(txtplazofijo.Value);

                        bool proc = Convert.ToBoolean(cmd.ExecuteNonQuery());
                        if (true)
                        {
                            MessageBox.Show("Cuenta ingresado correctamente");
                           // Response.Redirect("~/Default.aspx");
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
            Response.Redirect("~/Cuentas/IngresarCuenta.aspx");
        }
    }
}