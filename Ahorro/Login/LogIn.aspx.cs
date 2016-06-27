using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ahorro.Login
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void boton_OnServerClick(object sender, EventArgs e)
        {
            DataView dvSql = ((DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty));

            if (dvSql.Count > 0)
            {
                Session["username"] = dvSql[0][1];
                Session["Id_usuario"] = dvSql[0][0];
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}