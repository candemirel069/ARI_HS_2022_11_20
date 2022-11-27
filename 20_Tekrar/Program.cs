namespace _20_Tekrar
{
    internal class Program
    {
        static void Main(string[] args)
        {
            bool? Cinsyet = true;

            if (Cinsyet.HasValue)
            {
                Console.WriteLine(Cinsyet.Value ? "erkek" : "kadın");
            }
            else
            {
                Console.WriteLine("NULLL!!");
            }


            Console.WriteLine(Cinsyet.HasValue?
                (Cinsyet.Value?"erkek":"kadın")
                :"----");
            Console.WriteLine("--------------------------");

            int? sayi = null;

            int sonuc = sayi ?? 10;

            Console.WriteLine(sonuc);
        }
    }
}