using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Descripción breve de conexion
/// </summary>
public class conexion
{
    public static SqlConnection conexionbd()
    {
        try
        {
            SqlConnection conect = new SqlConnection(ConfigurationManager.AppSettings["cnConnection"]);
            conect.Open();
            return conect;

        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }
       

    }
    public static SqlConnection cerrarconexion()
    {
        SqlConnection conect = new SqlConnection(ConfigurationManager.AppSettings["cnConnection"]);
        conect.Close();
        return conect;
    }
}