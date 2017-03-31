using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fechaprueba
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //instanciar la clase conexion
        conectar pagina = new conectar();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //llama el metodo desde la conexion
            Label1.Text = pagina.dia(regdata.Text);
        }
    }
}