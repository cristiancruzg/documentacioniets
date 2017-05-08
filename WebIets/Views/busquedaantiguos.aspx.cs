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
    DataTable dtentrada = new DataTable();
    DataTable dtsalida = new DataTable();



    protected void Page_Load(object sender, EventArgs e)
    {
       
       
    }

    public void  llenar_grilla(string dato)
    {
        try
        {
           
            SqlCommand cmd = new SqlCommand("BUSCARRE", conexion.conexionbd());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@yy", SqlDbType.NVarChar).Value = dato;
            cmd.ExecuteNonQuery();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dtentrada);
            gvbusquedas.DataSource = dtentrada;
            Session["entrada"] = dtentrada;
            gvbusquedas.DataBind();



            //return dtentrada;
        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }
        finally { conexion.cerrarconexion(); }


    }

    public void grillasalida(string dato)
    {
        try
        {
           
            SqlCommand cmd = new SqlCommand("consultadocsalida", conexion.conexionbd());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@var", SqlDbType.NVarChar).Value = dato;
            cmd.ExecuteNonQuery();
            
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dtsalida);
           

            gvsalida.DataSource = dtsalida;
            Session["salida"] = dtsalida;
            gvsalida.DataBind();
           



        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }
        finally { conexion.cerrarconexion(); }


    }
    public void cargagvbusqueda()
    {

        gvbusquedas.DataSource = Session["entrada"];
        gvbusquedas.DataBind();


    }

    public void cargagvsalida()
    {
        gvsalida.DataSource = Session["salida"] ;
        gvsalida.DataBind();
    }

    public void buscarfechasalida(string inicial, string final)
    {
        try
        {
            
            SqlCommand cmd = new SqlCommand("consultadocsalidafecha", conexion.conexionbd());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@finicio", SqlDbType.NVarChar).Value = inicial;
            cmd.Parameters.Add("@ffinal ", SqlDbType.NVarChar).Value = final;
            cmd.ExecuteNonQuery();
          
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dtsalida);

            gvsalida.DataSource = dtsalida;
            Session["salida"] = dtsalida;
            gvsalida.DataBind();

        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }


    }

    public void buscarfechaentrada(string inicial, string final)
    {
        try
        {
            
            SqlCommand cmd = new SqlCommand("consultadocsalidafecha", conexion.conexionbd());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@finicio", SqlDbType.NVarChar).Value = inicial;
            cmd.Parameters.Add("@ffinal ", SqlDbType.NVarChar).Value = final;
            cmd.ExecuteNonQuery();
            
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dtentrada);
            gvbusquedas.DataSource = dtentrada;
            Session["entrada"] = dtentrada;
            gvbusquedas.DataBind();


        }
        catch (Exception ex)
        {

            throw new ArgumentException(ex.Message);
        }


    }


    //enventos de los botones
    protected void btnbuscar_Click(object sender, EventArgs e)
    {
         llenar_grilla(this.txtasunto.Text.Trim());
        
        
        gvsalida.Visible = false;
    }

    protected void btnenviado_Click(object sender, EventArgs e)
    {
        
        grillasalida(this.txtenviado.Text.Trim());
        gvsalida.DataBind();
        gvbusquedas.Visible = false;
    }

    protected void btnasuntosalida_Click(object sender, EventArgs e)
    {
         grillasalida(this.txtasuntosalida.Text.Trim());
        
        
        gvbusquedas.Visible = false;
    }

    protected void btndirigido_Click(object sender, EventArgs e)
    {
         llenar_grilla(this.txtdirigido.Text.Trim());
        
        
        gvsalida.Visible = false;

    }

    protected void btnfecha_Click(object sender, EventArgs e)
    {
       buscarfechaentrada(this.txtinicial.Text.Trim(), this.txtfinal.Text.Trim());
        
       
        gvsalida.Visible = false;
    }

    protected void Btnradicado_Click(object sender, EventArgs e)
    {
       llenar_grilla(this.txtradicado.Text.Trim());
        
        
        gvsalida.Visible = false;
    }

    protected void btnradsalida_Click(object sender, EventArgs e)
    {
        grillasalida(this.txtradsalida.Text.Trim());
        
       
        gvbusquedas.Visible = false;
    }

    protected void btntipsalida_Click(object sender, EventArgs e)
    {
        grillasalida(this.txtipsalida.Text.Trim());
       
        
        gvbusquedas.Visible = false;

    }
    //fehca de salida
    protected void Button1_Click(object sender, EventArgs e)
    {
         buscarfechasalida(this.txtiniciosalida.Text.Trim(), this.txfinalsalida.Text.Trim());
        
        
        gvbusquedas.Visible = false;

    }

    protected void btnfirma_Click(object sender, EventArgs e)
    {
         grillasalida(this.txtfirma.Text.Trim());
        
        
        gvbusquedas.Visible = false;

    }

    protected void btntipodoc_Click(object sender, EventArgs e)
    {
        llenar_grilla(this.txtti_doc.Text.Trim());
       
        
        gvsalida.Visible = false;
    }



    protected void gvbusquedas_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvbusquedas.PageIndex = e.NewPageIndex;
        cargagvbusqueda();
        
    }

    protected void gvsalida_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvsalida.PageIndex = e.NewPageIndex;
        cargagvsalida();
               
    }
}
