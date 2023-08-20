using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Administrativo
/// </summary>
public class DAO_Administrativo
{
    public int generarFactura(E_Tiquete tiquete)
    {
        using (var db = new Mapeo())
        {
            db.tiquete.Add(tiquete);
            db.SaveChanges();
        }
        return tiquete.Id_tiquete;
    }

    public E_Tiquete obtenerFactura(int tiqueteId)
    {
        using (var db = new Mapeo())
        {
            return (from tiq in db.tiquete
                    join ut in db.usuario on tiq.Id_usuario equals ut.Identificacion
                    where tiq.Id_tiquete == tiqueteId
                    select new
                    {
                        tiq,
                        ut
                    }).ToList().Select(m => new E_Tiquete
                    {
                        Id_tiquete = m.tiq.Id_tiquete,
                        Id_agencia = m.tiq.Id_agencia,
                        Id_usuario=m.tiq.Id_usuario,
                        Id_viaje=m.tiq.Id_viaje,
                        NombreUsuario=m.ut.Nombre
                        
                    }).FirstOrDefault();
        }
    }
}