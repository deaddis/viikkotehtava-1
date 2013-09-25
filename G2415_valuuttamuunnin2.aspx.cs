using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class G2415_valuuttamuunnin2 : System.Web.UI.Page
{
    string nimi, apu;
        float muuntomaara;
       

        protected void Page_Load(object sender, EventArgs e)
        {

            txtNimi.Text = null; // Null bugikorjaus

            nimi = Request.QueryString["user"];
            txtNimi.Text = nimi;

            if (Request.Cookies["keksimuuttuja"] != null)
            {
                nimi = Server.HtmlEncode(Request.Cookies["keksimuuttuja"].Value);
                txtNimi.Text = nimi;
                Response.Cookies["keksimuuttuja"].Expires = DateTime.Now.AddDays(-1); // "Tuhoaa" keksin expiraamalla sen
            }

            if ((string)(Session["sessiomuuttuja"]) != null)
            {
                nimi = (string)(Session["sessiomuuttuja"]);
                txtNimi.Text = nimi;
                (Session["sessiomuuttuja"]) = null;
            }

        }

        protected void btnMuunna_Click(object sender, EventArgs e)
        {
            apu = txtNimi.Text;
            muuntomaara = 0;
            muuntomaara = Int32.Parse(txtMarkat.Text);
            muuntomaara = muuntomaara / 5.74F;
            txtEurot.Text = muuntomaara.ToString();
        }
}
