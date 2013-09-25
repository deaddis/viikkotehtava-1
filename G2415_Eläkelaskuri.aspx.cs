using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class G2415_Eläkelaskuri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int ika = Convert.ToInt32(TextBox1.Text);
        ika++;
        TextBox1.Text = Convert.ToString(ika);

        int mani = Convert.ToInt32(TextBox2.Text);

        double vanhuus = (0.5 * mani) - (63 - ika) * 5.5;

        TextBox3.Text = Convert.ToString(vanhuus);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int ika = Convert.ToInt32(TextBox1.Text);
        ika--;
        TextBox1.Text = Convert.ToString(ika);

        int mani = Convert.ToInt32(TextBox2.Text);

        double vanhuus = (0.5 * mani) - (63 - ika) * 5.5;

        TextBox3.Text = Convert.ToString(vanhuus);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int mani = Convert.ToInt32(TextBox2.Text);
        mani--;
        TextBox2.Text = Convert.ToString(mani);

        int ika = Convert.ToInt32(TextBox1.Text);

        double vanhuus = (0.5 * mani) - (63 - ika) * 5.5;

        TextBox3.Text = Convert.ToString(vanhuus);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int mani = Convert.ToInt32(TextBox2.Text);
        mani++;
        TextBox2.Text = Convert.ToString(mani);

        int ika = Convert.ToInt32(TextBox1.Text);

        double vanhuus = (0.5 * mani) - (63 - ika) * 5.5;

        TextBox3.Text = Convert.ToString(vanhuus);
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        int ika = Convert.ToInt32(TextBox1.Text);
        int mani = Convert.ToInt32(TextBox2.Text);

        double vanhuus = (0.5 * mani) - (63 - ika) * 5.5;

        TextBox3.Text = Convert.ToString(vanhuus);
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        int ika = Convert.ToInt32(TextBox1.Text);
        int mani = Convert.ToInt32(TextBox2.Text);

        double vanhuus = (0.5 * mani) - (63 - ika) * 5.5;

        TextBox3.Text = Convert.ToString(vanhuus);
    }
}