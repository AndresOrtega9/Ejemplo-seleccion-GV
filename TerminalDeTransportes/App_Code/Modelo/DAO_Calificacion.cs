using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Calificacion
/// </summary>
public class DAO_Calificacion
{
    public List<A_Calificacion> puntuacion()
    {
        List<A_Calificacion> lista = new List<A_Calificacion>();
        using (var db = new Mapeo())
        {
            lista = db.rating.ToList();

        }

        A_Calificacion calificar = new A_Calificacion();

        calificar.Id_calificar = 0;
        calificar.Nombre = "- Seleccione -";

        lista.Add(calificar);

        return lista.OrderBy(x => x.Nombre).ToList();
    }
}