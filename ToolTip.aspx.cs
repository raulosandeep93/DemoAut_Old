﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ToolTip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MainView.ActiveViewIndex = 0;
        }
    }

    protected void ToolTip_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 0;
    }
}