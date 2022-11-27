using _10_AdresDefteri.Code;
using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _10_AdresDefteri.Kisiler
{
    public partial class Sil : System.Web.UI.Page
    {
        private AdresContext db = new AdresContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var kisiId = Tools.QS.ReadId();
            var kisi = db.Kisiler.Find(kisiId);
            db.Kisiler.Remove(kisi);
            db.SaveChanges();

            Response.Redirect("Default.aspx");
        }
    }
}