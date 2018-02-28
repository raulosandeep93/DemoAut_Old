using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Frame02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbBurger_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void lbFF_Click(object sender, ImageClickEventArgs e)
    {
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('TRIVIA - Origin of french fries is not France but Belgium.')", true);
    }
}