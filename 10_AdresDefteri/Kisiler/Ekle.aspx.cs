using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _10_AdresDefteri.Kisiler
{
    public partial class Ekle : System.Web.UI.Page
    {
        private AdresContext db = new AdresContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Kisi kisi = new Kisi();
            kisi.Adi = txt_Adi.Text;
            kisi.Soyadi = txt_Soyadi.Text;

            if (rb_Cinsiyet_Erkek.Checked)
                kisi.Cinsiyet = true;
            else if (rb_Cinsiyet_Kadin.Checked)
                kisi.Cinsiyet = false;

            db.Kisiler.Add(kisi);
            db.SaveChanges();
            Response.Redirect("Default.aspx");

        }
    }
}