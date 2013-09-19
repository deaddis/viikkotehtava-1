using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class g2415_viikkotehtava2 : System.Web.UI.Page
{
    private const float BitCoinRate = 94.71F;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnConvert_Click(object sender, EventArgs e)
    {
         //muunnetaan käyttäjän  antamat BitCoinit Euroiksi
        lblCurrency.Text = string.Format("{0:0.0000} euroa", float.Parse(txtCurrency.Text) * BitCoinRate);
        //näytetään suoritetut laskutoimitukset listboxissa
        LstOne.Items.Add(txtCurrency.Text + "-->" + lblCurrency.Text);
        LstTwo.Items.Add(txtCurrency.Text + "-->" + lblCurrency.Text);


    }
}