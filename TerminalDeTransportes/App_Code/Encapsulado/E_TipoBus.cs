using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_TipoBus
/// </summary>
/// 
[Serializable]
[Table("tipo", Schema = "buses")]
public class E_TipoBus
{
	private string id;
	private string nombre;
	private int n_puestos;

	[Key]
	[Column("id")]
	public string Id { get => id; set => id = value; }
	[Column("nombre")]
	public string Nombre { get => nombre; set => nombre = value; }
	[Column("n_puestos")]
	public int N_puestos { get => n_puestos; set => n_puestos = value; }
}