using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data.Odbc;
using System.Web.Services.Description;
using System.Windows.Forms;
namespace Ahorro.Empleados
{
    public partial class IngresarEmpleado : System.Web.UI.Page
    {
        private bool actualizar = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmpleadoEdit"] != null)
            {
                string connection_string = "data source=.; database=AHORRO123; integrated security=SSPI";
                try
                {
                    using (SqlConnection con = new SqlConnection(connection_string))
                    {
                        using (SqlCommand cmd = new SqlCommand("SP_EMPLEADOS_Select", con))
                        {
                            con.Open();
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.Add("@ID_EMPLEADO", SqlDbType.Int).Value = Session["EmpleadoEdit"];
                            SqlDataReader dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {
                                p0.Visible = true;
                                p.Visible = true;
                                p1.Visible = true;
                                p2.Visible = true;
                                p3.Visible = true;
                                p4.Visible = true;
                                p5.Visible = true;
                                p6.Visible = true;
                                p7.Visible = true;
                                p8.Visible = true;
                                p9.Visible = true;
                                p10.Visible = true;
                                p11.Visible = true;
                                actualizar = true;
                                txtusu.Value = (string) dr["ID_USUARIO"];
                                p0.InnerText = "Valor actual: " +
                                               ((dr.IsDBNull(2)) ? "" : ((string) dr["EMAIL_SECUNDARIO"]));
                                p.InnerText = "Valor actual: " + ((dr.IsDBNull(3)) ? "" : (string) dr["PRIMER_NOMBRE"]);
                                p1.InnerText = "Valor actual: " +
                                               ((dr.IsDBNull(4)) ? "" : (string) dr["SEGUNDO_NOMBRE"]);
                                p2.InnerText = "Valor actual: " +
                                               ((dr.IsDBNull(5)) ? "" : (string) dr["PRIMER_APELLIDO"]);
                                p3.InnerText = "Valor actual: " +
                                               ((dr.IsDBNull(6)) ? "" : (string) dr["SEGUNDO_APELLIDO"]);
                                p4.InnerText = "Valor actual: " +
                                               ((dr.IsDBNull(7))
                                                   ? ""
                                                   : ((DateTime) dr["FECHA_NAC"]).ToString("s").Split('T')[0]);
                                p5.InnerText = "Valor actual: " + ((dr.IsDBNull(8)) ? "" : (string) dr["CALLE"]);
                                p6.InnerText = "Valor actual: " + ((dr.IsDBNull(9)) ? "" : (string) dr["CIUDAD"]);
                                p7.InnerText = "Valor actual: " + ((dr.IsDBNull(10)) ? "" : (string) dr["AVENIDA"]);
                                p8.InnerText = "Valor actual: " + ((dr.IsDBNull(11)) ? "" : (string) dr["NUM_CASA"]);
                                p9.InnerText = "Valor actual: " + ((dr.IsDBNull(12)) ? "" : (string) dr["DEPARTAMENTO"]);
                                p10.InnerText = "Valor actual: " + ((dr.IsDBNull(13)) ? "" : (string) dr["REFERENCIA"]);
                                p11.InnerText = "Valor actual: " +
                                                ((dr.IsDBNull(14))
                                                    ? ""
                                                    : ((DateTime) dr["FECHA_CONTRACION"]).ToString("s").Split('T')[0]);
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
                p.Visible = false;
                p1.Visible = false;
                p2.Visible = false;
                p3.Visible = false;
                p4.Visible = false;
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;
                p8.Visible = false;
                p9.Visible = false;
                p10.Visible = false;
                p11.Visible = false;
                actualizar = false;
            }   
        }

        protected void reset_OnServerClick(object sender, EventArgs e)
        {
            Response.Redirect("/Empleados/IngresarEmpleado.aspx");
        }

        protected void checkInput()
        {
            MessageBox.Show(txtpnombre.Value+" mmm");
        }
        protected void Guardar_OnServerClick(object sender, EventArgs e)
        {
            string connection_string = "data source=.; database=AHORRO123; integrated security=SSPI";
            try
            {
                using (SqlConnection con = new SqlConnection(connection_string))
                {
                    string procedure = actualizar ? "SP_EMPLEADOS_Update" : "SP_EMPLEADOS_Insert";
                    using (SqlCommand cmd = new SqlCommand(procedure, con))
                    {
                        con.Open();
                        cmd.CommandType = CommandType.StoredProcedure;

                        if (actualizar)
                        {
                            //int index = ; 
                            cmd.Parameters.Add("@ID_EMPLEADO", SqlDbType.Int).Value = Session["EmpleadoEdit"];
                            p0.Visible = false;
                            p.Visible = false;
                            p1.Visible = false;
                            p2.Visible = false;
                            p3.Visible = false;
                            p4.Visible = false;
                            p5.Visible = false;
                            p6.Visible = false;
                            p7.Visible = false;
                            p8.Visible = false;
                            p9.Visible = false;
                            p10.Visible = false;
                            p11.Visible = false;
                            actualizar = false;
                            Session["EmpleadoEdit"]=null;
                            //MessageBox.Show(Session["EmpleadoEdit"].ToString()+ procedure);
                        }
                        //MessageBox.Show(procedure);
                        cmd.Parameters.Add("@ID_USUARIO", SqlDbType.VarChar).Value = txtusu.Value;
                        cmd.Parameters.Add("@EMAIL_SECUNDARIO", SqlDbType.VarChar).Value = txt2email.Value;
                        cmd.Parameters.Add("@PRIMER_NOMBRE", SqlDbType.VarChar).Value = txtpnombre.Value;
                        cmd.Parameters.Add("@SEGUNDO_NOMBRE", SqlDbType.VarChar).Value = txtsnombre.Value;
                        cmd.Parameters.Add("@PRIMER_APELLIDO", SqlDbType.VarChar).Value = txtpapellido.Value;
                        cmd.Parameters.Add("@SEGUNDO_APELLIDO", SqlDbType.VarChar).Value = txtsapellido.Value;
                        cmd.Parameters.Add("@FECHA_NAC", SqlDbType.VarChar).Value = txtfecnac.Value;
                        cmd.Parameters.Add("@CALLE", SqlDbType.VarChar).Value = txtcalle.Value;
                        cmd.Parameters.Add("@CIUDAD", SqlDbType.VarChar).Value = txtciudad.Value;
                        cmd.Parameters.Add("@AVENIDA", SqlDbType.VarChar).Value = txtavenida.Value;
                        cmd.Parameters.Add("@NUM_CASA", SqlDbType.VarChar).Value = txtnumcasa.Value;
                        cmd.Parameters.Add("@DEPARTAMENTO", SqlDbType.VarChar).Value = txtdepartamento.Value;
                        cmd.Parameters.Add("@REFERENCIA", SqlDbType.VarChar).Value = txtreferencia.Value;
                        cmd.Parameters.Add("@FECHA_CONTRACION", SqlDbType.VarChar).Value = txtfeccontra.Value;
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            MessageBox.Show("Empleado guardado correctamente");
                            if(actualizar)
                                Response.Redirect("/Empleados/AdministrarEmpleados.aspx");
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
    }
}