using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Vista_UsuarioReserva : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            if (((E_Usuario)Session["user"]).Rol_id != 3)
                Response.Redirect("Login.aspx");

            L_Mensaje.Text = ((E_Usuario)Session["user"]).Nombre;

            Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache);
            Response.Cache.SetAllowResponseInBrowserHistory(false);
            Response.Cache.SetNoStore();
     
    }

    protected void DL_Sillas_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.FindControl("CB_Silla") != null)
        {
            E_Asientos asiento = (E_Asientos)e.Item.DataItem;
            CheckBox silla = (CheckBox)e.Item.FindControl("CB_Silla");
            silla.Checked = asiento.Estado;
            silla.Text = asiento.Numero.ToString();
            silla.Enabled = false;
            ((ImageButton)e.Item.FindControl("IB_Imagen")).ImageUrl = asiento.Url;
        }
    }

    protected void IB_Buscar_Click(object sender, ImageClickEventArgs e)
    {
        GV_ReservarPasajes.DataBind();    
       
    }


    protected void IB_Reservar_Click(object sender, ImageClickEventArgs e)
    {          
        List<E_Asientos> asientos = new List<E_Asientos>();
        foreach (DataListItem item in DL_Sillas.Items)
        {
            E_Asientos silla = new E_Asientos();
            silla.Estado = ((CheckBox)item.FindControl("CB_Silla")).Checked;
            silla.Numero = int.Parse(((CheckBox)item.FindControl("CB_Silla")).Text);
            silla.Url = ((ImageButton)item.FindControl("IB_Imagen")).ImageUrl;
            asientos.Add(silla);

            Response.Redirect("TicketGenerado.aspx");
        }
        string viaje = GV_ReservarPasajes.SelectedDataKey.Value.ToString();
        new DAO_Pasaje().actualizarPasaje(int.Parse(viaje), JsonConvert.SerializeObject(asientos));

        GV_ReservarPasajes.DataBind();
        DL_Sillas.DataBind();

        //enviar correo
           
        string correo = ((E_Usuario)Session["user"]).Correo;

        E_Usuario user = new DAO_Usuario().validarCorreo(correo);
        if (user != null)
        {
            Guid g = Guid.NewGuid();
            user.Token = g.ToString();
            user.Token = encriptar(user.Token);
            user.Vencimiento_token = DateTime.Now.AddDays(3);
            user.Estado_id = 3;

            new DAO_Usuario().actualizarUsuario(user);
            string mensaje = "Por favor ingrese al siguiente link, y luego del viaje, por favor califique la agencia con la que viajó:http://localhost:51924/Vista/CalificarAgencia.aspx?" + user.Token;
            new Correo().enviarCorreo(correo, user.Token, mensaje);

            L_Mensaje.Text = "Se ha enviado un correo electronico al correo ingresado.";
        }
    }

    private string encriptar(string input)
    {
        SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();

        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashedBytes = provider.ComputeHash(inputBytes);

        StringBuilder output = new StringBuilder();

        for (int i = 0; i < hashedBytes.Length; i++)
            output.Append(hashedBytes[i].ToString("x2").ToLower());

        return output.ToString();
    }

    protected void DL_Sillas_ItemCommand(object source, DataListCommandEventArgs e)
    {
        ImageButton imagen = ((ImageButton)e.Item.FindControl("IB_Imagen"));
        if (imagen.ImageUrl.Contains("Disponible"))
        {
            imagen.ImageUrl = "~\\Imagenes\\verde.png";
            ((CheckBox)e.Item.FindControl("CB_Silla")).Checked = true;
        }
        else
        {
            imagen.ImageUrl = "~\\Imagenes\\rojo.png";
            ((CheckBox)e.Item.FindControl("CB_Silla")).Checked = false;
        }
    }

    protected void IB_CerrrarSesion_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Login.aspx");
    }

    protected void CB_Silla_CheckedChanged(object sender, EventArgs e)
    {

    }
}