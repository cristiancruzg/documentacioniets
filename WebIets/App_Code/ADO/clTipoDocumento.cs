using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Tipo de elemento que es enviado en la correspondencia, ya sea de entrada o salida
/// </summary>
public class clTipoDocumento
{
    //Clase entidades ORM BD
    private EntidadesBD contexto = new EntidadesBD();
    public clTipoDocumento(){}

    //Metodo Agregar TIPO DE DOCUMENTO
    public int agregarTipoDoc(TIPO_DOCUMENTOS nuevo)
    {
        try
        {
            contexto.TIPO_DOCUMENTOS.Add(nuevo);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya existe en la base de datos,  de clic en la url y posteriormente en enter");
            throw;
        }
    }
    //Metodo buscar TIPO DE DOCUMENTO      
    public TIPO_DOCUMENTOS buscarTipoDoc(int id_tipo_doc)
    {
        return contexto.TIPO_DOCUMENTOS.Find(id_tipo_doc);
    }
    //Metodo Listar TIPO DE DOCUMENTO
    public List<TIPO_DOCUMENTOS> getTipoDoc()
    {
        return contexto.TIPO_DOCUMENTOS.ToList();
    }
    //Metodo Eliminar TIPO DE DOCUMENTO
    public int EliminarTipoDocumento(int id_tipo_doc)
    {   
        try
        {
            TIPO_DOCUMENTOS td = contexto.TIPO_DOCUMENTOS.Find(id_tipo_doc);
            contexto.TIPO_DOCUMENTOS.Remove(td);
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("El registro ya no existe en la base de datos, de clic en la url y posteriormente en enter");
            throw;
        }
    }
    //Metodo Actualizar TIPO DE DOCUMENTO
     public int ActualizarTipoDoc(TIPO_DOCUMENTOS nuevo)
    {
        try
        {
            TIPO_DOCUMENTOS td = contexto.TIPO_DOCUMENTOS.Find(nuevo.ID_TIPO_DOC);
            td = nuevo;
            return contexto.SaveChanges();
        }
        catch (Exception)
        {
            Console.WriteLine("Al editar el nombre del tipo de documento esta siendo modificado por un campo ya existente, verifique el nombre por favor");
            throw;
        }

    }
}