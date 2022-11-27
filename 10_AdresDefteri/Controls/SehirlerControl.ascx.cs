using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _10_AdresDefteri.Controls
{
    public partial class SehirlerControl : System.Web.UI.UserControl
    {
        private AdresContext db = new AdresContext();

        public int SelectedSehirId
        {
            get { return Convert.ToInt32(drp_Sehir.SelectedValue); }
            set { drp_Sehir.SelectedValue = value.ToString(); }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                drp_Sehir.DataSource = db.Sehirler.OrderBy(it => it.Adi).ToList();
                drp_Sehir.DataBind();
            }
        }
    }
}