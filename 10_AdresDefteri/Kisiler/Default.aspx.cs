using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _10_AdresDefteri.Kisiler
{
    public partial class Default : System.Web.UI.Page
    {
        private AdresContext db = new AdresContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            var data = db.Kisiler;
            var liste = from k in data
                        select new
                        {
                            AdiSoyadi = k.Adi + " " + k.Soyadi,
                            Id=k.Id,
                            Cinsiyet= k.Cinsiyet.HasValue ? 
                                (k.Cinsiyet.Value ? "Erkek" : "Kadın")
                            : "-",
                        };
            gv.DataSource = liste.ToList();
            gv.DataBind();
        }
    }
}