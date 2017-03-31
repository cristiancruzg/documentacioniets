using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace probando
{
    public class BEO
    {
        conexion conexion = new conexion();
        DataSet ds = new DataSet();
        DataTable dt =  new DataTable();

        public DataTable validar(string nombre,string pass)
        {
            dt = conexion.validacion(nombre,pass);
            return (dt);

        }

    }
}