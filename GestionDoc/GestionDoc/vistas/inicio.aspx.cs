using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace GestionDoc.vistas
{
    public partial class inicio : System.Web.UI.Page
    {
        conexion con = new conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btValidar_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable enano = new DataTable();
                enano = con.tablausuario(tbxUsuario.Text);
                
                    DataRow dt = enano.Rows[0];
                    HttpContext.Current.Session["NOMBRE"] = tbxUsuario.Text;
                    Response.Redirect("index.aspx");

                  }
                catch (Exception ex)
                {
                 MessageBox.Show(ex.Message);
                 } 
         }
    }
}