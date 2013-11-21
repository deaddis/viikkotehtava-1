using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Register : System.Web.UI.Page
{
  string GoBackToThisPage;
  protected void Page_Load(object sender, EventArgs e)
  {
    try
    {
      GoBackToThisPage = Request.QueryString["ReturnUrl"];
      //TODO
    }
    catch (Exception ex)
    {
      ErrorMessage.Text = "Yhteyden luonti tietokantaan ei onnistu! " + ex.Message ;
    }
  }

  protected void RegisterUser_CreatedUser(object sender, EventArgs e)
  {
  }

  protected void CreateUserButton_Click(object sender, EventArgs e)
  {
    //tarkistetaan että onko jo ko nimellä käyttäjää, jollei ole niin luodaan uusi
    try
    {
	//TODO
    }
    catch (Exception ex)
    {
      ErrorMessage.Text = ex.Message;
    }
  }
  
}
