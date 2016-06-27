﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Ahorro.Prestamos
{
    public partial class IngresarPrestamo : System.Web.UI.Page
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
                    using (SqlCommand cmd = new SqlCommand("SP_PRESTAMO_EMPLEADO_Insert", con))
                    {
                        con.Open();
                        cmd.CommandType = CommandType.StoredProcedure;


                        cmd.Parameters.Add("@ID_EMPLEADO", SqlDbType.Int).Value = int.Parse(txt_idempleado.Value);
                        cmd.Parameters.Add("@PERIODO", SqlDbType.Int).Value = int.Parse(txtperiodo.Value);
                        cmd.Parameters.Add("@MONTO", SqlDbType.Float).Value = (txtmonto.Value);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (true)
                        {
                            MessageBox.Show("Prestamo ingresado correctamente");
                            Response.Redirect("/Prestamos/AdministrarPrestamo.aspx");
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
            Response.Redirect("/Prestamos/IngresarPrestamo.aspx");
        }
    }
}