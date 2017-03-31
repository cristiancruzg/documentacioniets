using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Área del instituto
/// </summary>
public class clDependencia
{
    //Clase entidades ORM BD
    private Entidades contexto = new Entidades();
    public clDependencia(){ } 
    //Metodo Agregar DEPENDENCIA
    public int agregarDependencia(DEPENDENCIA nuevo)
    {
        
        try
        {
            contexto.DEPENDENCIA.Add(nuevo);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya existe en la base de datos,  de clic en la url y posteriormente en enter");
            throw;
        }
    }
    //Metodo buscar DEPENDENCIA      
    public DEPENDENCIA buscarDependencia(int id_dependencia)
    {
        return contexto.DEPENDENCIA.Find(id_dependencia);        
    }
    //Metodo Listar DEPENDENCIA
    public List<DEPENDENCIA> getDependencia()
    {
        return contexto.DEPENDENCIA.ToList();
    }
    //Metodo Eliminar DEPENDENCIA
    public int EliminarDependencia(int id_dependencia)
    {
        try
        {
            DEPENDENCIA de = contexto.DEPENDENCIA.Find(id_dependencia);
            contexto.DEPENDENCIA.Remove(de);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya no existe en la base de datos, de clic en la url y posteriormente en enter");
            throw;
        }
    }
    //Metodo Actualizar DEPENDENCIA
    public int ActualizarDependencia(DEPENDENCIA nuevo)
    {

        try
        {
            DEPENDENCIA de = contexto.DEPENDENCIA.Find(nuevo.ID_DEPENDENCIA);
            de = nuevo;
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("Al editar el nombre de la dependencia esta siendo modificado por un campo ya existente, verifique el nombre por favor");
            throw;
        }
    }
}