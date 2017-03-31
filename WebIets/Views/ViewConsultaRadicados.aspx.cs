using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ViewConsultaRadicados : System.Web.UI.Page
{
    //Instancias de las clases que se van a usar en esta vista
    private Entidades contexto = new Entidades();
    private clRadicacion adoRadicacion = new clRadicacion();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarRadicacion();
        }
    }

    private void cargarRadicacion()
    {
        gvradica.DataSource = adoRadicacion.getRadicacion();
        gvradica.DataBind();
    }

    //Paginación
    protected void Paginacion(object sender, GridViewPageEventArgs e)
    {
        gvradica.PageIndex = e.NewPageIndex;
        cargarRadicacion();
    }
}
