using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_RegistrarViaje : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

    protected void IB_Guardar_Click(object sender, ImageClickEventArgs e)
    {
        E_Viajes viaje = new E_Viajes();

        E_TipoBus tipo_bus = new E_TipoBus();
        E_Agencia agencia = new E_Agencia();
        E_Buses buses = new E_Buses();

        viaje.Fecha = DateTime.Parse(TB_Fecha.Text);
        viaje.Id_origen = int.Parse(DDL_Origen.SelectedValue);
        viaje.Id_destino = int.Parse(DDL_Destino.SelectedValue);
        viaje.Id_placa = DDL_PlacaBus.SelectedValue;
        viaje.Id_estado_viaje = 2;
        viaje.Nit_agencia = DDL_Agencias.SelectedValue;
        viaje.Precio_viaje = int.Parse(TB_PrecioViaje.Text);     
 
        new DAO_Viaje().agregarViaje(viaje);
		
	}

    protected void IB_Regresar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Vista_Admin.aspx");
    }

    protected void GV_Agencias_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void cambio(object sender, EventArgs e)
    {
        DDL_PlacaBus.DataBind();
    }

    protected void DDL_PlacaBus_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}