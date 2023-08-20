using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_VerRutas_Visitante : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
       
    }

    protected void IB_Buscar_Click(object sender, ImageClickEventArgs e)
    {
       
    }

    protected void GV_Viajes_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void IB_Reservar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void IB_Regresar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}