using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class G2415_valuuttamuunnin : System.Web.UI.Page
{
    string nimi;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnKeksi_Click(object sender, EventArgs e)
    {
        nimi = txtNimi.Text;
        Response.Cookies["keksimuuttuja"].Value = nimi;
        Response.Cookies["keksimuuttuja"].Expires = DateTime.Now.AddDays(1);
        Server.Transfer("G2415_Valuuttamuunnin2.aspx");
    }
    protected void btnSession_Click(object sender, EventArgs e)
    {
        Session["sessiomuuttuja"] = txtNimi.Text;
        Server.Transfer("G2415_Valuuttamuunnin2.aspx");
    }

    protected void btnParameter_Click(object sender, EventArgs e)
    {
        nimi = txtNimi.Text;
        //apu = Request.QueryString["user"];
        Response.Redirect("G2415_Valuuttamuunnin2.aspx?" + "user=" + nimi);
    }
}