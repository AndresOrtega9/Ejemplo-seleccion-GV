using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Vista_Administrador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
            Response.Redirect("Login.aspx");
        if (((E_Usuario)Session["user"]).Rol_id != 1)
            Response.Redirect("Login.aspx");

        //L_Mensaje.Text = "Bienvenido Administrador " + ((E_Usuario)Session["user"]).Nombre;
        L_Mensaje.Text = ((E_Usuario)Session["user"]).Nombre;

        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache);
        Response.Cache.SetAllowResponseInBrowserHistory(false);
        Response.Cache.SetNoStore();

    }

    protected void IB_VerAgencias_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("VerAgencias_Admin.aspx");
    }

    protected void IB_AgregarAgencias_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("RegistrarViaje.aspx");

    }

    protected void IB_CerrarSesion_Click(object sender, ImageClickEventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Login.aspx");
    }
}