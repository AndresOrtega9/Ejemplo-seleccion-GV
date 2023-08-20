using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_Agencia
/// </summary>
/// 

[Serializable]
[Table("agencia", Schema = "usuarios")]
public class E_Agencia
{

    private string user_name;
    private string nombre;
    private string correo;
    private string contraseña;
    private string nit;
    private int estado_id;
    private Nullable<DateTime> ultima_modificacion;
    private Nullable<DateTime> vencimiento_token;
    private int rol_id;
    private string token;
    private string session;
    private string telefono;
  

    private string buses;

    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("correo")]
    public string Correo { get => correo; set => correo = value; }
    [Column("contraseña")]
    public string Contraseña { get => contraseña; set => contraseña = value; }
    [Key]
    [Column("nit")]
    public string Nit { get => nit; set => nit = value; }
    [Column("user_name")]
    public string User_name { get => user_name; set => user_name = value; }
    [Column("estado_id")]
    public int Estado_id { get => estado_id; set => estado_id = value; }
    [Column("ultima_modificacion")]
    public DateTime? Ultima_modificacion { get => ultima_modificacion; set => ultima_modificacion = value; }
    [Column("vencimiento_token")]
    public DateTime? Vencimiento_token { get => vencimiento_token; set => vencimiento_token = value; }
    [Column("rol_id")]
    public int Rol_id { get => rol_id; set => rol_id = value; }
    [Column("token")]
    public string Token { get => token; set => token = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("telefono")]
    public string Telefono { get => telefono; set => telefono = value; }
    [NotMapped]
    public string Buses { get => buses; set => buses = value; }
   
}