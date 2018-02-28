using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Frame03 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbPizza_Click(object sender, ImageClickEventArgs e)
    {
        
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('TrIVIA - 3 Billion pizzas are served in US every year.')", true);
    }
}