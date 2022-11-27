using _10_AdresDefteri.Code;
using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _10_AdresDefteri.Adresler
{
    public partial class Sil : System.Web.UI.Page
    {
        private AdresContext db = new AdresContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var kisiId = Tools.QS.ReadInteger("KisiId");
            var adresId = Tools.QS.ReadId();

            var adres = db.Adresler.Find(adresId);
            db.Adresler.Remove(adres);
            db.SaveChanges();

            Response.Redirect("Default.aspx?id=" + kisiId);
        }
    }
}