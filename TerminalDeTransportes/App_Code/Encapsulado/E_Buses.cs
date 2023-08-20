using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_Buses
/// </summary>
/// 

[Serializable]
[Table("bus", Schema = "buses")]

public class E_Buses
{
	private string id_placa;
	private string id_agencia;
	private string numero_interno;
	private DateTime tecnomecanica;
	private DateTime soat;
	private string id_tipo_bus;
    private string nombreTipoBus;
    private int capacidad;
    private int nombreAgencia;


    [Key]
    [Column("id_placa")]
    public string Id_placa { get => id_placa; set => id_placa = value; }
	[Column("id_agencia")]
	public string Id_agencia { get => id_agencia; set => id_agencia = value; }
	[Column("numero_interno")]
	public string Numero_interno { get => numero_interno; set => numero_interno = value; }
	[Column("tecnomecanica")]
	public DateTime Tecnomecanica { get => tecnomecanica; set => tecnomecanica = value; }
	[Column("soat")]
	public DateTime Soat { get => soat; set => soat = value; }
	[Column("id_tipo_bus")]
	public string Id_tipo_bus { get => id_tipo_bus; set => id_tipo_bus = value; }
   

    [NotMapped]
    public string NombreTipoBus { get => nombreTipoBus; set => nombreTipoBus = value; }
    [NotMapped]
    public int Capacidad { get => capacidad; set => capacidad = value; }
    [NotMapped]
    public int NombreAgencia { get => nombreAgencia; set => nombreAgencia = value; }
}