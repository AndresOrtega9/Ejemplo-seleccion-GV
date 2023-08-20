using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Descripción breve de Correo
/// </summary>
public class Correo
{
	public Correo()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

	public void enviarCorreo(String correoDestino, String userToken, String mensaje)
	{

		try
		{
			MailMessage mail = new MailMessage();
			SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
			//Especificamos el correo desde el que se enviará el Email y el nombre de la persona que lo envía
			mail.From = new MailAddress("equispruebas02@gmail.com", "Correo de Recuperación");

			//Aquí ponemos el asunto del correo
			mail.Subject = "Recuperación Contraseña";
			//Aquí ponemos el mensaje que incluirá el correo
			mail.Body = "Por favor ingrese al siguiente link:http://localhost:50051/Vista/Recuperar.aspx?" + userToken;
			//Especificamos a quien enviaremos el Email, no es necesario que sea Gmail, puede ser cualquier otro proveedor
			mail.To.Add(correoDestino);
			//Si queremos enviar archivos adjuntos tenemos que especificar la ruta en donde se encuentran
			//mail.Attachments.Add(new Attachment(@"C:\Documentos\carta.docx"));
			//mail.IsBodyHtml = true;

			//mail.Priority = MailPriority.High;
			//Configuracion del SMTP
			SmtpServer.Port = 587; //Puerto que utiliza Gmail para sus servicios
								   //Especificamos las credenciales con las que enviaremos el mail
			SmtpServer.Credentials = new System.Net.NetworkCredential("equispruebas02@gmail.com", "%qwerty.123456@");
			SmtpServer.EnableSsl = true;
			SmtpServer.Send(mail);
		}
		catch (Exception)
		{

		}
	}
}