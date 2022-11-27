using _10_AdresDefteri.Code;
using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _10_AdresDefteri
{
    public partial class _Default : Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var info = Tools.Site.GetInfo();
                lbl_KisiSayisi.Text = info.KisiSayisi.ToString();
                lbl_AdresSayisi.Text = info.AdresSayisi.ToString();
                lbl_SehirSayisi.Text = info.SehirSayisi.ToString();
            }
        }
    }
}