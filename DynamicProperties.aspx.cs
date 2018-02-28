using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TextBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MainView.ActiveViewIndex = 0;
        }

        Random random = new Random();

        txt01.ID = "txt" + random.Next(1, 100);
        btn01.ID = "btn" + random.Next(1, 100);
        lbl01.ID = "lbl" + random.Next(1, 100);

        txt02.ID = random.Next(1, 100) + "txt";
        btn02.ID = random.Next(1, 100) + "btn";
        lbl02.ID = random.Next(1, 100) + "lbl";

        txt03.ID = Guid.NewGuid().ToString().Substring(0, 8);
        btn03.ID = Guid.NewGuid().ToString().Substring(0, 8);
        lbl03.ID = Guid.NewGuid().ToString().Substring(0, 8);
    }

    protected void StartsWithTextBoxButtonLabel_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 0;
    }

    protected void EndsWithTextBoxButtonLabel_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 1;
    }

    protected void RandomTextBoxButtonLabel_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 2;
    }
}