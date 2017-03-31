using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace fechaprueba
{
    
    public class conectar
    {
        SqlCommand cmd;
        SqlConnection conec;

        //creo el metodo para la conexion
        public bool conexion ()
        {
            try
            {
                //cambiar cadena de conexion a su pc
                string cad = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=GC;Data Source=DESKTOP-7T8MUGD\\SQLEXPRESS";
                this.conec = new SqlConnection(cad);
                conec.Open();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
          }
        //creo el metodo para insertar la fecha en la bd que resibe el string desde el web form
        public string  dia(string fecha)
        {
            
            if (conexion())
            {
                this.cmd = new SqlCommand();
                this.cmd.Connection = conec;
                this.cmd.CommandType = CommandType.StoredProcedure;
                this.cmd.CommandText = "spinsertarfecha";
                this.cmd.Parameters.AddWithValue("@fecha", fecha);
                SqlDataAdapter adt = new SqlDataAdapter(cmd);
                this.cmd.ExecuteNonQuery();
                return "si";
            }

            return "no";
        }


    }
}