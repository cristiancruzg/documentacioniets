using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ViewUsuExt : System.Web.UI.Page
{
    //Instancia de la clase Usuario Externo ya en entidad
    public clUsuarioExterno ado = new clUsuarioExterno();

    public void cargarGrilla()
    {
        gvUsuExt.DataSource = ado.getUsuExt();
        gvUsuExt.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            cargarGrilla();
        }
    }
    //Método que agrega elementos en la grilla
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        USUARIO_EXTERNO nuevoUE = new USUARIO_EXTERNO();
        nuevoUE.DOCUMENTO = txtDocumento.Text.ToUpper();
        nuevoUE.NOMBRE = txtNombre.Text.ToUpper();
        nuevoUE.PERSONA_ENCARGADA = txtPersona.Text.ToUpper();
        nuevoUE.CARGO = txtCargo.Text.ToUpper();
        nuevoUE.DIRECCION = txtDireccion.Text.ToUpper();
        nuevoUE.TELEFONO = txtTelefono.Text.ToUpper();

        if (txtDocumento.Text == "" || txtNombre.Text =="" || txtPersona.Text == "" || txtCargo.Text == "" || txtDireccion.Text == "" || txtTelefono.Text == "" )
        {
            lblValida.Attributes.CssStyle.Add("color", "red");
            lblValida.Text = "Debe ingresar los datos completos en el formulario";
        }
        else
        {
            lblValida.Text = "";
            ado.agregarUsuExt(nuevoUE);
            cargarGrilla();
            lblValida.Attributes.CssStyle.Add("color", "#01DF01");
            lblValida.Text = "Se ha insertado el registro correctamente";
            this.txtDocumento.Text = "";
            this.txtNombre.Text = "";
            this.txtPersona.Text = "";
            this.txtCargo.Text = "";
            this.txtDireccion.Text = "";
            this.txtTelefono.Text = "";
        }
    }
            //Evento de la grilla que cancela cuando se da clic en editar
    protected void rowCancelEditEvent(object sender, GridViewCancelEditEventArgs e)
    {
        gvUsuExt.EditIndex = -1;
        cargarGrilla();
    }
    //Evento de la grilla que elimina una fila en la tabla
    protected void rowDeletingEvent(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(gvUsuExt.DataKeys[e.RowIndex].Values[0]);

        ado.EliminarUsuExt(id);
        gvUsuExt.EditIndex = -1;
        lblValida.Text = "";
        cargarGrilla();
    }
    //Evento de la grilla que edita los elementos de la tabla
    protected void rowEditingEvent(object sender, GridViewEditEventArgs e)
    {
        gvUsuExt.EditIndex = e.NewEditIndex;
        cargarGrilla();
        lblValida.Text = "";
    }
    //Evento de la grilla que actualiza los elementos de la tabla
    protected void rowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow fila = gvUsuExt.Rows[e.RowIndex];
        int id = Convert.ToInt32(gvUsuExt.DataKeys[e.RowIndex].Values[0]);
        string documento = (fila.FindControl("txtDocumento") as TextBox).Text.ToUpper();
        string nombre = (fila.FindControl("txtNombre") as TextBox).Text.ToUpper();
        string persona = (fila.FindControl("txtPersona") as TextBox).Text.ToUpper();
        string cargo = (fila.FindControl("txtCargo") as TextBox).Text.ToUpper();
        string direccion = (fila.FindControl("txtDireccion") as TextBox).Text.ToUpper();
        string telefono = (fila.FindControl("txtTelefono") as TextBox).Text.ToUpper();

        USUARIO_EXTERNO ue = ado.buscarUsuExt(id);
        ue.DOCUMENTO = documento;
        ue.NOMBRE = nombre;
        ue.PERSONA_ENCARGADA = persona;
        ue.CARGO = cargo;
        ue.DIRECCION = direccion;
        ue.TELEFONO = telefono;

        ado.ActualizarUsuExt(ue);

        gvUsuExt.EditIndex = -1;
        cargarGrilla();

    }
    //Paginación
    protected void gvUsuExt_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvUsuExt.PageIndex = e.NewPageIndex;
        cargarGrilla();
    }

}