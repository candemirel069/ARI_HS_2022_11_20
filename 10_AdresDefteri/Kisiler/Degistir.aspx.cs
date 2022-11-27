using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _10_AdresDefteri.Kisiler
{
    public partial class Degistir : System.Web.UI.Page
    {
        private AdresContext db = new AdresContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var kisiId = Convert.ToInt32(Request.QueryString["id"]);
                var kisi = db.Kisiler.Find(kisiId);

                hdn_Id.Value = kisi.Id.ToString();
                txt_Adi.Text = kisi.Adi;
                txt_Soyadi.Text = kisi.Soyadi;
                if (kisi.Cinsiyet.HasValue)
                {
                    if (kisi.Cinsiyet.Value)
                        rb_Cinsiyet_Erkek.Checked = true;
                    else
                        rb_Cinsiyet_Kadin.Checked = true;
                } 
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            var kisiId = Convert.ToInt32(hdn_Id.Value);
            var kisi = db.Kisiler.Find(kisiId);
            
            kisi.Adi = txt_Adi.Text;
            kisi.Soyadi = txt_Soyadi.Text;
            if (rb_Cinsiyet_Erkek.Checked)
                kisi.Cinsiyet = true;
            else if (rb_Cinsiyet_Kadin.Checked)
                kisi.Cinsiyet = false;

            db.SaveChanges();
            Response.Redirect("Default.aspx");
        }
    }
}