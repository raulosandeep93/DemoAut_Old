using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (MailMessage mm = new MailMessage(txtEmailId.Text, "seleniumhub93@gmail.com"))
        {
            mm.Subject = ddlChoice.SelectedItem.ToString();
            mm.Body = txtMessage.Text;

            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;

            NetworkCredential NetworkCred = new NetworkCredential();
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;

            try
            {
                smtp.Send(mm);
                lblStatus.Visible = true;
                lblStatus.Text = "Thank you for your response. We will get back to you at the earliest.";
            }
            catch (Exception e1)
            {
                lblStatus.Visible = true;
                lblStatus.Text = e1.Message;
            }
        }
    }
}