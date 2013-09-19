using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = "Tänään on: " + DateTime.Now;
        fart();
    }

    void fart()
    {
        Calendar cal = ((Calendar)ContentPlaceHolder1.FindControl("Calendar"));
        lblSelectedDate.Text = "The selected date is " + cal.SelectedDate.ToShortDateString();
    }
}
