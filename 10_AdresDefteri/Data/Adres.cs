//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _10_AdresDefteri.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Adres
    {
        public int Id { get; set; }
        public int KisiId { get; set; }
        public string Adi { get; set; }
        public string AdresSatiri1 { get; set; }
        public string AdresSatiri2 { get; set; }
        public int SehirId { get; set; }
    
        public virtual Sehir Sehir { get; set; }
        public virtual Kisi Kisi { get; set; }
    }
}
