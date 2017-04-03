using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Usuario quien envía o recibe correspondencia ajeno al IETS
/// Por medio del objeto contexto se accede a los objetos de la base de datos y realizar las operaciones
/// </summary>
public class clUsuarioExterno
{
    //Clase entidades ORM BD
    private Entidades contexto = new Entidades();
    public clUsuarioExterno() { }
    //Metodo Agregar USUARIO_EXTERNO
    public int agregarUsuExt(USUARIO_EXTERNO nuevo)
    {
        try
        {
            contexto.USUARIO_EXTERNO.Add(nuevo);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya existe en la base de datos,  de clic en la url y posteriormente en enter");
            throw;
        }
    }
    //Metodo buscar USUARIO_EXTERNO      
    public USUARIO_EXTERNO buscarUsuExt(int id_usu_ext)
    {
        return contexto.USUARIO_EXTERNO.Find(id_usu_ext);
    }
    //Metodo Listar USUARIO_EXTERNO
    public List<USUARIO_EXTERNO> getUsuExt()
    {
        return contexto.USUARIO_EXTERNO.ToList();
    }
    //Metodo Eliminar USUARIO_EXTERNO
    public int EliminarUsuExt(int id_usu_ext)
    {
        try
        {
            USUARIO_EXTERNO ue = contexto.USUARIO_EXTERNO.Find(id_usu_ext);
            contexto.USUARIO_EXTERNO.Remove(ue);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya no existe en la base de datos, de clic en la url y posteriormente en enter");
            throw;
        }
    }
    //Metodo Actualizar USUARIO_EXTERNO
    public int ActualizarUsuExt(USUARIO_EXTERNO nuevo)
    {
        try
        {
            USUARIO_EXTERNO ue = contexto.USUARIO_EXTERNO.Find(nuevo.ID_USUARIO_EXT);
            ue = nuevo;
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("Al editar el nombre del usuario externo esta siendo modificado por un campo ya existente, verifique el nombre por favor");
            throw;
        }
    }

}