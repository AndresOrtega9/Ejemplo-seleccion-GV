using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


/// <summary>
/// Descripción breve de DAO_Pasaje
/// </summary>
public class DAO_Pasaje
{
    public List<E_Asientos> obtenerPasajesByViaje(string viajeId)
    {
        List<E_Asientos> lista = new List<E_Asientos>();
        int viaje = viajeId == null ? 0 : int.Parse(viajeId);

        using (var db = new Mapeo())
        {
            var sillas = db.viajes.Where(x => x.Id_viaje == viaje).FirstOrDefault();

            if (sillas != null && sillas.Pasaje != null)
            {
                lista = JsonConvert.DeserializeObject<List<E_Asientos>>(sillas.Pasaje);
            }
            else
            {
                var cantidad = (from viaj in db.viajes

                            
                                join bt in db.buses on viaj.Id_placa equals bt.Id_placa
                                join t in db.tipo_bus on bt.Id_tipo_bus equals t.Id
                                where viaj.Id_viaje == viaje
                                select t.N_puestos).FirstOrDefault();

                for (int i = 1; i <= cantidad; i++)
                {
                    E_Asientos silla = new E_Asientos();
                    silla.Estado = false;
                    silla.Numero = i;
                    silla.Url = "~\\Imagenes\\verde.png";

                    lista.Add(silla);
                }
            }
        }
        return lista;
    }

    public void actualizarPasaje(int viajeId, string pasajes)
	{
		using (var db = new Mapeo())
		{
			E_Viajes viaje = db.viajes.Where(x => x.Id_viaje == viajeId).FirstOrDefault();
			viaje.Pasaje = pasajes;
			db.viajes.Attach(viaje);
			var entry = db.Entry(viaje);
			entry.State = EntityState.Modified;
			db.SaveChanges();
		}
	}

    public void obtenerDsiponibilidad()
    {

    }
}