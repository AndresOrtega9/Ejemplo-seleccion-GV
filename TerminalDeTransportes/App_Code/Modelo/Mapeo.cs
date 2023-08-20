using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Mapeo
/// </summary>
public class Mapeo : DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }

    public Mapeo()
            : base("name=conexion")
    {

    }

    public DbSet<E_Usuario> usuario { get; set; }
    public DbSet<E_Rol> rol { get; set; }
	public DbSet<E_EstadoViaje> estado_viaje { get; set; }
	public DbSet<E_TipoBus> tipo_bus { get; set; }
    public DbSet<E_Tiquete> tiquete { get; set; }
	public DbSet<E_Lugares> lugares { get; set; }
	public DbSet<E_Estado> estado_usuario { get; set; }
	public DbSet<E_Buses> buses { get; set; }
	public DbSet<E_Viajes> viajes { get; set; }
    public DbSet<E_Agencia> agencia { get; set; }
    public DbSet<A_Calificacion> rating { get; set; }
    public DbSet<A_Asignar> asignar { get; set; }

    protected override void OnModelCreating(DbModelBuilder builder)
    {
        builder.HasDefaultSchema("public");

        base.OnModelCreating(builder);
    }
}