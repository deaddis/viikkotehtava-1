﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Cryptography;
using System.Text;

public class BLAutot
{
    public BLAutot()
    {

    }

    public static List<Auto> HaeAutot()
    {
        AutoLista autot = new AutoLista();
        List<Auto> autoLista = new List<Auto>();

        Serialisointi.DeSerialisoiXml(HttpContext.Current.Server.MapPath("~/App_Data/WanhatAutot.xml"), ref autot);

        for (int i = 0; i < autot.Autot.Count; i++)
        {
            autoLista.Add(autot.Autot[i]);
        }
        return autoLista;
    }
    public static void VieAutot(List<Auto> autoLista)
    {
        AutoLista autot = new AutoLista();

        foreach (Auto item in autoLista)
        {
            autot.Autot.Add(item);
        }

        Serialisointi.SerialisoiXml(HttpContext.Current.Server.MapPath("~/App_Data/WanhatAutot.xml"), autot);
    }
    public static List<Auto> SortList(List<Auto> autoLista, string GridViewSortExpression, string SortDirection)
    {
        if (autoLista != null)
        {
            if (GridViewSortExpression != string.Empty)
            {
                if (SortDirection == "ASC")
                {
                    autoLista = autoLista.OrderBy
                        (a => a.GetType().GetProperty(GridViewSortExpression)
                            .GetValue(a, null)).ToList();
                }
                else
                {
                    autoLista = autoLista.OrderByDescending
                        (a => a.GetType().GetProperty(GridViewSortExpression)
                            .GetValue(a, null)).ToList();
                }
            }
            return autoLista;
        }
        else
        {
            return autoLista;
        }
    }
    public static string regexString(string tarkistettava, string kohde)
    {
        Regex regMerkki = new Regex(@"^[a-zA-Z]{1,15}$");
        Regex regAid = new Regex(@"^[0-9]{1,9}$");
        Regex regRekisteri = new Regex(@"^([a-zA-Z]{1,3})-([0-9]{1,3})$");
        Regex regMalli = new Regex(@"^[\S*\s*]{1,20}$");
        Regex regVm = new Regex(@"^[0-9]{4}$");
        Regex regMyyntiHinta = new Regex(@"^[0-9]{1,9}$");
        Regex regSOstoHinta = new Regex(@"^[0-9]{1,9}$");
        Regex regUserName = new Regex(@"^[a-zA-Z0-9]{1,15}$");
        Regex regPassword = new Regex(@"^[\S*\s*]{1,20}$");

        switch (kohde)
        {
            case "Merkki":
                return regMalli.Match(tarkistettava).ToString();
            case "Aid":
                return regAid.Match(tarkistettava).ToString();
            case "Rekisteri":
                return regRekisteri.Match(tarkistettava).ToString();
            case "Malli":
                return regMalli.Match(tarkistettava).ToString();
            case "Vm":
                return regVm.Match(tarkistettava).ToString();
            case "MyyntiHinta":
                return regMyyntiHinta.Match(tarkistettava).ToString();
            case "SOstoHinta":
                return regSOstoHinta.Match(tarkistettava).ToString();
            case "userName":
                return regUserName.Match(tarkistettava).ToString();
            case "password":
                return regPassword.Match(tarkistettava).ToString();
            default:
                return "Tapahtui virhe";
        }
    }
    public static bool authenticateUser(string userName, string passWord)
    {
        Users kayttajat = new Users();

        Serialisointi.deSerialisoiKayttajat(HttpContext.Current.Server.MapPath("~/App_Data/Kayttajat.xml"), ref kayttajat);

        byte[] saltBytes = new byte[] { 12, 254, 62, 6, 7, 42, 2, 96 };
        byte[] saltedHashBytesUserName = new HMACMD5(saltBytes).ComputeHash(Encoding.UTF8.GetBytes(userName));
        byte[] saltedHashBytesPassword = new HMACMD5(saltBytes).ComputeHash(Encoding.UTF8.GetBytes(passWord));

        string saltedHashStringUserName = Convert.ToBase64String(saltedHashBytesUserName);
        string saltedHashStringPassword = Convert.ToBase64String(saltedHashBytesPassword);

        for (int i = 0; i < kayttajat.kayttajat.Count; i++)
        {
            if (saltedHashStringUserName == kayttajat.kayttajat[i].UserName && saltedHashStringPassword == kayttajat.kayttajat[i].Password)
            {
                return true;
            }
        }
        return false;
    }
}