using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ViewUsuario : System.Web.UI.Page
{
    //Instancias de las clases que se van a usar en esta vista
    private clUsuario adoUsuario = new clUsuario();
    private clTipoAcceso adoTipoAcceso = new clTipoAcceso();

    private void cargaGrillaUsuario()
    {
        gvUsuarios.DataSource = adoUsuario.getUsuarios();
        gvUsuarios.DataBind();
    }
    //Cargar lista de los datos del campo Nombre Tipo Acceso 
    private void cargarListaTipoAcceso()
    {
        cmbTipoAcceso.DataSource = adoTipoAcceso.getTipoAcceso();
        //Campo que se va a traer de la tabla TipoAcceso
        cmbTipoAcceso.DataTextField = "NOMBRE_TIPO_ACCESO";
        //Identificador por el cuál se traen los datos de la tabla TipoAcceso
        cmbTipoAcceso.DataValueField = "ID_TIPO_ACCESO";
        cmbTipoAcceso.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarListaTipoAcceso();
            cargaGrillaUsuario();
        }
    }
    protected void btnAddUser_Click(object sender, EventArgs e)
    {
        TIPO_ACCESO ta = adoTipoAcceso.buscarTipoAcceso(Convert.ToInt32(cmbTipoAcceso.SelectedValue));
        USUARIOS us = new USUARIOS();
        //Campos propios de la tabla usuarios
        us.NOMBRE = txtNombreUsuario.Text.ToUpper();
        us.ESTADO = checkEstado.Checked;
        //Asociación entre las llaves primarias y foraneas de la tabla tipo de acceso
        us.ID_TIPO_ACCESO_FK = ta.ID_TIPO_ACCESO;
       

        if (txtNombreUsuario.Text == "")
        {
            lblValida.Attributes.CssStyle.Add("color", "red");
            lblValida.Text = "Ingrese nombre de usuario";
        }
        else
        {
            lblValida.Text = "";
            //Ingreso usuario
            ta.USUARIOS.Add(us);
            adoUsuario.agregarUsuario(us);
            cargaGrillaUsuario();
            lblValida.Attributes.CssStyle.Add("color", "#01DF01");
            lblValida.Text = "Se ha insertado el registro correctamente";
            this.txtNombreUsuario.Text = "";
        }
    }
    //Evento de la grilla que elimina una fila en la tabla
    protected void RowDeletingEvent(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(gvUsuarios.DataKeys[e.RowIndex].Values[0]);

        adoUsuario.EliminarUsuario(id);
        gvUsuarios.EditIndex = -1;
        lblValida.Text = "";
        cargaGrillaUsuario();
    }
    //Evento de la grilla que edita los elementos de la tabla
    protected void RowEditingEvent(object sender, GridViewEditEventArgs e)
    {
        gvUsuarios.EditIndex = e.NewEditIndex;
        cargaGrillaUsuario();
        lblValida.Text = "";
    }
    //Evento de la grilla que actualiza los elementos de la tabla
    protected void RowUpdatingEvent(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow fila = gvUsuarios.Rows[e.RowIndex];

        int id = Convert.ToInt32(gvUsuarios.DataKeys[e.RowIndex].Values[0]);
        string nombre = (fila.FindControl("txtNombreUsuario") as TextBox).Text.ToUpper();
        bool estado = (fila.FindControl("chk2") as CheckBox).Checked;
        int id_tipo_acceso = Convert.ToInt32((fila.FindControl("cmbTa") as DropDownList).SelectedValue);

        USUARIOS us = adoUsuario.buscarUsuario(id);
        TIPO_ACCESO ta = adoTipoAcceso.buscarTipoAcceso(id_tipo_acceso);

        us.NOMBRE = nombre;
        us.ESTADO = estado;
        us.ID_TIPO_ACCESO_FK = id_tipo_acceso;
        ta.USUARIOS.Add(us);

        adoUsuario.ActualizarUsuario(us);

        gvUsuarios.EditIndex = -1;
        lblValida.Text = "";
        cargaGrillaUsuario();
    }
    //Evento de la grilla que cancela cuando se da clic en editar
    protected void RowCancelingEvent(object sender, GridViewCancelEditEventArgs e)
    {
        gvUsuarios.EditIndex = -1;
        cargaGrillaUsuario();
    }
    //Evento de la grilla que llena el DropDownList cuando se da clic en editar
    protected void RowDataboundEvent(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex == gvUsuarios.EditIndex)
        {
            DropDownList lista = e.Row.FindControl("cmbTa") as DropDownList;
            lista.DataSource = adoTipoAcceso.getTipoAcceso();
            lista.DataTextField = "NOMBRE_TIPO_ACCESO";
            lista.DataValueField = "ID_TIPO_ACCESO";
            lista.DataBind();
        }
    }
    //Paginación
    protected void gvUsuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvUsuarios.PageIndex = e.NewPageIndex;
        cargaGrillaUsuario();
    }
}