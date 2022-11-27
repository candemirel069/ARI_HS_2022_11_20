namespace _30_linq
{
    class Kisi
    {
        public string Adi { get; set; }
        public int Id { get; set; }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            //linq1();
            var sayilar = new int[] { 1, 6, 5, 9, 12, 4 };
            sayilar.ToList().ForEach(x => Console.WriteLine(x));

            Console.WriteLine("---");

            sayilar
                .Where(x => x > 5)
                .ToList()
                .ForEach(x => Console.WriteLine(x));
            Console.WriteLine("---");

            Console.WriteLine(sayilar.FirstOrDefault(x => x > 90));

        }

        private static void linq1()
        {
            #region data
            List<Kisi> kisiler = new List<Kisi>();
            kisiler.Add(new Kisi() { Adi = "beyda", Id = 1 });
            kisiler.Add(new Kisi() { Adi = "Mert", Id = 2 });
            kisiler.Add(new Kisi() { Adi = "sezer", Id = 3 });
            kisiler.Add(new Kisi() { Adi = "can", Id = 4 });
            kisiler.Add(new Kisi() { Adi = "yusf", Id = 5 });
            #endregion

            var kisi1 = kisiler.FirstOrDefault(k => k.Id > 30);
            var kisi2 = kisiler.Where(k => k.Id > 30).FirstOrDefault();

            var kisi3 = kisiler
                .Where(k => k.Id > 2)
                .OrderBy(x => x.Adi)
                .FirstOrDefault(k => k.Id > 4);

            if (kisi1 != null)
            {
                Console.WriteLine(kisi1.Adi);
            }
            else
            {
                Console.WriteLine("kayıt bulunamadı");
            }

            // data.ToList().ForEach(x => Console.WriteLine(x.Adi) );
        }
    }
}