﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class G2415_age : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = "Tänään on: " + DateTime.Now;
    }

    public void fart(object sender, EventArgs e)
    {
        Calendar cal = ((Calendar)FindControl("Calendar"));
        lblSelectedDate.Text = "The selected date is " + cal.SelectedDate.ToShortDateString();
    }
}