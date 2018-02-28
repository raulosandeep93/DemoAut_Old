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

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String success = "Registration Successful.";
        String uploadFile = "Please select a file to upload.";
        String sizeError = "File size should be less then 100Kb";
        String docFormat = "File type should be .doc/.docx";

        String fileExtension = System.IO.Path.GetExtension(fuUpload.FileName);
        int fileSize = fuUpload.PostedFile.ContentLength;

        if (fuUpload.HasFile)
        {
            if (fileExtension.ToLower() == ".doc" || fileExtension.ToLower() == ".docx")
            {
                if (fileSize <= 102400)
                {
                    fuUpload.SaveAs(Server.MapPath("~/RegistrationUploads/" + fuUpload.FileName));
                    if (Response.StatusCode == 404 && Response.SubStatusCode == 13)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + sizeError + "');", true);
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + success + "');", true);
                        txtFirstName.Text = "";
                        txtLastName.Text = "";
                        txtEmailId.Text = "";
                        txtMobileNumber.Text = "";
                        txtAddress.Text = "";
                        rblGender.ClearSelection();
                        cblSkills.ClearSelection();
                        ddlYearOfExperience.SelectedIndex = 0;
                    }
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + sizeError + "');", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + docFormat + "');", true);
            }
        }
        else
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + uploadFile + "');", true);
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtEmailId.Text = "";
        txtMobileNumber.Text = "";
        txtAddress.Text = "";
        rblGender.ClearSelection();
        cblSkills.ClearSelection();
        ddlYearOfExperience.SelectedIndex = 0;
    }
}