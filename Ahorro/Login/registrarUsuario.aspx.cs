using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Ahorro.Login
{
    public partial class registrarUsuario : System.Web.UI.Page
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
                    using (SqlCommand cmd = new SqlCommand("SP_USUARIOS_Insert", con))
                    {
                        con.Open();
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@ID_USUARIO", SqlDbType.VarChar).Value = txtusu.Value;
                        cmd.Parameters.Add("@USERNAME", SqlDbType.VarChar).Value = txtusername.Value;
                        cmd.Parameters.Add("@CLAVE", SqlDbType.VarChar).Value = txtspass.Value;

                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            Session["Id_usuario"] = (string)dr["ID_USUARIO"];
                            Session["username"] = (string)dr["USERNAME"];
                            Response.Redirect("~/Default.aspx");
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
            Response.Redirect("/Login/registrarUsuario.aspx");
        }
    }
}