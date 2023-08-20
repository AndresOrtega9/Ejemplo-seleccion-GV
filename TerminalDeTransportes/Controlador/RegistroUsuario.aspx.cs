using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_RegistroUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void IB_Registro_Click(object sender, ImageClickEventArgs e)
    {

        E_Usuario usuario = new E_Usuario();

        usuario.Nombre = TB_Nombre.Text;
        usuario.Apellido = TB_Apellido.Text;
        usuario.Correo = TB_Correo.Text;
        usuario.Contraseña = TB_Contraseña.Text;
        usuario.Telefono = TB_Telefono.Text;
        usuario.Identificacion =TB_Cedula.Text;
        usuario.User_name = TB_UserName.Text;
        usuario.Estado_id = 1;
        usuario.Rol_id = 3;
        new DAO_Usuario().AgregarUsuario(usuario);
        Response.Redirect("Login.aspx");

        

    }

    protected void IB_Regresar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Index.aspx");
    }
}