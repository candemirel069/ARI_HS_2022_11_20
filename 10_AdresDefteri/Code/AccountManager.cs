using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _10_AdresDefteri.Code
{
    public class AccountManager
    {
        public static WebUser Login(string username, string password)
        {
            AdresContext db = new AdresContext();
            return db.WebUser.FirstOrDefault(u =>
                    u.Username == username &&
                    u.Password == password);
        }
    }
}