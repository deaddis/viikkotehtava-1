using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class g2415_ISrss : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetNews_Click(object sender, EventArgs e)
    {
        GetFeedsFrom("Uutiset");
    }

    protected void GetFeedsFrom(string FeedSource)
    {
        string url = "";
        switch (FeedSource)
        {
            case "Uutiset":
                url = ConfigurationManager.AppSettings["rssfeeditIS"];
                break;
            default:
                break;
        }
        //kokeillaas tuleeko oikeasta osoitteesta
        lblBody.Text = url;

        //luetaan XML XmlDocument-olioon'
        XmlDocument doc = new XmlDocument();
        myDataSource.DataFile = url;
        doc = myDataSource.GetXmlDocument();
        //1 vaihe: luetaan channelin title
        XmlNode node = doc.SelectSingleNode("/rss/channel");
        string otsikko = node["title"].InnerText;
        lblHeader.Text = otsikko;
        //2 vaihe: loopataan item-noodit
        XmlNodeList nodes = doc.SelectNodes("/rss/channel/item");
        int i = 0;
        string rsstitle;
        string rsslink;
        foreach (XmlNode item in nodes)
        {
            i++;
            //uusi rivi tablee,
            TableRow row = new TableRow();
            TableCell cell = new TableCell();
            cell.Text = i.ToString();
            TableCell cell2 = new TableCell();
            rsstitle = item["title"].InnerText;
            rsslink = item["link"].InnerText;
            HyperLink hl = new HyperLink();
            hl.Text = rsstitle;
            hl.NavigateUrl = rsslink;
            cell2.Controls.Add(hl);
            //lisätään solut riville ja rivi lisätään tauluun
            row.Cells.Add(cell);
            row.Cells.Add(cell2);
            myDataTable.Rows.Add(row);
        }
    }
}