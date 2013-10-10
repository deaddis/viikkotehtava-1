using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class g2415_OjPalaute : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtboxDate.Text = DateTime.Now.Day + "." + DateTime.Now.Month + "." + DateTime.Now.Year;
    }


    XDocument Palaute;


    protected void Button1_Click(object sender, EventArgs e)
    {


        try
        {
        Palaute = XDocument.Load(ConfigurationManager.AppSettings["Palaute"]);

                    Palaute.Root.Add(new XElement("Palaute",
                    new XElement("Name",txtboxName.Text),
                        new XElement("Date", txtboxDate.Text),
                        new XElement("Learned", txtboxLearned.Text),
                        new XElement("WantToLearn",txtboxWantToLearn.Text),
                        new XElement("Good",txtboxGood.Text),
                        new XElement("Improve",txtboxImprove.Text),
                        new XElement("Else",txtboxElse.Text)
            )
        );
        Palaute.Save(ConfigurationManager.AppSettings["Palaute"]);
        }
        catch
        {
            Palaute = new XDocument(
                    new XElement("Palaute",
                    new XElement("Name",txtboxName.Text),
                        new XElement("Date", txtboxDate.Text),
                        new XElement("Learned", txtboxLearned.Text),
                        new XElement("WantToLearn",txtboxWantToLearn.Text),
                        new XElement("Good",txtboxGood.Text),
                        new XElement("Improve",txtboxImprove.Text),
                        new XElement("Else",txtboxElse.Text)
                )
                );

            Palaute.Save(ConfigurationManager.AppSettings["Palaute"]);
        }
    }

    protected void getPalaute_Click(object sender, EventArgs e)
    {
        outPut.Text = File.ReadAllText(ConfigurationManager.AppSettings["Palaute"]);
    }
}