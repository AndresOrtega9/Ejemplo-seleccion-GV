using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Lugares
/// </summary>
public class DAO_Lugares
{
	public List<E_Lugares> Obtener_Lugares()
	{
		List<E_Lugares> lista = new List<E_Lugares>();
		using (var db = new Mapeo())
		{
			lista = db.lugares.ToList();

		}

		E_Lugares lugares = new E_Lugares();
		lugares.Id = 0;

		lugares.Nombre = "- Seleccione -";
		lista.Add(lugares);

		return lista.OrderBy(x => x.Nombre).ToList();
	}
}