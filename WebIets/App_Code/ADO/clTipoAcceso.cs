using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Permisos de ingreso a las vistas del sistema de correspondencia
/// </summary>
public class clTipoAcceso
{
    //Clase entidades ORM BD
    private EntidadesBD contexto = new EntidadesBD();
    public clTipoAcceso(){}

    //Metodo buscar TIPO ACCESO      
    public TIPO_ACCESO buscarTipoAcceso(int id_tipo_acceso)
    {
        return contexto.TIPO_ACCESO.Find(id_tipo_acceso);
    }

    //Metodo Listar ANEXO
    public List<TIPO_ACCESO> getTipoAcceso()
    {
        return contexto.TIPO_ACCESO.ToList();
    }

}