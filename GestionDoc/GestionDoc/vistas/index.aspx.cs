using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GestionDoc
{
    public partial class index : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            object value = HttpContext.Current.Session["NOMBRE"];

            if (value!= null)
            {
                lblLogin.Text = "bienvenido  " + (string)value;
            }
           
        }
    }
}