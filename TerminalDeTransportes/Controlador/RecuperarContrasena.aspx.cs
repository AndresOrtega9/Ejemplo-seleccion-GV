using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_RecuperarContrasena : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{

	}

	protected void B_Recuperar_Click(object sender, EventArgs e)
	{
		string correo = TB_Correo.Text;
		E_Usuario user = new DAO_Usuario().validarCorreo(correo);

		if (user != null)
		{
			Guid g = Guid.NewGuid();
			user.Token = g.ToString();
			user.Token = encriptar(user.Token);
			user.Vencimiento_token = DateTime.Now.AddHours(24);
			user.Estado_id = 2;

			new DAO_Usuario().actualizarUsuario(user);
			string mensaje = "Por favor ingrese al siguiente link: http://localhost:50051/Vista/Recuperar.aspx?" + user.Token;
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



    protected void IB_Regresar_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}