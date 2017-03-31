using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ViewTipoDoc : System.Web.UI.Page
{
    //Instancia de la clase Tipo de documento ya en entidad
    public clTipoDocumento ado = new clTipoDocumento();

    public void cargarGrillaTipoDoc()
    {
        gvTipoDoc.DataSource = ado.getTipoDoc();
        gvTipoDoc.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //Permite la validación de campos vacios
        Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            cargarGrillaTipoDoc();
        }
    }
    //Método que agrega elementos en la grilla
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        TIPO_DOCUMENTOS nuevoTd = new TIPO_DOCUMENTOS();
        nuevoTd.NOMBRE_TIPO_DOC = txtTipoDoc.Text.ToUpper();

        if (txtTipoDoc.Text == "")
        {
            lblValida.Attributes.CssStyle.Add("color", "red");
            lblValida.Text = "Ingrese nombre del tipo de documento";

        }
        else
        {
            lblValida.Text = "";
            ado.agregarTipoDoc(nuevoTd);
            cargarGrillaTipoDoc();
            lblValida.Attributes.CssStyle.Add("color", "#01DF01");
            lblValida.Text = "Se ha insertado el registro correctamente";
            this.txtTipoDoc.Text = "";
        }
    }

    //Evento de la grilla que cancela cuando se da clic en editar
    protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
    {
        gvTipoDoc.EditIndex = -1;
        cargarGrillaTipoDoc();
    }

    //Evento de la grilla que elimina una fila en la tabla
    protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(gvTipoDoc.DataKeys[e.RowIndex].Values[0]);

        ado.EliminarTipoDocumento(id);
        gvTipoDoc.EditIndex = -1;
        lblValida.Text = "";
        cargarGrillaTipoDoc();
    }

    //Evento de la grilla que edita los elementos de la tabla
    protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
    {
        gvTipoDoc.EditIndex = e.NewEditIndex;
        cargarGrillaTipoDoc();
        lblValida.Text = "";
    }

    //Evento de la grilla que actualiza los elementos de la tabla
    protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow fila = gvTipoDoc.Rows[e.RowIndex];
        int id = Convert.ToInt32(gvTipoDoc.DataKeys[e.RowIndex].Values[0]);
        string nombre = (fila.FindControl("txtNombreTd") as TextBox).Text.ToUpper();

        TIPO_DOCUMENTOS td = ado.buscarTipoDoc(id);
        td.NOMBRE_TIPO_DOC = nombre;

        ado.ActualizarTipoDoc(td);
        gvTipoDoc.EditIndex = -1;
        cargarGrillaTipoDoc();
    }
    //Paginación
    protected void gvTipoDoc_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvTipoDoc.PageIndex = e.NewPageIndex;
        cargarGrillaTipoDoc();
    }
}