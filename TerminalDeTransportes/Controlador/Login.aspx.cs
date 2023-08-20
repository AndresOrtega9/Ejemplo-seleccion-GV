using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Cache.SetCacheability(HttpCacheability.ServerAndNoCache);
            Response.Cache.SetAllowResponseInBrowserHistory(false);
            Response.Cache.SetNoStore();
        }
    }


    protected void LoginButton_Click(object sender, EventArgs e)
    {

        ClientScriptManager cm = this.ClientScript;

        E_Usuario user = new E_Usuario();

        user.User_name = Login1.UserName;
        user.Contraseña = Login1.Password;

        user = new DAO_Usuario().login(user);

        if (user != null)
        {
            Session["user"] = user;
            switch (user.Rol_id)
            {
                case 1:
                    Response.Redirect("Vista_Admin.aspx");
                    break;
                case 3:
                    Response.Redirect("Vista_UsuarioReserva.aspx");
                    break;
                default:
                    break;
            }
        }
        else
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Verifique Usuario y/o Contraseña');</script>");

        }


        E_Agencia agencia = new E_Agencia();

        agencia.User_name = Login1.UserName;
        agencia.Contraseña = Login1.Password;

        agencia = new DAO_Agencia().login(agencia);

        if (agencia != null)
        {
            Session["agencia"] = agencia;

            switch (agencia.Rol_id)
            {
                case 2:
                    Session["agenciaNit"] = agencia.Nit;
                    Response.Redirect("Vista_Agencia.aspx");
                    break;
                default:
                    break;
            }
        }
        else
        {
            Login1.FailureText = "Usuario Y/o Clave Incorrecta";
        }
    }



    protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
    {

    }



    protected void Registro(object sender, EventArgs e)
    {
        Response.Redirect("RegistroUsuario.aspx");
    }
}