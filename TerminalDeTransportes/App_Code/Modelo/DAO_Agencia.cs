using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Agencia
/// </summary>
public class DAO_Agencia
{
   
        public E_Agencia login(E_Agencia agencia)
        {
            using (var db = new Mapeo())
            {
                return db.agencia.Where(x => x.User_name.Equals(agencia.User_name) && x.Contraseña.Equals(agencia.Contraseña) && x.Estado_id == 1).FirstOrDefault();
            }
        }



        public E_Agencia validarCorreo(string correo)
        {
            using (var db = new Mapeo())
            {
                return db.agencia.Where(x => x.Correo.ToLower().Equals(correo.ToLower())).FirstOrDefault();
            }
        }

        public E_Agencia buscarToken(string token)
        {
            using (var db = new Mapeo())
            {
                return db.agencia.Where(x => x.Token.Equals(token)).FirstOrDefault();
            }
        }

        public void actualizarAgencia(E_Agencia agencia)
        {
        using (var db = new Mapeo())
        {
            db.agencia.Attach(agencia);

            var entry = db.Entry(agencia);
            entry.State = EntityState.Modified;
            db.SaveChanges();

        }
           
        }

        public void AgregarAgencia(E_Agencia agencia)
        {
            Mapeo a = new Mapeo();

            a.agencia.Add(agencia);
            a.SaveChanges();

        }



        public List<E_Agencia> Obtener_Agencias(string nit)
        {

        using (var db = new Mapeo())
        {
            return (from ua in db.agencia
                    join c in db.rol on ua.Rol_id equals c.Id
                    join bb in db.buses on ua.Nit equals bb.Id_agencia
                    join bt in db.tipo_bus on bb.Id_tipo_bus equals bt.Id

                    select new
                    {
                        ua,
                        c,
                        bb,
                        bt

                       /* bb.Id_tipo_bus,
                        bb.Id_placa,
                        ua.Nit,
                        bb.Aforo,
                        bb.Numero_interno,
                        bt.Nombre,
                        bt.N_puestos*/

                    }).ToList().Select(m => new E_Agencia
                    {
                       
                        Nombre = m.ua.Nombre,
                        Estado_id = m.ua.Estado_id,
                        Correo = m.ua.Correo,
                        Telefono = m.ua.Telefono,
                        User_name = m.ua.User_name,
                        Rol_id= m.ua.Rol_id,

                    }).Where(x => x.Nit.Equals(nit)).OrderBy(x => x.Nombre).ToList();
            }
        }

    public List<E_Agencia> ObtenerAgencias()
    {
        List<E_Agencia> lista = new List<E_Agencia>();
        using (var db = new Mapeo())
        {
            lista = db.agencia.ToList();

        }

        E_Agencia agencia = new E_Agencia();
        agencia.Nombre = "- Seleccione -";
        lista.Add(agencia);

        return lista.OrderBy(x => x.Nombre).ToList();
    }

    public List<E_Agencia> VerAgenciasAdmin()
    {

        using (var db = new Mapeo())
        {


            return (from e in db.agencia
                    join c in db.rol on e.Rol_id equals c.Id
                  


                    select new
                    {
                        e,
                        c,
                        


                    }).ToList().Select(m => new E_Agencia
                    {
                        Nit = m.e.Nit,
                        Nombre = m.e.Nombre,
                        Estado_id = m.e.Estado_id,
                        Correo = m.e.Correo,
                        Telefono = m.e.Telefono,
                        User_name = m.e.User_name,
                        Rol_id = m.e.Rol_id,
                        Buses=m.e.Buses,


                    }).OrderBy(x => x.Nombre).ToList();
        }
    }

        public void editarAgencia(E_Agencia editar)
    {
        using (var db = new Mapeo())
        {
            E_Agencia agenAnt = db.agencia.Where(x => x.Nit == editar.Nit).FirstOrDefault();

            agenAnt.Nombre = editar.Nombre;
            agenAnt.User_name = editar.User_name;
            agenAnt.Correo = editar.Correo;
            agenAnt.Contraseña = editar.Contraseña;
            agenAnt.Nit = editar.Nit;
            agenAnt.Telefono = editar.Telefono;

            var enty = db.Entry(agenAnt);
            enty.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void eliminarAgencia(E_Agencia eliminar)
    {
        using (var db = new Mapeo())
        {
            var enty = db.Entry(eliminar);
            enty.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }

}