using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_Usuario
/// </summary>
/// 
[Serializable]
[Table("usuario", Schema = "usuarios")]
public class E_Usuario
{

	private string nombre;
	private string apellido;
	private string correo;
	private string contraseña;
	private int estado_id;
	private string token;
	private Nullable<DateTime> ultima_modificacion;
	private Nullable<DateTime> vencimiento_token;
	private int rol_id;
	private string session;
	private string user_name;
	private string identificacion;
	private string telefono;

    [Key]
    [Column("identificacion")]
	public string Identificacion { get => identificacion; set => identificacion = value; }
	[Column("nombre")]
	public string Nombre { get => nombre; set => nombre = value; }
	[Column("apellido")]
	public string Apellido { get => apellido; set => apellido = value; }
	[Column("correo")]
	public string Correo { get => correo; set => correo = value; }
	[Column("estado_id")]
	public int Estado_id { get => estado_id; set => estado_id = value; }
	[Column("token")]
	public string Token { get => token; set => token = value; }
	[Column("vencimiento_token")]
	public Nullable<DateTime> Vencimiento_token { get => vencimiento_token; set => vencimiento_token = value; }
	[Column("user_name")]
	public string User_name { get => user_name; set => user_name = value; }
	[Column("rol_id")]
	public int Rol_id { get => rol_id; set => rol_id = value; }
	[Column("session")]
	public string Session { get => session; set => session = value; }
	[Column("ultima_modificacion")]
	public DateTime? Ultima_modificacion { get => ultima_modificacion; set => ultima_modificacion = value; }
	[Column("telefono")]
	public string Telefono { get => telefono; set => telefono = value; }
	[Column("contraseña")]
	public string Contraseña { get => contraseña; set => contraseña = value; }

   
}