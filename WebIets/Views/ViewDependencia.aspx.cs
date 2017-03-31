using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ViewDependencia : System.Web.UI.Page
{
    //Instancia de la clase Anexo ya en entidad
    public clDependencia ado = new clDependencia();

    public void cargarGrillaDependencia()
    {
        gvDep.DataSource = ado.getDependencia();
        gvDep.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //Permite la validación de campos vacios
        Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            cargarGrillaDependencia();
        }
    }
    //Método que agrega elementos en la grilla
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        ANEXOS nuevoAn = new ANEXOS();
        DEPENDENCIA nuevoDe = new DEPENDENCIA();
        nuevoDe.NOMBRE_DEPENDENCIA = txtNombreDependencia.Text.ToUpper();

        if (txtNombreDependencia.Text == "")
        {
            lblValida.Attributes.CssStyle.Add("color", "red");
            lblValida.Text = "Ingrese nombre de dependencia";

        }
        else
        {
            lblValida.Text = "";
            ado.agregarDependencia(nuevoDe);
            cargarGrillaDependencia();
            lblValida.Attributes.CssStyle.Add("color", "#01DF01");
            lblValida.Text = "Se ha insertado el registro correctamente ";
            this.txtNombreDependencia.Text = "";
        }
    }

    //Evento de la grilla que cancela cuando se da clic en editar
    protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
    {
        gvDep.EditIndex = -1;
        cargarGrillaDependencia();
    }
    //Evento de la grilla que elimina una fila en la tabla
    protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
    {

        int id = Convert.ToInt32(gvDep.DataKeys[e.RowIndex].Values[0]);

        ado.EliminarDependencia(id);
        gvDep.EditIndex = -1;
        lblValida.Text = "";
        cargarGrillaDependencia();
    }

    //Evento de la grilla que edita los elementos de la tabla
    protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
    {
        gvDep.EditIndex = e.NewEditIndex;
        cargarGrillaDependencia();
        lblValida.Text = "";
    }

    //Evento de la grilla que actualiza los elementos de la tabla
    protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
    {

        GridViewRow fila = gvDep.Rows[e.RowIndex];
        int id = Convert.ToInt32(gvDep.DataKeys[e.RowIndex].Values[0]);
        string nombre = (fila.FindControl("txtNombreDependencia") as TextBox).Text.ToUpper();

        DEPENDENCIA de = ado.buscarDependencia(id);
        de.NOMBRE_DEPENDENCIA = nombre;

        ado.ActualizarDependencia(de);
        gvDep.EditIndex = -1;
        cargarGrillaDependencia();
    }
    //Paginación
    protected void gvDep_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvDep.PageIndex = e.NewPageIndex;
        cargarGrillaDependencia();
    }
}