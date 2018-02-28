using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    String CheckUserAvailability = "Select Pwd from MemberDetails where EmailId=@EmailId";

    SqlConnection conn;
    SqlCommand sc;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (conn = new SqlConnection(CS))
        {
            sc = new SqlCommand(CheckUserAvailability, conn);
            sc.Parameters.AddWithValue("@EmailId", txtEmailId.Text);

            conn.Open();

            String Password = (String)sc.ExecuteScalar();

            if (Password.Equals(txtPassword.Text))
            {
                Response.Redirect("~/HomePage.aspx");
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Invalid EmailId/Password.";

                txtEmailId.Text = "";
                txtPassword.Text = "";
            }
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {

    }
}