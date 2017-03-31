using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ViewAnexo : System.Web.UI.Page
{
    //Instancia de la clase Anexo ya en entidad
    public clAnexo ado = new clAnexo();

    public void cargarGrillaAnexo()
    {
        gvAnexo.DataSource = ado.getAnexo();
        gvAnexo.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarGrillaAnexo();
            
        }
    }
    //Método que agrega elementos en la grilla
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ANEXOS nuevoAn = new ANEXOS();
        nuevoAn.NOMBRE_ANEXO = txtNombreAnexo.Text.ToUpper();

        if (txtNombreAnexo.Text == "")
        {
            lblValida.Attributes.CssStyle.Add("color", "red");
            lblValida.Text = "Ingrese nombre de anexo";
        }
        else
        {
            lblValida.Text = "";
            ado.agregarAnexo(nuevoAn);
            cargarGrillaAnexo();
            lblValida.Attributes.CssStyle.Add("color", "#01DF01");
            lblValida.Text = "Se ha insertado el registro correctamente";
            this.txtNombreAnexo.Text = "";
        }
    }
    //Evento de la grilla que cancela cuando se da clic en editar
    protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
    {
        gvAnexo.EditIndex = -1;
        cargarGrillaAnexo();
    }
    //Evento de la grilla que elimina una fila en la tabla
    protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(gvAnexo.DataKeys[e.RowIndex].Values[0]);

        ado.EliminarAnexo(id);
        gvAnexo.EditIndex = -1;
        lblValida.Text = "";
        cargarGrillaAnexo();
    }
    //Evento de la grilla que edita los elementos de la tabla
    protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
    {
        gvAnexo.EditIndex = e.NewEditIndex;
        cargarGrillaAnexo();
        lblValida.Text = "";
    }
    //Evento de la grilla que actualiza los elementos de la tabla
    protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
    {

        GridViewRow fila = gvAnexo.Rows[e.RowIndex];
        int id = Convert.ToInt32(gvAnexo.DataKeys[e.RowIndex].Values[0]);
        string nombre = (fila.FindControl("txtNombreAnexo") as TextBox).Text.ToUpper();

        ANEXOS an = ado.buscarAnexo(id);
        an.NOMBRE_ANEXO = nombre;

        ado.ActualizarAnexo(an);
        gvAnexo.EditIndex = -1;
        cargarGrillaAnexo();
    }
    //Paginación
    protected void Paginacion(object sender, GridViewPageEventArgs e)
    {
        gvAnexo.PageIndex = e.NewPageIndex;
        cargarGrillaAnexo();
    }

}