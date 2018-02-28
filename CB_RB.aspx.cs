using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MainView.ActiveViewIndex = 0;
        }
    }

    protected void CB_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 0;
    }

    protected void RB_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 1;

    }

   
    protected void btnCB_Click(object sender, EventArgs e)
    {
 
    }
}