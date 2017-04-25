using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Views_buesquedaantiguos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    public DataTable llenar_grilla(string dato)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("BUSCARRE", conexion.conexionbd());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@yy", SqlDbType.NVarChar).Value = dato;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }
        finally { conexion.cerrarconexion(); }


    }

    public DataTable grillasalida(string dato)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("consultadocsalida", conexion.conexionbd());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@var", SqlDbType.NVarChar).Value = dato;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);
            return dt;

        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }
        finally { conexion.cerrarconexion(); }


    }

    public DataTable buscarfechasalida(string inicial, string final)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("consultadocsalidafecha", conexion.conexionbd());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@finicio", SqlDbType.NVarChar).Value = inicial;
            cmd.Parameters.Add("@ffinal ", SqlDbType.NVarChar).Value = final;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }


    }

    public DataTable buscarfechaentrada(string inicial, string final)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("consultadocsalidafecha", conexion.conexionbd());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@finicio", SqlDbType.NVarChar).Value = inicial;
            cmd.Parameters.Add("@ffinal ", SqlDbType.NVarChar).Value = final;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }


    }


    //enventos de los botones
    protected void btnbuscar_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = llenar_grilla(this.txtasunto.Text.Trim());
        gvbusquedas.DataBind();
    }

    protected void btnenviado_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = grillasalida(this.txtenviado.Text.Trim());
        gvbusquedas.DataBind();
    }

    protected void btnasuntosalida_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = grillasalida(this.txtasuntosalida.Text.Trim());
        gvbusquedas.DataBind();
    }

    protected void btndirigido_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = grillasalida(this.txtdirigido.Text.Trim());
        gvbusquedas.DataBind();

    }

    protected void btnfecha_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = buscarfechaentrada(this.txtinicial.Text.Trim(), this.txtfinal.Text.Trim());
        gvbusquedas.DataBind();
    }

    protected void Btnradicado_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = llenar_grilla(this.txtradicado.Text.Trim());
        gvbusquedas.DataBind();
    }

    protected void btnradsalida_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = grillasalida(this.txtradsalida.Text.Trim());
        gvbusquedas.DataBind();
    }

    protected void btntipsalida_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = grillasalida(this.txtipsalida.Text.Trim());
        gvbusquedas.DataBind();

    }
    //fehca de salida
    protected void Button1_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = buscarfechasalida(this.txtiniciosalida.Text.Trim(), this.txfinalsalida.Text.Trim());
        gvbusquedas.DataBind();

    }

    protected void btnfirma_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = grillasalida(this.txtfirma.Text.Trim());
        gvbusquedas.DataBind();

    }

    protected void btntipodoc_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = llenar_grilla(this.txtti_doc.Text.Trim());
        gvbusquedas.DataBind();
    }
}
