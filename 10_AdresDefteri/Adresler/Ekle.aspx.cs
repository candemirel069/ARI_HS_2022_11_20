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
    public partial class Ekle : System.Web.UI.Page
    {
        private AdresContext db = new AdresContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var kisiId = Tools.QS.ReadInteger("KisiId");
            hdn_KisiId.Value = kisiId.ToString();
            lit_adi.Text = KisiRepo.Get(kisiId).ToString();
        }

        protected void btn_Kaydet_Click(object sender, EventArgs e)
        {
            var kisiId = Convert.ToInt32(hdn_KisiId.Value);

            var adres = new Adres();
            adres.Adi = txt_Adi.Text;
            adres.AdresSatiri1 = txt_Line1.Text;
            adres.AdresSatiri2 = txt_Line2.Text;
            adres.SehirId = SehirlerControl1.SelectedSehirId;

            adres.KisiId=kisiId;

            db.Adresler.Add(adres);
            db.SaveChanges();

            Response.Redirect("Default.aspx?Id=" + kisiId);



        }
    }
}