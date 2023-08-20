using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_Viajes
/// </summary>
/// 
[Serializable]
[Table("viaje", Schema = "viajes")]
public class E_Viajes
{
    private int id_viaje;
    private string id_placa;
    private int id_estado_viaje;
    private DateTime fecha;
    private int id_origen;
    private int id_destino;
    private string pasaje;
    private string nit_agencia;
    private double precio_viaje;
  

    private string nombreOrigen;
    private string nombreDestino;
    private string nombreTipoBus;
    private string nombreAgencia;
    private int capacidad;

    [Key]
    [Column("id_viaje")]
    public int Id_viaje { get => id_viaje; set => id_viaje = value; }
    [Column("id_placa")]
    public string Id_placa { get => id_placa; set => id_placa = value; }
    [Column("id_estado_viaje")]
    public int Id_estado_viaje { get => id_estado_viaje; set => id_estado_viaje = value; }
    [Column("fecha")]
    public DateTime Fecha { get => fecha; set => fecha = value; }
    [Column("id_origen")]
    public int Id_origen { get => id_origen; set => id_origen = value; }
    [Column("id_destino")]
    public int Id_destino { get => id_destino; set => id_destino = value; }
    [Column("pasaje")]
    public string Pasaje { get => pasaje; set => pasaje = value; }
    [Column("nit_agencia")]
    public string Nit_agencia { get => nit_agencia; set => nit_agencia = value; }
    [Column("precio_viaje")]
    public double Precio_viaje { get => precio_viaje; set => precio_viaje = value; }

    [NotMapped]
    public string NombreOrigen { get => nombreOrigen; set => nombreOrigen = value; }
    [NotMapped]
    public string NombreDestino { get => nombreDestino; set => nombreDestino = value; }
    [NotMapped]
    public string NombreTipoBus { get => nombreTipoBus; set => nombreTipoBus = value; }
    [NotMapped]
    public string NombreAgencia { get => nombreAgencia; set => nombreAgencia = value; }
    [NotMapped]
    public int Capacidad { get => this.capacidad; set => this.capacidad = value; }
}