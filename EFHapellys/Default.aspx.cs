using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DemoxOyEntities ctx = new DemoxOyEntities();
            var opiskelijat = (from lo in ctx.lasnaolots
                               where lo.course.StartsWith("IIO13200")
                               orderby lo.asioid
                               select lo.asioid).Distinct();
            cmbStudents.DataSource = opiskelijat.ToList();
            cmbStudents.DataBind();
        }
    }
    protected void btnGetIlmot_Click(object sender, EventArgs e)
    {
        //haetaan ilmoittautumiset EF:n avulla
        DemoxOyEntities ctx = new DemoxOyEntities();
        //Kysely tuo kaiken tiedon entiteeteistä
        /*var kysely = from lo in ctx.lasnaolots
                     where lo.course.Contains("IIO13200")
                     select lo;*/
        //Kysely jolla haetaan asioid, sukunimi, etunimi ja pvm
        var kysely = from lo in ctx.lasnaolots
                     where lo.course.Contains("IIO13200")
                     select new { Nimi = lo.lastname + " " + lo.firstname,
                         Asioid = lo.asioid,
                         Pvm = lo.date 
                     };
        gvData.DataSource = kysely.ToList();
        gvData.DataBind();
        lblLasnaoloa.Text = string.Format("Löytyi {0} läsnäoloa", kysely.Count());
    }

    protected void btnAsioid_Click(object sender, EventArgs e)
    {
        //haetaan annetun opiskelijan ilmot
        string JalluPullo = txtboxAsioid.Text;

        if (txtboxAsioid.Text == "")
        {
            JalluPullo = cmbStudents.Text;
            txtboxAsioid.Text = JalluPullo;
        }

        DemoxOyEntities ctx = new DemoxOyEntities();
        var oppilaanLasnaolot = from lo in ctx.lasnaolots
                                where (lo.course.Contains("IIO13200") &
                                    lo.asioid.Contains(JalluPullo))
                                orderby lo.date
                                select new
                                {
                                    Pvm = lo.date,
                                    Nimi = lo.lastname + " " + lo.firstname
                                };
        gvData.DataSource = oppilaanLasnaolot.ToList();
        gvData.DataBind();
        if (oppilaanLasnaolot.Count() != 0)
        {
            lblLasnaoloa.Text = string.Format("Löytyi {0} läsnäoloa", oppilaanLasnaolot.Count());
        }
        else
        {
            lblLasnaoloa.Text = "Ei löytynyt ilmoittautumisia opiskelijalla " + txtboxAsioid.Text;
        }
    }
    protected void btnIlmottaudu_Click(object sender, EventArgs e)
    {
        if (txtboxMyAsioid.Text.Length * txtboxEtunimi.Text.Length * txtboxSukunimi.Text.Length > 0)
        {
            DemoxOyEntities ctx = new DemoxOyEntities();
            lasnaolot lasnaolo = new lasnaolot();
            lasnaolo.asioid = txtboxMyAsioid.Text;
            lasnaolo.course = "IIO13200";
            lasnaolo.firstname = txtboxEtunimi.Text;
            lasnaolo.lastname = txtboxSukunimi.Text;
            lasnaolo.date = DateTime.Now;

            //lisätään se kontekstiin
            ctx.lasnaolots.Add(lasnaolo);
            //tallennus kantaan
            ctx.SaveChanges();
        }
    }
}