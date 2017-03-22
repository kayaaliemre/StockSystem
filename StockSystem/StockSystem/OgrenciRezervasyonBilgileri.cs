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
    
    public partial class OgrenciRezervasyonBilgileri
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public OgrenciRezervasyonBilgileri()
        {
            this.DigerOgrencilerSecilenDanismanIlıskisi = new HashSet<DigerOgrencilerSecilenDanismanIlıskisi>();
            this.DigerOgrencilerSecilenDersIlıskisi = new HashSet<DigerOgrencilerSecilenDersIlıskisi>();
            this.IletisimOgrencisiSecilenDanismanIlıskisi = new HashSet<IletisimOgrencisiSecilenDanismanIlıskisi>();
            this.IletisimOgrencisiSecilenDersIlıskisi = new HashSet<IletisimOgrencisiSecilenDersIlıskisi>();
            this.OgrenciGrupİlişkisi = new HashSet<OgrenciGrupİlişkisi>();
            this.OgrenciSecilenMalzeme = new HashSet<OgrenciSecilenMalzeme>();
        }
    
        public string kullanıcı_rezervasyon_id { get; set; }
        public int kullanıcı_id { get; set; }
        public System.DateTime kullanici_alis_tarihi { get; set; }
        public System.DateTime kullanici_teslim_tarihi { get; set; }
        public string kullanici_telefon { get; set; }
        public int kullanici_calisma_turu { get; set; }
        public int kullanici_calisma_tipi { get; set; }
        public string kullanıcı_note { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DigerOgrencilerSecilenDanismanIlıskisi> DigerOgrencilerSecilenDanismanIlıskisi { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DigerOgrencilerSecilenDersIlıskisi> DigerOgrencilerSecilenDersIlıskisi { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<IletisimOgrencisiSecilenDanismanIlıskisi> IletisimOgrencisiSecilenDanismanIlıskisi { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<IletisimOgrencisiSecilenDersIlıskisi> IletisimOgrencisiSecilenDersIlıskisi { get; set; }
        public virtual OgrenciCalismaTipi OgrenciCalismaTipi { get; set; }
        public virtual OgrenciCalismaTuru OgrenciCalismaTuru { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OgrenciGrupİlişkisi> OgrenciGrupİlişkisi { get; set; }
        public virtual OgrenciRezervasyonİliskisi OgrenciRezervasyonİliskisi { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OgrenciSecilenMalzeme> OgrenciSecilenMalzeme { get; set; }
    }
}