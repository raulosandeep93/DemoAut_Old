using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class SignUp : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    String CheckUserAvailability = "Select count(*) from MemberDetails where EmailId=@EmailId";
    String AddUser = "Insert into MemberDetails(Name,EmailId,MobileNumber,Gender,Pwd) values(@Name,@EmailId,@MobileNumber,@Gender,@Password)";

    SqlConnection conn;
    SqlCommand sc;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (conn = new SqlConnection(CS))
        {
            sc = new SqlCommand(CheckUserAvailability, conn);
            sc.Parameters.AddWithValue("@EmailId", txtEmailId.Text);

            conn.Open();

            int UserCount = (int)sc.ExecuteScalar();
            //Response.Write("User Count" + UserCount);

            if (UserCount == 0)
            {
                using (conn = new SqlConnection(CS))
                {
                    sc = new SqlCommand(AddUser, conn);
                    sc.Parameters.AddWithValue("@Name", txtName.Text);
                    sc.Parameters.AddWithValue("@EmailId", txtEmailId.Text);
                    sc.Parameters.AddWithValue("@MobileNumber", txtMobileNumber.Text);

                    if (rblGender.SelectedValue.Equals("Male"))
                        sc.Parameters.AddWithValue("@Gender", "M");
                    else if (rblGender.SelectedValue.Equals("Female"))
                        sc.Parameters.AddWithValue("@Gender", "F");

                    sc.Parameters.AddWithValue("@Password", txtPassword.Text);

                    conn.Open();
                    int insertCount = sc.ExecuteNonQuery();
                    //Response.Write("Insert Count" + insertCount);
                    if (insertCount == 1)
                    {
                        lblSuccess.Visible = true;
                        lblSuccess.Text = "Registration Successful. Please login and start exploring more.";

                        txtName.Text = "";
                        txtEmailId.Text = "";
                        txtPassword.Text = "";
                        txtMobileNumber.Text = "";
                        rblGender.ClearSelection();
                    }
                }
            }
            else if(UserCount == 1)
            {
                lblError.Visible = true;
                lblError.Text = "You are already registered. please login and start exploring more.";
            }
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmailId.Text = "";
        txtPassword.Text = "";
        txtMobileNumber.Text = "";
        rblGender.ClearSelection();
    }
}
