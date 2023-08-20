using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

/// <summary>
/// Descripción breve de DAO_Buses
/// </summary>
public class DAO_Buses
{
	public List<E_TipoBus> Obtener_Tipo()
	{
		List<E_TipoBus> lista = new List<E_TipoBus>();
		using (var db = new Mapeo())
		{
			lista = db.tipo_bus.ToList();
		}

		E_TipoBus tipo_bus = new E_TipoBus();
		tipo_bus.Nombre = "-- Seleccione --";

		lista.Add(tipo_bus);

		return lista.OrderBy(x => x.Nombre).ToList();
	}

    public List<E_Buses> Obtener_Buses(string nit)
    {
        using (var db = new Mapeo())
        {
            return (from e in db.buses
                    join c in db.tipo_bus on e.Id_tipo_bus equals c.Id
                    join ab in db.agencia on e.Id_agencia equals ab.Nit
                 
                    select new
                    {
                        e,
                        c,
                        ab

                    }).ToList().Select(m => new E_Buses
                    {                                              
                        Id_placa = m.e.Id_placa,                              
                        NombreTipoBus = m.c.Nombre,
                        Capacidad=m.c.N_puestos,
                        Id_agencia=m.ab.Nit
                                                                      
                    }).Where(x=>x.Id_agencia.Equals(nit)).OrderBy(x => x.Id_placa).ToList();
        }
    }

    public void AgregarBus(E_Buses buses)
    {
        Mapeo a = new Mapeo();

        a.buses.Add(buses);
        a.SaveChanges();
    }




    /*public List<E_Buses> ObtenerBusPorAgencia(string nit)
    {
        List<E_Buses> devolver = new List<E_Buses>();
        
        using (var db = new Mapeo())
        {
            devolver = (from e in db.agencia
                        join bp in db.buses on e.Nit equals bp.Id_agencia

                        select new
                        {
                            e,
                            bp

                        }).ToList().Select(m => new E_Buses
                        {
                            Id_placa = m.bp.Id_placa,
                            Id_agencia = m.e.Nit

                        }).Where(x => x.Id_agencia.Equals(nit)).ToList();
        }return devolver;
    }*/

    public List<E_Buses> ObtenerBusPorAgencia(string nit)
   {   
       using (var db = new Mapeo())
       {
                    return(from ua in db.agencia
                       join ba in db.buses on ua.Nit equals ba.Id_agencia
                       join bt in db.tipo_bus on ba.Id_tipo_bus equals bt.Id

                       select new
                       {
                           ua,
                           ba,
                           bt

                       }).ToList().Select(m => new E_Buses
                       {
                           Id_placa = m.ba.Id_placa,
                           Id_agencia = m.ua.Nit,
                           Numero_interno=m.ba.Numero_interno,
                           NombreTipoBus=m.bt.Nombre,
                           Capacidad=m.bt.N_puestos,
                           Tecnomecanica=m.ba.Tecnomecanica,
                           Soat=m.ba.Soat
                          
                       }).Where(x => x.Id_agencia.Equals(nit)).ToList();
       }
   }

}