using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_AgregarBuses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["agencia"] == null)
            Response.Redirect("Login.aspx");
        if (((E_Agencia)Session["agencia"]).Rol_id != 2)
            Response.Redirect("Login.aspx");
        L_MensajeNombre.Text = ((E_Agencia)Session["agencia"]).Nombre;
        L_MensajeNit.Text = ((E_Agencia)Session["agencia"]).Nit;
    }

    protected void IB_GuardarBus_Click(object sender, ImageClickEventArgs e)
    {
        E_Buses buses = new E_Buses();
        E_Agencia agencia = new E_Agencia();

        buses.Id_tipo_bus = DDL_TipoBus.SelectedValue;
        buses.Id_placa = TB_NumPlaca.Text;
        buses.Numero_interno = TB_NumInterno.Text;
        buses.Tecnomecanica = DateTime.Parse(TB_fecha.Text);
        buses.Soat = DateTime.Parse(TB_soat.Text);
        buses.Id_agencia = ((E_Agencia)Session["agencia"]).Nit;

        new DAO_Buses().AgregarBus(buses);
        Response.Redirect("AgregarBuses.aspx");
    }

    protected void IB_Regresar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Vista_Agencia.aspx");
    }

    protected void IB_Volver(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Vista_Agencia.aspx");
    }
}