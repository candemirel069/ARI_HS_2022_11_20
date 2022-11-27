using _10_AdresDefteri.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _10_AdresDefteri.Adresler
{
    public partial class Default : System.Web.UI.Page
    {
        public int KisiId;
        protected void Page_Load(object sender, EventArgs e)
        {
            KisiId = Tools.QS.ReadId();
            if (!IsPostBack)
            {
                var kisi = KisiRepo.Get(KisiId);
                lit_Adi.Text = kisi.Adi + " " + kisi.Soyadi;

                var data= kisi.Adresler.ToList();
                if (data.Count != 0)
                {
                    rp_Adresler.DataSource = data;
                    rp_Adresler.DataBind();
                }
                else
                {
                    pn_EmptyData.Visible = true;
                }
                
            }
        }

        protected void btn_Ekle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ekle.aspx?KisiId=" + KisiId);
        }
    }
}