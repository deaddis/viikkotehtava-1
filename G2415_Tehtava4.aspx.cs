using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class G2415_Tehtava4 : System.Web.UI.Page
{
    private List<ListItem> listitem;
    private XmlDocument doc;
    private XmlNodeList nodes;
    private DataSet ds;
    private DataTable dt;
    private DataView dataViewRandomRows;
    private DataView dataViewAll;
    private List<string> columns;

    protected void Page_Load(object sender, EventArgs e)
    {
        columns = new List<string>();
        columns.Add("merkki");
        columns.Add("malli");
        columns.Add("vm");
        columns.Add("myyntiHinta");

        ds = new DataSet();
        ds.ReadXml(ConfigurationManager.AppSettings["WanhatAutot"]);

        dt = ds.Tables[1];
        DataTable dataTableRandomRows = dt.Clone();
        int[] randomNumbers = GetRandomNumbers(dt.Columns.Count, 4);

        foreach (int i in randomNumbers)
        {
            dataTableRandomRows.ImportRow(dt.Rows[i]);
        }

        dataViewAll = dt.DefaultView;

        dataViewRandomRows = dataTableRandomRows.DefaultView;

        MyGridView.DataSource = dataViewRandomRows.ToTable(false, columns.ToArray());
        MyGridView.DataBind();

        FillDropDownListMerkit();

    }

    protected void DropDownListMerkit_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBoxHaku.Text = "";

        if (DropDownListMerkit.SelectedItem.ToString() == "")
        {
            MyGridView.DataSource = dataViewAll.ToTable(false, columns.ToArray());
            MyGridView.DataBind();
        }
        else
        {
            dataViewAll.RowFilter = "merkki = '" + DropDownListMerkit.SelectedItem.ToString() + "'";
            MyGridView.DataSource = dataViewAll.ToTable(false, columns.ToArray());
            MyGridView.DataBind();
        }

    }

    protected void ButtonHaku_Click(object sender, EventArgs e)
    {

        if (TextBoxHaku.Text == "")
        {
            DropDownListMerkit.Text = "";
            MyGridView.DataSource = dataViewAll.ToTable(false, columns.ToArray());
            MyGridView.DataBind();
        }
        else
        {
            dataViewAll.RowFilter = "merkki = '" + TextBoxHaku.Text + "'";
            if (dataViewAll.Count == 0)
            {
                DropDownListMerkit.Text = "";
            }
            else
            {
                DropDownListMerkit.Text = TextBoxHaku.Text.Substring(0, 1).ToUpper() + TextBoxHaku.Text.Substring(1, TextBoxHaku.Text.Length - 1);
            }

            MyGridView.DataSource = dataViewAll.ToTable(false, columns.ToArray());
            MyGridView.DataBind();
        }
    }

    protected void FillDropDownListMerkit()
    {
        listitem = new List<ListItem>();
        doc = new XmlDocument();
        doc = myDataSource.GetXmlDocument();
        nodes = doc.SelectNodes("/Wanhatautot/Auto");
        if (!DropDownListMerkit.Items.Contains(new ListItem("")))
        {
            DropDownListMerkit.Items.Add("");
        }

        foreach (XmlNode item in nodes)
        {
            ListItem li = new ListItem(item["merkki"].InnerText);
            if (!DropDownListMerkit.Items.Contains(li))
            {
                listitem.Add(li);
            }
        }

        DropDownListMerkit.Items.AddRange(listitem.Distinct().ToArray());
    }

    protected int[] GetRandomNumbers(int max, int numOfRandoms)
    {
        var list = new List<int>(numOfRandoms);
        int r;
        Random rnd = new Random();
        while (list.Count < numOfRandoms)
        {
            r = rnd.Next(max);
            if (list.Contains(r))
            {
                continue;
            }
            list.Add(r);

        }
        return list.ToArray();
    }

    protected void MyGridView_Sorting(object sender, GridViewSortEventArgs e)
    {
        string sortDirection = "ASC";
        string sortExpression = ViewState["SortExpression"] as string;

        DataTable dt2 = dt.Clone();
        dt2.Columns["myyntiHinta"].DataType = Type.GetType("System.Int32");
        dt2.Columns["vm"].DataType = Type.GetType("System.Int32");

        foreach (DataRow dr in dt.Rows)
        {
            dt2.ImportRow(dr);
        }

        dt2.AcceptChanges();
        DataView dv = dt2.DefaultView;

        if (sortExpression == e.SortExpression)
        {
            string lastDirection = ViewState["SortDirection"] as string;
            if ((lastDirection != null) && (lastDirection == "ASC"))
            {
                sortDirection = "DESC";
            }
        }

        dv.Sort = e.SortExpression + " " + sortDirection;

        // Save new values in ViewState.
        ViewState["SortDirection"] = sortDirection;
        ViewState["SortExpression"] = e.SortExpression;

        MyGridView.DataSource = dt2.DefaultView.ToTable(false, columns.ToArray());
        MyGridView.DataBind();
    }

}