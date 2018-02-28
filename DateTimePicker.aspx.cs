using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DateTimePicker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MainView.ActiveViewIndex = 0;

            cServerCalender.Visible = false;
        }
    }

    protected void ServerSideDateTimePicker_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 0;
    }

    protected void ClientSideDateTimePicker_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 1;
    }

    protected void ibServerCalender_Click(object sender, EventArgs e)
    {
        if (cServerCalender.Visible)
            cServerCalender.Visible = false;
        else if (cServerCalender.Visible == false)
            cServerCalender.Visible = true;
    }

    protected void cServerCalender_SelctionChanged(object sender, EventArgs e) {
        txtServerDate.Text = cServerCalender.SelectedDate.ToShortDateString().ToString();
        cServerCalender.Visible = false;
    }

    protected void cServerCalender_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth || e.Day.IsWeekend)
            e.Day.IsSelectable = false;
    }
}