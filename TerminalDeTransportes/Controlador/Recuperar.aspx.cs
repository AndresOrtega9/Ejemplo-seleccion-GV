using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Recuperar : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.QueryString.Count > 0)
		{
			E_Usuario user = new DAO_Usuario().buscarToken(Request.QueryString[0]);
	
			if (user == null)
				this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token es invalido. Genere uno nuevo');window.location=\"InicioDeSesion_Registro.aspx\"</script>");
			else if (user.Vencimiento_token < DateTime.Now)
				this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token esta vencido. Genere uno nuevo');window.location=\"InicioDeSesion_Registro.aspx\"</script>");
			else
				Session["userRecuperado"] = user;
		}

		else
		{
			Response.Redirect("InicioDeSesion_Registro.aspx");
		}
	}

	

	protected void B_GuardarNuevaContraseña_Click(object sender, EventArgs e)
	{
		if (TB_NuevaContraseña.Text.Length <= 8)
		{
			this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Passsword muy corto')</script>");
			return;
		}

		E_Usuario user = (E_Usuario)Session["userRecuperado"];

		user.Token = null;
		user.Vencimiento_token = null;
		user.Estado_id = 1;
		user.Contraseña = TB_NuevaContraseña.Text;

		new DAO_Usuario().actualizarUsuario(user);
		
	}

    protected void IB_Regresar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}