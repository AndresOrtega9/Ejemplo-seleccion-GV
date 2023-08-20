using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de A_Calificacion
/// </summary>
/// 
[Serializable]
[Table("calificacion", Schema = "rating")]

public class A_Calificacion
{
    private int id_calificar;
    private int puntuacion;
    private string nombre;

    [Key]
    [Column("id_calificar")]
    public int Id_calificar { get => id_calificar; set => id_calificar = value; }
    [Column("puntuacion")]
    public int Puntuacion { get => puntuacion; set => puntuacion = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
}