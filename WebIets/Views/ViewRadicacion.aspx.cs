using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_ViewRadicacion : System.Web.UI.Page
{
    //Instancias de las clases que se van a usar en esta vista
    private clRadicacion adoRadicacion = new clRadicacion();
    private clUsuario adoUsuario = new clUsuario();
    private clUsuarioExterno adoUsuExt = new clUsuarioExterno();
    private clDependencia adoDependencia = new clDependencia();
    private clTipoDocumento adoTipoDoc = new clTipoDocumento();
    private clAnexo adoAnexo = new clAnexo();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtFecha.Text = DateTime.Now.ToString();
            cargarRadicacion();
            cargarListas();
        }
    }
    private void limpiar() {
        txtDocUsuExt.Text = "";
        txtNombreUsuExt.Text = "";
        txtPersonaEncargada.Text = "";
        txtCargo.Text = "";
        txtDireccion.Text = "";
        txtTelefono.Text = "";
        txtAsunto.Text = "";
        txtFecha.Text = "";
        txtFolios.Text = "";
        txtCantAnexos.Text = "";
    }
    private void cargarRadicacion()
    {
        gvradica.DataSource = adoRadicacion.getRadicacion();
        gvradica.DataBind();
    }
    //Cargar lista de los datos de las tablas externas a radicación
    private void cargarListas()
    {
        //Cargar Lista Usuario
        cmbUsuario.DataSource = adoUsuario.getUsuarios();
        cmbUsuario.DataTextField = "NOMBRE";
        cmbUsuario.DataValueField = "ID_USUARIO";
        cmbUsuario.DataBind();

        //Cargar Lista Dependencia
        cmbDependencia.DataSource = adoDependencia.getDependencia();
        cmbDependencia.DataTextField = "NOMBRE_DEPENDENCIA";
        cmbDependencia.DataValueField = "ID_DEPENDENCIA";
        cmbDependencia.DataBind();

        //Cargar Lista Tipo Documento
        cmbTipoDoc.DataSource = adoTipoDoc.getTipoDoc();
        cmbTipoDoc.DataTextField = "NOMBRE_TIPO_DOC";
        cmbTipoDoc.DataValueField = "ID_TIPO_DOC";
        cmbTipoDoc.DataBind();

        //Cargar Lista Anexo
        cmbAnexo.DataSource = adoAnexo.getAnexo();
        cmbAnexo.DataTextField = "NOMBRE_ANEXO";
        cmbAnexo.DataValueField = "ID_ANEXO";
        cmbAnexo.DataBind();
    }
    protected void btnAddRad_Click(object sender, EventArgs e)
    {
        //Añadir listas
        USUARIOS us = adoUsuario.buscarUsuario(Convert.ToInt32(cmbUsuario.SelectedValue));
        DEPENDENCIA de = adoDependencia.buscarDependencia(Convert.ToInt32(cmbDependencia.SelectedValue));
        TIPO_DOCUMENTOS tp = adoTipoDoc.buscarTipoDoc(Convert.ToInt32(cmbTipoDoc.SelectedValue));
        ANEXOS an = adoAnexo.buscarAnexo(Convert.ToInt32(cmbAnexo.SelectedValue));
        //Añadir campos usuario externo
        USUARIO_EXTERNO usEx = new USUARIO_EXTERNO();
        usEx.DOCUMENTO = txtDocUsuExt.Text.ToUpper();
        usEx.NOMBRE = txtNombreUsuExt.Text.ToUpper();
        usEx.PERSONA_ENCARGADA = txtPersonaEncargada.Text.ToUpper();
        usEx.CARGO = txtCargo.Text.ToUpper();
        usEx.DIRECCION = txtDireccion.Text.ToUpper();
        usEx.TELEFONO = txtTelefono.Text.ToUpper();

        if (txtDocUsuExt.Text == "" || txtNombreUsuExt.Text == "" || txtPersonaEncargada.Text == "" || txtCargo.Text == "" || txtDireccion.Text == "" ||
            txtTelefono.Text == "" || txtAsunto.Text == "" || txtFecha.Text == "" || txtFolios.Text == "" || txtCantAnexos.Text == "")
        {
            lblValida.Attributes.CssStyle.Add("color", "red");
            lblValida.Text = "Debe ingresar los datos completos en el formulario";
        }
        else
        {
            //Añadir campos radicacion
            RADICACIONES ra = new RADICACIONES();
            ra.ASUNTO = txtAsunto.Text.ToUpper();
            ra.FECHA = DateTime.Parse(txtFecha.Text);
            ra.FOLIOS = int.Parse(txtFolios.Text.ToUpper());
            ra.CANTIDAD_ANEXOS = int.Parse(txtCantAnexos.Text.ToUpper());
            //Asociación entre las llaves primarias y foraneas de la tabla radicaciones
            ra.ID_USUARIOS_FK = us.ID_USUARIOS;
            ra.ID_USUARIO_EXT_FK = usEx.ID_USUARIO_EXT;
            ra.ID_DEPENDENCIA_FK = de.ID_DEPENDENCIA;
            ra.ID_TIPO_DOC = tp.ID_TIPO_DOC;
            ra.ID_ANEXO_FK = an.ID_ANEXO;
            //Creacion del usuario externo desde radicacion
            adoUsuExt.agregarUsuExt(usEx);
            usexid.Text = " " + (usEx.ID_USUARIO_EXT);
            ra.ID_USUARIO_EXT_FK = int.Parse(usexid.Text.ToUpper());
            //Adjuntar atributos al objeto radicacion
            us.RADICACIONES.Add(ra);
            adoRadicacion.crearRadicacion(ra);
            cargarRadicacion();
            limpiar();
            lblValida.Text = "";
            lblValida.Attributes.CssStyle.Add("color", "#01DF01");
            lblValida.Text = "Se ha insertado el registro correctamente";
            txtFecha.Text = DateTime.Now.ToString();       
        }
    }
    protected void Paginacion(object sender, GridViewPageEventArgs e)
    {
        gvradica.PageIndex = e.NewPageIndex;
        cargarRadicacion();
    }

    protected void btnBuscRad_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewConsultaRadicados.aspx");
    }
}
