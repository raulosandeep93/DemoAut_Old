using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CodeProject : System.Web.UI.Page
{
    string google = "http://www.google.com";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MainView.ActiveViewIndex = 0;
        }
    }

    protected void NewTab_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 0;
    }

    protected void NewWindow_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 1;

    }

    protected void MultipleWindow_Click(object sender, EventArgs e)
    {

        MainView.ActiveViewIndex = 2;
    }

    protected void lbNewTab_Click(object sender, EventArgs e)
    {
        Response.Write("<script> window.open('" + google + "','_blank'); </script>");
    }

    protected void lbNewWindow_Click(object sender, EventArgs e)
    {
        string g = "window.open('" + google + "', 'popup_window', 'width=1024,height=768,left=100,top=100,resizable=yes');";
        ClientScript.RegisterStartupScript(this.GetType(), "script", g, true);
    }
}