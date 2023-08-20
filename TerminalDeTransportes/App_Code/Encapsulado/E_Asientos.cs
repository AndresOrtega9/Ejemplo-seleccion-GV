using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_Asientos
/// </summary>
public class E_Asientos
{
	private int numero;
	private string url;
	private bool estado;

	public int Numero { get => numero; set => numero = value; }
	public string Url { get => url; set => url = value; }
	public bool Estado { get => estado; set => estado = value; }
}