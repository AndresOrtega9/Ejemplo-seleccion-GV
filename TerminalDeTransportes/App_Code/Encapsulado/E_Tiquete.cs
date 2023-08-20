using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_Tiquete
/// </summary>
/// 
[Serializable]
[Table("tiquete", Schema = "reserva")]
public class E_Tiquete
{
    private int id_tiquete;
    private string id_usuario;
    private string id_agencia;
    private int id_viaje;
    private string nombreUsuario;

    [Key]
    [Column("Id_tiquete")]
    public int Id_tiquete { get => id_tiquete; set => id_tiquete = value; }
    [Column("Id_usuario")]
    public string Id_usuario { get => id_usuario; set => id_usuario = value; }
    [Column("Id_agencia")]
    public string Id_agencia { get => id_agencia; set => id_agencia = value; }
    [Column("Id_viaje")]
    public int Id_viaje { get => id_viaje; set => id_viaje = value; }
    [NotMapped]
    public string NombreUsuario { get => nombreUsuario; set => nombreUsuario = value; }
}