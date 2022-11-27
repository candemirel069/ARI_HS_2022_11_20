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
    public partial class degistir : System.Web.UI.Page
    {
        private AdresContext db = new AdresContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var kisiId = Tools.QS.ReadInteger("KisiId");
                var adresId = Tools.QS.ReadId();

                lit_adi.Text = KisiRepo.Get(kisiId).ToString();

                hdn_KisiId.Value = kisiId.ToString();
                hdn_AdresId.Value = adresId.ToString();

                var adres = AdresRepo.Get(adresId);
                txt_Adi.Text = adres.Adi;
                txt_Line1.Text = adres.AdresSatiri1;
                txt_Line2.Text = adres.AdresSatiri2;
                SehirlerControl.SelectedSehirId = adres.SehirId; 
            }
        }

        protected void btn_Kaydet_Click(object sender, EventArgs e)
        {
            var adresId = Convert.ToInt32(hdn_AdresId.Value);
            var kisiId = Convert.ToInt32(hdn_KisiId.Value);
            var adres = db.Adresler.Find(adresId);
            adres.Adi = txt_Adi.Text;
            adres.AdresSatiri1 = txt_Line1.Text;
            adres.AdresSatiri2 = txt_Line2.Text;
            adres.SehirId = SehirlerControl.SelectedSehirId;

            db.SaveChanges();
            Response.Redirect("default.aspx?Id=" + kisiId);

        }
    }
}