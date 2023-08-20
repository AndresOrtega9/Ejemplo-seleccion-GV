using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_VerBus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void IB_Regresar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Vista_Agencia.aspx");
    }
}