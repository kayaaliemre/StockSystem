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
    
    public partial class OgrenciCalismaTuru
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public OgrenciCalismaTuru()
        {
            this.Malzeme = new HashSet<Malzeme>();
            this.OgrenciRezervasyonBilgileri = new HashSet<OgrenciRezervasyonBilgileri>();
        }
    
        public int calisma_id { get; set; }
        public string calisma_turu { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Malzeme> Malzeme { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OgrenciRezervasyonBilgileri> OgrenciRezervasyonBilgileri { get; set; }
    }
}