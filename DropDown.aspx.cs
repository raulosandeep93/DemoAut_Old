using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class DropDown : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    String FetchState = "Select StateId,StateName from State";
    String FetchCity = "Select CityId,CityName from City WHERE StateId=@SId";

    SqlConnection conn;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MainView.ActiveViewIndex = 0;

            using (conn = new SqlConnection(CS))
            {
                ddlState.AppendDataBoundItems = true;

                SqlCommand sc = new SqlCommand(FetchState, conn);

                conn.Open();

                SqlDataReader sdr = sc.ExecuteReader();
                ddlState.DataSource = sdr;
                ddlState.DataTextField = "StateName";
                ddlState.DataValueField = "StateId";
                ddlState.DataBind();

                conn.Close();
            }
        }
    }

    protected void StaticDropDown_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 0;
    }

    protected void DynamicDropDown_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 1;
    }

    protected void MultipleSelect_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 2;
    }

    protected void ddlStaticDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblStaticDropDown.Text = "You have selected '" + ddlStaticDropDown.SelectedItem.Text.ToString() + "'.";
    }

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlCity.Items.Clear();
        ddlCity.Items.Add(new ListItem("--Select City--", ""));
        ddlCity.AppendDataBoundItems = true;

        String strConnString = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

        String strQuery = "select CityId, CityName from City where StateId=@StateId";
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.AddWithValue("@StateId", ddlState.SelectedItem.Value);
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strQuery;
        cmd.Connection = con;
        try
        {
            con.Open();
            ddlCity.DataSource = cmd.ExecuteReader();
            ddlCity.DataTextField = "CityName";
            ddlCity.DataValueField = "CityId";
            ddlCity.DataBind();
            if (ddlCity.Items.Count > 1)
            {
                ddlCity.Enabled = true;
            }
            else
            {
                ddlCity.Enabled = false;
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }

    //protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    lblStateCity.Text = "You have Selected " + ddlState.SelectedItem.Text + " --- " + ddlCity.SelectedItem.Text;
    //}

    protected void MultipleSelect_OnClick(object sender, EventArgs e)
    {
        string message = "";
        string pleaseSelect = "Please select an option.";
        foreach (ListItem item in lbMultipleSelect.Items)
        {
            if (item.Selected)
            {
                message += item.Text + " " + "\\n";
            }
        }

        if (message == "")
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + pleaseSelect + "');", true);
        }
        else
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + message + "');", true);
        }


    }
    protected void btnSelection_Click(object sender, EventArgs e)
    {
        lblStateCity.Text = "You have Selected " + ddlState.SelectedItem.Text + " >>> " + ddlCity.SelectedItem.Text;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        ddlState.SelectedIndex = 0;
        ddlCity.SelectedIndex = 0;
        ddlCity.Enabled = false;
        lblStateCity.Text = "";
    }
}