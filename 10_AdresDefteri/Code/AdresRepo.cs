using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _10_AdresDefteri.Code
{
    public class AdresRepo
    {
        public static Adres Get(int Id)
        {
            AdresContext db = new AdresContext();
            return db.Adresler.Find(Id);
        }
    }
}