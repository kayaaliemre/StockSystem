//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StockSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class OgrenciGrupİlişkisi
    {
        public int tablo_id { get; set; }
        public string kullanıcı_rezervasyon_id { get; set; }
        public int ogrenci_id { get; set; }
        public string ogrenci_name { get; set; }
        public string ogrenci_surname { get; set; }
    
        public virtual OgrenciRezervasyonBilgileri OgrenciRezervasyonBilgileri { get; set; }
    }
}
