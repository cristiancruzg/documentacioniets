using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace probando
{
    public partial class login : System.Web.UI.Page
    {
        BEO datos = new BEO();
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void btningresar_Click(object sender, EventArgs e)
        {

            DataTable usuario = new DataTable();
            string nombre = txtusuario.Text;
            string pass = txtpass.Text;


            usuario = datos.validar(nombre, pass);

            if (usuario.Rows.Count == 0)
            {
                Response.Write("<script language=javascript>alert('verifique sus datos ingresados');</script>");
               // Response.Redirect("login.aspx");
            }
                else
                {
                DataRow row = usuario.Rows[0];

                Session["nombre"] = row["NOMBRE"];
                Response.Redirect("Radicacion.aspx");
               
                }
          }

        

        
     


    }
}