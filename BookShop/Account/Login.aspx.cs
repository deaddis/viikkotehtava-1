﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Login : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
  }
  protected void LoginButton_Click(object sender, EventArgs e)
  {
    try
    {
	//TODO
    }
    catch (Exception)
    {
      throw;
    }
  }
}
