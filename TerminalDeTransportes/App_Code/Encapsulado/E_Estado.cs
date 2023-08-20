using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_Estado
/// </summary>
/// 
[Serializable]
[Table("estado", Schema = "usuarios")]
public class E_Estado
{

	private int id;
	private string nombre;


	[Key]
	[Column("id")]
	public int Id { get => id; set => id = value; }
	[Column("nombre")]
	public string Nombre { get => nombre; set => nombre = value; }
}