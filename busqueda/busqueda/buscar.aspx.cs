using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace busqueda
{
    public partial class buscar : System.Web.UI.Page
    {
        filtrarbusqueda df = new filtrarbusqueda(); 
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public void llenargrilla()
        {
            df.llenar_grila(gdbusqueda);
             

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
        }

        protected void txtentrada_TextChanged(object sender, EventArgs e)
        {
            df.buscarxentrada(gdbusqueda, this.txtentrada.Text.Trim());
        }
    }
}