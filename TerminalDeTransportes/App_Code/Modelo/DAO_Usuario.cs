using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Usuario
/// </summary>
public class DAO_Usuario
{
    public E_Usuario login(E_Usuario user)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.User_name.Equals(user.User_name) && x.Contraseña.Equals(user.Contraseña) && x.Estado_id == 1).FirstOrDefault();
        }
    }

    public E_Usuario validarCorreo(string correo)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.Correo.ToLower().Equals(correo.ToLower())).FirstOrDefault();
        }
    }

    public E_Usuario buscarToken(string token)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.Token.Equals(token)).FirstOrDefault();
        }
    }

    public void actualizarUsuario(E_Usuario user)
    {
        using (var db = new Mapeo())
        {
            db.usuario.Attach(user);

            var entry = db.Entry(user);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

    public void AgregarUsuario(E_Usuario usuario)
    {
        Mapeo a = new Mapeo();

        a.usuario.Add(usuario);
        a.SaveChanges();
    }
}
