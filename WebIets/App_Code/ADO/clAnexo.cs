
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Tipo de elemento, carpeta, cd, usb que se adjunta a la correspondencia
/// </summary>
public class clAnexo
{
    //Clase entidades ORM BD
    private Entidades contexto = new Entidades();
    
    public clAnexo(){}
    //Metodo Agregar ANEXO
    public int agregarAnexo(ANEXOS nuevo)
    {
        try
        {
            contexto.ANEXOS.Add(nuevo);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya existe en la base de datos,  de clic en la url y posteriormente en enter");
            throw;
        }
    }
    //Metodo buscar ANEXO      
    public ANEXOS buscarAnexo(int id_anexo)
    {
        return contexto.ANEXOS.Find(id_anexo);
    }
    //Metodo Listar ANEXO
    public List<ANEXOS> getAnexo()
    {
        return contexto.ANEXOS.ToList();
    }
    //Metodo Eliminar ANEXO
    public int EliminarAnexo(int id_Anexo)
    {
        try
        {
            ANEXOS an = contexto.ANEXOS.Find(id_Anexo);
            contexto.ANEXOS.Remove(an);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya no existe en la base de datos, de clic en la url y posteriormente en enter");
            throw;
        }
        
    }
    //Metodo Actualizar ANEXO
    public int ActualizarAnexo(ANEXOS nuevo)
    {
        
        try
        {
            ANEXOS an = contexto.ANEXOS.Find(nuevo.ID_ANEXO);
            an = nuevo;
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("Al editar el nombre del anexo esta siendo modificado por un campo ya existente, verifique el nombre por favor");
            throw;
        }
    }
}

public class Entidades
{
}