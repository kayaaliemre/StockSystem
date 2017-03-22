using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockSystem
{
    public partial class IndexStudentRezervationDetails : System.Web.UI.Page
    {
        DataTable dtOgrenciler = new DataTable();
        DataTable dtMalzeme = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            int userId;
            Int32.TryParse(Session["UserStudent"].ToString(), out userId);
            Ogrenci ogrenci = db.Ogrenci.FirstOrDefault(x => x.kullanıcı_id == userId);
            if (Session["UserStudent"] != null)
            {
                loginName.Text = ogrenci.kullanıcı_adi;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            string userReservationId = Session["userReservationId"].ToString();
            string userReservationCase = Session["userReservationCase"].ToString();
            string userReservationCase2 = Session["userReservationCase2"].ToString();

            if (userReservationCase == "Reddedildi" || userReservationCase2 == "Reddedildi")
            {
                btnSil.Enabled = true;
                btnSil.CssClass = " ";
            }
            if (!IsPostBack)
            {
                dtOgrenciler.Columns.AddRange(new DataColumn[3]
                    {new DataColumn("Öğrenci Id"), new DataColumn("Öğrenci Adı"), new DataColumn("Öğrenci Soyadı")});
                dtMalzeme.Columns.AddRange(new DataColumn[6]
                {
                    new DataColumn("Malzeme Adı"), new DataColumn("Malzeme Seri No"), new DataColumn("Malzeme Kodu"),
                    new DataColumn("Malzeme Durumu"), new DataColumn("Malzeme Tipi"), new DataColumn("Çalışma Türü")
                });


                OgrenciRezervasyonBilgileri bil =
                    db.OgrenciRezervasyonBilgileri.FirstOrDefault(
                        m => m.kullanıcı_rezervasyon_id == userReservationId);

                Ogrenci o = db.Ogrenci.FirstOrDefault(m => m.kullanıcı_id == bil.kullanıcı_id);
                OgrenciCalismaTuru calisma =
                    db.OgrenciCalismaTuru.FirstOrDefault(m => m.calisma_id == bil.kullanici_calisma_turu);
                //Dersler ders = db.Dersler.FirstOrDefault(m => m.ders_id == bil.kullanici_secilen_ders);

                var grupArkadaslari =
                    db.OgrenciGrupİlişkisi.Where(m => m.kullanıcı_rezervasyon_id == userReservationId).ToList();
                var secilenMalzeme = (from m in db.Malzeme
                                      join osm in db.OgrenciSecilenMalzeme on m.malzeme_id equals osm.secilen_malzeme_id
                                      join oct in db.OgrenciCalismaTuru on m.malzeme_calisma_grubu equals oct.calisma_id
                                      join md in db.MalzemeDurumu on m.malzeme_durumu equals md.durum_id
                                      join mt in db.MalzemeTipi on m.malzeme_tipi equals mt.tip_id
                                      where osm.kullanıcı_rezervasyon_id == userReservationId
                                      select new { m, oct, md, mt }).ToList();


                if (grupArkadaslari != null)
                {
                    foreach (OgrenciGrupİlişkisi t in grupArkadaslari)
                    {
                        dtOgrenciler.Rows.Add(t.ogrenci_id, t.ogrenci_name, t.ogrenci_surname);
                    }

                    gwCalisma.DataSource = dtOgrenciler;
                    gwCalisma.DataBind();
                }

                if (secilenMalzeme != null)
                {
                    List<string> malzemeler = new List<string>();

                    foreach (var t in secilenMalzeme)
                    {
                        dtMalzeme.Rows.Add(t.m.malzeme_adi, t.m.malzeme_serino, t.m.malzeme_kodu, t.md.durum_adi,
                            t.mt.tip_adi, t.oct.calisma_turu);
                        malzemeler.Add(t.m.malzeme_id + "");
                    }
                    Session["Malzemeler"] = malzemeler;
                    Session["DataTableMalzemeler"] = dtMalzeme;
                    gwSecilenMalzeme.DataSource = dtMalzeme;
                    gwSecilenMalzeme.DataBind();
                }


                if (bil != null)
                {
                    rzTxtbox.Text = bil.kullanıcı_rezervasyon_id;
                    tcTxtbox.Text = bil.kullanıcı_id.ToString();
                    telTxtbox.Text = bil.kullanici_telefon;
                    txtNote.Text = bil.kullanıcı_note;
                    if (o != null)
                    {
                        nameTxtbox.Text = o.kullanıcı_adi;
                        surnameTxtbox.Text = o.kullanıcı_soyadi;
                        dptTxtbox.Text = o.kullanıcı_bolumu;
                    }
                    if (calisma != null) txtCalisma.Text = calisma.calisma_turu;
                    //if (ders != null) txtDers.Text = ders.ders_adi;
                }

            }

        }



        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Login.aspx", true);
        }


        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/IndexStudent.aspx", true);
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            try
            {
                FacultyWorksEntities db = new FacultyWorksEntities();
                string userReservationId = Session["userReservationId"].ToString();
                var rezervasyon = db.OgrenciRezervasyonİliskisi.Find(userReservationId);
                rezervasyon.rezervasyon_id = 5;


                if (Session["Malzemeler"] != null)
                {
                    var secilenMalzeme = (from m in db.Malzeme
                                          join osm in db.OgrenciSecilenMalzeme on m.malzeme_id equals osm.secilen_malzeme_id
                                          where osm.kullanıcı_rezervasyon_id == userReservationId
                                          select new { m, osm }).ToList();
                    foreach (var t in secilenMalzeme)
                    {
                        t.m.malzeme_durumu = 1;
                    }
                }
                db.SaveChanges();

                //dataları silme 

                using (var entity = new FacultyWorksEntities())
                {
                    var secilen =
                        entity.OgrenciSecilenMalzeme.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                    foreach (var id in secilen)
                    {
                        entity.OgrenciSecilenMalzeme.Remove(id);
                    }
                    entity.SaveChanges();

                    var rezervasyonIlıskisi = entity.OgrenciRezervasyonİliskisi.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                    foreach (var id in rezervasyonIlıskisi)
                    {
                        entity.OgrenciRezervasyonİliskisi.Remove(id);
                    }
                    entity.SaveChanges();

                    var ogrenciGrup = entity.OgrenciGrupİlişkisi.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                    foreach (var id in ogrenciGrup)
                    {
                        entity.OgrenciGrupİlişkisi.Remove(id);
                    }
                    entity.SaveChanges();

                    var rezervasyonBilgileri = entity.OgrenciRezervasyonBilgileri.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                    foreach (var id in rezervasyonBilgileri)
                    {
                        entity.OgrenciRezervasyonBilgileri.Remove(id);
                    }
                    entity.SaveChanges();

                    var rezervasyonBilgileriIlıskileri = entity.OgrenciRezervasyonBilgileri.FirstOrDefault(x => x.kullanıcı_rezervasyon_id == userReservationId);

                    if (rezervasyonBilgileriIlıskileri != null && rezervasyonBilgileriIlıskileri.kullanici_calisma_tipi == 1 && HttpUtility.HtmlDecode(dptTxtbox.Text) == "İletişim Fakültesi")
                    {
                        var ioSecilenDers = entity.IletisimOgrencisiSecilenDersIlıskisi.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                        foreach (var id in ioSecilenDers)
                        {
                            entity.IletisimOgrencisiSecilenDersIlıskisi.Remove(id);
                        }
                        entity.SaveChanges();
                        var ioSecilenDanisman = entity.IletisimOgrencisiSecilenDanismanIlıskisi.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                        foreach (var id in ioSecilenDanisman)
                        {
                            entity.IletisimOgrencisiSecilenDanismanIlıskisi.Remove(id);
                        }
                        entity.SaveChanges();
                    }
                    if (rezervasyonBilgileriIlıskileri != null &&
                        rezervasyonBilgileriIlıskileri.kullanici_calisma_tipi == 1 &&
                        HttpUtility.HtmlDecode(dptTxtbox.Text) != "İletişim Fakültesi")
                    {
                        var doSecilenDers = entity.DigerOgrencilerSecilenDersIlıskisi.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                        foreach (var id in doSecilenDers)
                        {
                            entity.DigerOgrencilerSecilenDersIlıskisi.Remove(id);
                        }
                        entity.SaveChanges();
                        var doSecilenDanisman = entity.DigerOgrencilerSecilenDanismanIlıskisi.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                        foreach (var id in doSecilenDanisman)
                        {
                            entity.DigerOgrencilerSecilenDanismanIlıskisi.Remove(id);
                        }
                        entity.SaveChanges();
                    }
                    if (rezervasyonBilgileriIlıskileri != null &&
                        rezervasyonBilgileriIlıskileri.kullanici_calisma_tipi == 2)
                    {
                        var ioSecilenDers = entity.IletisimOgrencisiSecilenDersIlıskisi.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                        foreach (var id in ioSecilenDers)
                        {
                            entity.IletisimOgrencisiSecilenDersIlıskisi.Remove(id);
                        }
                        entity.SaveChanges();
                        var ioSecilenDanisman = entity.IletisimOgrencisiSecilenDanismanIlıskisi.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                        foreach (var id in ioSecilenDanisman)
                        {
                            entity.IletisimOgrencisiSecilenDanismanIlıskisi.Remove(id);
                        }
                        entity.SaveChanges();
                    }


                }


                string script = "alert(\"Rezervasyon başarıyla silindi!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script, true);
            }
            catch (Exception ex)
            {
                string script = "alert(\"" + ex.Message + "!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script, true);
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string userReservationId = Session["userReservationId"].ToString();
            FacultyWorksEntities db = new FacultyWorksEntities();
            var onay = (from ord in db.OgrenciRezervasyonDurumu join ori in db.OgrenciRezervasyonİliskisi on ord.rezervasyon_id equals ori.rezervasyon_id where ori.kullanıcı_rezervasyon_id == userReservationId select ord.rezervasyon_danisman_onay_durumu).FirstOrDefault();

            if (onay == 2)
            {
                Response.Redirect("~/IndexStudentRezervation.aspx?id=guncelle", true);
            }
            else if (onay == 1)
            {
                string script = "alert(\"Rezervasyon onaylandığı için güncellenemez!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script, true);
            }
            else
            {
                string script = "alert(\"Reddedilen rezervasyon güncellenemez!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script, true);
            }
        }
    }
}