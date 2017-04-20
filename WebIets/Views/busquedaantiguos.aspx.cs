﻿using System;
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

            throw new ArgumentException(ex.Message) ;
        }
        finally { conexion.cerrarconexion(); }


    }


    protected void btnbuscar_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource= llenar_grilla(this.txtasunto.Text.Trim());
        gvbusquedas.DataBind();
    }

    protected void btnenviado_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = grillasalida(this.txtasuntosalida.Text.Trim());
        gvbusquedas.DataBind();
    }


    protected void btnasuntosalida_Click(object sender, EventArgs e)
    {
        gvbusquedas.DataSource = grillasalida(this.txtasuntosalida.Text.Trim());
        gvbusquedas.DataBind();
    }
}