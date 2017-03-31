using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace probando
{
    public class conexion
    {
        SqlCommand cmd;
        SqlConnection conec;
       

        public bool conectar()
        {
            try
            {

                string cad = ConfigurationManager.AppSettings["cnConnection"];
                this.conec = new SqlConnection(cad);
                conec.Open();
                return true;

            }
            catch (Exception)
            {

                return false;
            }

        }

        public DataTable validacion( string nombre, string pass)
        {
            DataTable dt = new DataTable();

            if (conectar())
             {
              this.cmd = new SqlCommand();
              this.cmd.Connection = conec;
              this.cmd.CommandType = CommandType.StoredProcedure;
               this.cmd.CommandText = "spConsultarUsuario";
               this.cmd.Parameters.AddWithValue("@USER",nombre);
               this.cmd.Parameters.AddWithValue("@PASS",pass);
                SqlDataAdapter dtdap = new SqlDataAdapter(this.cmd);
                dtdap.Fill(dt);
                return dt;
                             

            }
            else
            {
                return null;
            }


        }

    }
}