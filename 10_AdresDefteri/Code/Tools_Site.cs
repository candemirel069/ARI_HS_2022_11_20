using _10_AdresDefteri.Data;
using _10_AdresDefteri.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Core.Metadata.Edm;
using System.Linq;
using System.Web;

namespace _10_AdresDefteri.Code
{
    public partial class Tools
    {
        public class Site
        {
            public static SiteInfo GetInfo()
            {
                AdresContext db = new AdresContext();
                SiteInfo info = new SiteInfo();
                info.KisiSayisi = db.Kisiler.Count();
                info.AdresSayisi = db.Adresler.Count();
                info.SehirSayisi = db.Sehirler.Count();
                return info;
            }

            public static string ApplicationName
            {
                get
                {
                    return ConfigurationManager.AppSettings["app_name"].ToString();
                }
            }
        }
    }
}