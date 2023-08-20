using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Viaje
/// </summary>
public class DAO_Viaje
{
	public List<E_Lugares> obtenerOrigen()
	{
		using (var db = new Mapeo())
		{
			List<E_Lugares> lista = db.lugares.ToList();
			E_Lugares lugares = new E_Lugares();
			lugares.Id = 0;
			lugares.Nombre = "-- Seleccione --";
			lista.Add(lugares);
			return lista.OrderBy(x => x.Nombre).ToList();
		}
	}

	public List<E_Lugares> obtenerDestino(int origenId)
	{
		List<E_Lugares> lista = obtenerOrigen();
		lista = lista.Where(x => x.Id != origenId).ToList();

		return lista;
	}

	public void agregarViaje(E_Viajes viajes)
	{
		using (var db = new Mapeo())
		{
			db.viajes.Add(viajes);
			db.SaveChanges();
		}
	}

    public List<E_Viajes> obtenerViajesByFecha(DateTime fechaInicio, DateTime fechaFin)
    {
        using (var db = new Mapeo())
        {
            return (from viaje in db.viajes
                    join origen in db.lugares on viaje.Id_origen equals origen.Id
                    join destino in db.lugares on viaje.Id_destino equals destino.Id                   
                    join bb in db.buses on viaje.Id_placa equals bb.Id_placa
                    join ua in db.agencia on bb.Id_agencia equals ua.Nit
                    join bt in db.tipo_bus on bb.Id_tipo_bus equals bt.Id

                    where viaje.Fecha >= fechaInicio && viaje.Fecha <= fechaFin

                    select new
                    {
                        viaje,
                        origen,
                        destino,
                        ua, //usuarios.agencia
                        bt, //buses.tipo
                        bb, //buses.bus 

                    }).ToList().Select(m => new E_Viajes
                    {                                           
                        Precio_viaje = m.viaje.Precio_viaje,
                        Fecha = m.viaje.Fecha,
                        Id_placa = m.viaje.Id_placa,                           
                        Id_viaje=m.viaje.Id_viaje,
                        Capacidad = m.bt.N_puestos,

                        NombreOrigen = m.origen.Nombre,
                        NombreDestino = m.destino.Nombre,
                        NombreTipoBus = m.bt.Nombre,
                        NombreAgencia = m.ua.Nombre,                                                                
                      
                    }).OrderByDescending(x => x.Fecha).ToList();
        }
    }

    public List<E_Viajes> ObtenerViajesAgencia(string nit)
    {
        using (var db = new Mapeo())
        {
            using (var dbase = new Mapeo())
            {
                return (from viaje in db.viajes
                        join origen in db.lugares on viaje.Id_origen equals origen.Id
                        join destino in db.lugares on viaje.Id_destino equals destino.Id
                                           
                        select new
                        {
                            viaje,
                            origen,
                            destino,
                                                  
                        }).ToList().Select(m => new E_Viajes
                        {
                            Id_viaje=m.viaje.Id_viaje,
                            Id_placa = m.viaje.Id_placa,                        
                            Nit_agencia=m.viaje.Nit_agencia,
                            Pasaje = m.viaje.Pasaje,
                            Id_estado_viaje = m.viaje.Id_estado_viaje,
                            Fecha = m.viaje.Fecha,
                           
                          
                            NombreDestino = m.destino.Nombre,
                            NombreOrigen = m.origen.Nombre,
                          
                        }).Where(x => x.Nit_agencia.Equals(nit)).OrderBy(x => x.Id_viaje).ToList();
            }
        }
    }

    public List<E_Viajes> obtenerViajes_Visitante(DateTime fechaInicio, DateTime fechaFin)
    {
        using (var db = new Mapeo())
        {
            return (from viaje in db.viajes                  
                    join origen in db.lugares on viaje.Id_origen equals origen.Id
                    join destino in db.lugares on viaje.Id_destino equals destino.Id
                    join bb in db.buses on viaje.Id_placa equals bb.Id_placa
                    join ua in db.agencia on bb.Id_agencia equals ua.Nit                   
                    join bt in db.tipo_bus on bb.Id_tipo_bus equals bt.Id                  
                    where viaje.Fecha >= fechaInicio && viaje.Fecha <= fechaFin

                    select new
                    {
                        viaje,
                        origen,
                        destino,
                        ua, //usuarios.agencia
                        bt, //buses.tipo
                        bb, //buses.bus 
                     
                    }).ToList().Select(m => new E_Viajes
                    {                        
                        NombreOrigen = m.origen.Nombre, 
                        NombreDestino = m.destino.Nombre,
                        NombreTipoBus=m.bt.Nombre,
                        NombreAgencia=m.ua.Nombre,
                        Id_placa = m.bb.Id_placa,
                        Precio_viaje= m.viaje.Precio_viaje,                                           
                        Capacidad=m.bt.N_puestos,
                        Fecha=m.viaje.Fecha,
                        
                    }).OrderByDescending(x => x.Fecha).ToList();
        }
    }

    public void editarRutas(E_Viajes editar)
    {
        using (var db = new Mapeo())
        {
            E_Viajes rutAnt = db.viajes.Where(x => x.Id_viaje == editar.Id_viaje).FirstOrDefault();

          
            rutAnt.Fecha = editar.Fecha;
            rutAnt.Id_placa = editar.Id_placa;         
            rutAnt.Id_origen = editar.Id_origen;
            rutAnt.Id_destino = editar.Id_destino;
            rutAnt.Id_estado_viaje = editar.Id_estado_viaje;
         
            var enty = db.Entry(rutAnt);
            enty.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void eliminarRutas(E_Viajes eliminar)
    {
        using (var db = new Mapeo())
        {
            var enty = db.Entry(eliminar);
            enty.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }
}