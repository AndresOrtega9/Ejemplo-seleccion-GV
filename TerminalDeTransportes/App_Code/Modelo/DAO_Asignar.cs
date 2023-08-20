using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAO_Asignar
/// </summary>
public class DAO_Asignar
{
    public void agregaCalificacion(A_Asignar calif)
    {
        using (var db = new Mapeo())
        {
            db.asignar.Add(calif);
            db.SaveChanges();
        }
    }


    public List<A_Asignar> agenciasCalificadas()
    {
        string a=null;
        int count = 0;
        List<A_Asignar> valor = new List<A_Asignar>();
        List<A_Asignar> devolver = new List<A_Asignar>();
        using (var db = new Mapeo())
        {
          valor = (from ra in db.asignar
                    
              select new
                    {
                        ra,

                    }).ToList().Select(m => new A_Asignar
                    {
                       Id_agencia=m.ra.Id_agencia,
                       Puntuacion=m.ra.Puntuacion

                    }).OrderByDescending(x=>x.Id_agencia).ToList();
        }     
        foreach (A_Asignar agencia in valor)
        {
            if (a==null || a.Equals(agencia.Id_agencia) )
            {
                count = count + agencia.Puntuacion;
                a = agencia.Id_agencia;
                if (agencia==valor.LastOrDefault())
                {
                    A_Asignar lista = new A_Asignar();
                    lista.Id_agencia = a;
                    lista.Puntuacion = count;
                    count = 0;
                    count = count + agencia.Puntuacion;
                    a = agencia.Id_agencia;
                    devolver.Add(lista);
                }
            }
            else
            {
                A_Asignar lista = new A_Asignar();
                lista.Id_agencia = a;
                lista.Puntuacion = count;
                count = 0;
                count = count + agencia.Puntuacion;
                a = agencia.Id_agencia;
                devolver.Add(lista);
            }
        }
        return devolver;
    }

}