using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

using System.Web.ClientServices;
namespace busqueda
{
    public partial class buscar : System.Web.UI.Page
    {
        filtrarbusqueda df = new filtrarbusqueda(); 
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        

        

        protected void gdbusqueda_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gdbusqueda.PageIndex = e.NewPageIndex;
            df.filtrar_grilla(gdbusqueda, this.txtnumero.Text.Trim());
            df.buscarxentrada(gdbusqueda, this.txtentrada.Text.Trim());

        }

        protected void gdbusqueda_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void Unnamed1_TextChanged(object sender, EventArgs e)
        {
            df.filtrar_grilla(gdbusqueda,this.txtnumero.Text.Trim());
            if (gdbusqueda.Rows[0] == null)
            {
                Response.Write("<script>alert('no hay registros con estos parametros');</script>");
            }    
        }

        protected void txtentrada_TextChanged(object sender, EventArgs e)
        {
            df.buscarxentrada(gdbusqueda, this.txtentrada.Text.Trim());
        }
    }
}