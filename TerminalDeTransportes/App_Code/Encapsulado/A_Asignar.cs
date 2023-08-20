using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de A_Asignar
/// </summary>
/// 
[Serializable]
[Table("asignar", Schema = "rating")]
public class A_Asignar
{
    private int id;
    private string id_agencia;
    private int puntuacion;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
   
    [Column("id_agencia")]
    public string Id_agencia { get => id_agencia; set => id_agencia = value; }
    [Column("puntuacion")]
    public int Puntuacion { get => puntuacion; set => puntuacion = value; }
}