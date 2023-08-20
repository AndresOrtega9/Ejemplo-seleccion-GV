using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_VistaAgregarAgencia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void IB_Registro_Click(object sender, ImageClickEventArgs e)
    {
        E_Agencia agencia = new E_Agencia();

        agencia.Nombre = TB_NombreAgencia.Text;
        agencia.Correo = TB_CorreoAgencia.Text;
        agencia.Contraseña = TB_ContraseñaAgencia.Text;
        agencia.Estado_id = 1;
        agencia.Rol_id = 2;
        agencia.User_name = TB_UserNameAgencia.Text;
        agencia.Nit = TB_NitAgencia.Text;
        agencia.Telefono = TB_Contacto.Text;
        new DAO_Agencia().AgregarAgencia(agencia);
      
    }

    protected void IB_Regresar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Vista_Admin.aspx");
    }
}