using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _10_AdresDefteri.Code
{
    public partial class Tools
    {
        public class QS
        {
            public static string Read(string param)
            {
               return HttpContext.Current.Request.QueryString[param];
            }

            public static int ReadInteger(string param)
            {
                return Convert.ToInt32(Read(param));
            }

            public static int ReadId()
            {
                return ReadInteger("Id");
            }
        }
    }
}