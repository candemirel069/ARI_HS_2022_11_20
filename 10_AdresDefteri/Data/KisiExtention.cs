using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _10_AdresDefteri.Data
{
    public partial class Kisi
    {
        public override string ToString()
        {
            return Adi + " " + Soyadi.ToUpper();
        }
    }
}