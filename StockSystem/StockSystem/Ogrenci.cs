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
    
    public partial class Ogrenci
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Ogrenci()
        {
            this.OgrenciSecilenMalzeme = new HashSet<OgrenciSecilenMalzeme>();
        }
    
        public int kullanıcı_id { get; set; }
        public string kullanıcı_adi { get; set; }
        public string kullanıcı_soyadi { get; set; }
        public string kullanıcı_bolumu { get; set; }
        public string kullanıcı_sifre { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OgrenciSecilenMalzeme> OgrenciSecilenMalzeme { get; set; }
    }
}
