using _10_AdresDefteri.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _10_AdresDefteri.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            var username = txt_Username.Text;
            var password = txt_Password.Text;
            var rememberMe = ch_RememberMe.Checked;

            var webuser = AccountManager.Login(username, password);
            if (webuser != null)
            {
                FormsAuthentication.SetAuthCookie(username, rememberMe);
                Session["UserId"] = webuser.Id;
                Session["DisplayName"] = webuser.AdiSoyadi;
                if (!String.IsNullOrEmpty(Tools.QS.Read("ReturnUrl")))
                    Response.Redirect(Tools.QS.Read("ReturnUrl"));
                else
                    Response.Redirect(FormsAuthentication.DefaultUrl);
            }
            else
            {
                pnl_error.Visible = true;
            }

        }

    }
}