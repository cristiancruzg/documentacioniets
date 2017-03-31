using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.pdf;
namespace probando
{
    public partial class Radicacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["nombre"] != null)
            {

                lblLogin.Text = Session["nombre"].ToString();

            }
            else
            {
                Response.Redirect("login.aspx");
            }

            }
        public void validar (DateTime dato)
        {
            dato = DateTime.Parse(regdata1.Text);
            if (dato != null)
            {

            }
            else {

                dato = dato.Date;

            }

        }

        

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["nombre"] = null;
            Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Redirect("login.aspx");
        }

    }

   
}