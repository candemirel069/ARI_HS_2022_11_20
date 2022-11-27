using _10_AdresDefteri.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _10_AdresDefteri.Code
{
    public class KisiRepo
    {
        public static Kisi Get(int Id)
        {
            AdresContext db = new AdresContext();
            var kisi= db.Kisiler.Find(Id);
            return kisi;
        }
    }
}