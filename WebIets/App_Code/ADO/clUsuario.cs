using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Funcionario Interno del instituto
/// </summary>
public class clUsuario
{
    //Clase entidades ORM BD
    private Entidades contexto = new Entidades();
    public clUsuario() { }

    //Metodo Agregar USUARIOS
    public int agregarUsuario(USUARIOS nuevo)
    {
        try
        {
            contexto.USUARIOS.Add(nuevo);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya existe en la base de datos,  de clic en la url y posteriormente en enter");
            throw;
        }
    }

    //Metodo buscar USUARIOS      
    public USUARIOS buscarUsuario(int id_usuario)
    {
        return contexto.USUARIOS.Find(id_usuario);
    }

    //Metodo Listar USUARIOS
    public List<USUARIOS> getUsuarios()
    {
        //Query Linq para listar contenido tablas usuarios y tipo de acceso
        var query = from p in contexto.USUARIOS.Include("TIPO_ACCESO") select p;
        return query.ToList();
    }

    //Metodo Eliminar USUARIOS
    public int EliminarUsuario(int id_usuario)
    {
        try
        {
            USUARIOS us = contexto.USUARIOS.Find(id_usuario);
            contexto.USUARIOS.Remove(us);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya no existe en la base de datos, de clic en la url y posteriormente en enter");
            throw;
        }
    }
    //Metodo Actualizar USUARIOS
    public int ActualizarUsuario(USUARIOS nuevo)
    {

        try
        {
            USUARIOS us = contexto.USUARIOS.Find(nuevo.ID_TIPO_ACCESO_FK);
            us = nuevo;
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("Al editar el nombre del usuario esta siendo modificado por un campo ya existente, verifique el nombre por favor");
            throw;
        }
    }


}