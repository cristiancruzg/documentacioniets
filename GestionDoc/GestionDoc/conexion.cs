using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

namespace GestionDoc
{   
    public class conexion
    {
       
         SqlConnection conec;
         SqlCommand cmd;
       
        DataTable dt = new DataTable();

        public bool conectar()
        {
            try
            {
                string cad = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=GC;Data Source=DESKTOP-7T8MUGD\\SQLEXPRESS";
                this.conec = new SqlConnection(cad);
               this.conec.Open();
                return true;

            }
            catch (Exception)
            {

               return false;
            }   
                        
        }


        private void configurarComando(CommandType tipoComando, string nombreProc)
        {
            this.cmd = new SqlCommand();
            this.cmd.Connection = this.conec;
            this.cmd.CommandText = nombreProc;
            this.cmd.CommandType = tipoComando;
        }

        public DataTable tablausuario(string nombre)
        {


            if (conectar())
            {
                configurarComando(CommandType.StoredProcedure, "spConsultarUsuario");
                this.cmd.Parameters.AddWithValue("@user", nombre);
                SqlDataAdapter dap = new SqlDataAdapter(this.cmd);
                dap.Fill(dt);
                return dt;
            }
            else {

                 return null;
            } 


        }



    }
}