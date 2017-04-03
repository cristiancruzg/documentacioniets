using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Recibe o envía correspondencia
/// </summary>
public class clRadicacion
{
    //Clase entidades ORM BD
    private Entidades   contexto = new Entidades();
    public clRadicacion() { }
    //Metodo Agregar RADICACION
    public int crearRadicacion(RADICACIONES nuevaRadicacion)
    {
        try
        {
            contexto.RADICACIONES.Add(nuevaRadicacion);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya existe en la base de datos,  de clic en la url y posteriormente en enter");
            throw;
        }
    }
    //Metodo buscar RADICACION      
    public RADICACIONES buscarRadicacion(int id_radicacion)
    {
        return contexto.RADICACIONES.Find(id_radicacion);
    } 

    //Metodo Eliminar RADICACION
    public int EliminarRadicacion(int id_radicacion)
    {
        try
        {
            RADICACIONES ra = contexto.RADICACIONES.Find(id_radicacion);
            contexto.RADICACIONES.Remove(ra);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya no existe en la base de datos, de clic en la url y posteriormente en enter");
            throw;
        }
    }

    //Metodo Actualizar RADICACION
    public int ActualizarRadicacion(RADICACIONES nuevo)
    {
        try
        {
            RADICACIONES ra = contexto.RADICACIONES.Find(nuevo.ID_RADICACION);
            ra = nuevo;
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("No puede existir un radicado con fecha igual a otro, verifique por favor");
            throw;
        }
    }
    //Metodo Listar RADICACION
    public List<RADICACIONES> getRadicacion()
    {
        var query = from ra in contexto.RADICACIONES.Include("ANEXOS").Include("DEPENDENCIA").Include("TIPO_DOCUMENTOS").Include("USUARIOS").Include("USUARIO_EXTERNO") select ra;
        return query.ToList();
    }
}