using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Agencia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["agencia"] == null)
            Response.Redirect("Login.aspx");
        if (((E_Agencia)Session["agencia"]).Rol_id != 2)
            Response.Redirect("Login.aspx");

        //L_Mensaje.Text = "Bienvenido Administrador " + ((E_Usuario)Session["user"]).Nombre;
        L_Mensaje.Text = ((E_Agencia)Session["agencia"]).Nombre;

        Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache);
        Response.Cache.SetAllowResponseInBrowserHistory(false);
        Response.Cache.SetNoStore();
    }


    protected void IB_AgregarBus_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AgregarBuses.aspx");
    }

    protected void IB_VerBus_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("VerBus.aspx");
    }


    protected void IB_CerrarSesion_Click(object sender, ImageClickEventArgs e)
    {
        Session["agencia"] = null;
        Response.Redirect("Login.aspx");
    }

    protected void IB_VerViajes_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("VerViajesAgencia.aspx");
    }
}
