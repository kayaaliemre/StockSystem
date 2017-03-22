using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockSystem
{
    public partial class IndexLecturerReservationDetails : System.Web.UI.Page
    {
        DataTable dtOgrenciler = new DataTable();
        DataTable dtMalzeme = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLecturer"] != null)
            {
                loginName.Text = Session["UserLecturer"].ToString();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            string userReservationId = Session["userReservationId"].ToString();
            string userReservationCase = Session["userReservationCase"].ToString();

            if (userReservationCase == "Onaylı")
            {
                btnOnayla.Enabled = false;
                btnReddet.Enabled = false;
                btnOnayla.CssClass = "btn disabled";
                btnReddet.CssClass = "btn disabled";
            }
            if (!IsPostBack)
            {
                dtOgrenciler.Columns.AddRange(new DataColumn[3] { new DataColumn("Öğrenci Id"), new DataColumn("Öğrenci Adı"), new DataColumn("Öğrenci Soyadı") });
                dtMalzeme.Columns.AddRange(new DataColumn[6] { new DataColumn("Malzeme Adı"), new DataColumn("Malzeme Seri No"), new DataColumn("Malzeme Kodu"), new DataColumn("Malzeme Durumu"), new DataColumn("Malzeme Tipi"), new DataColumn("Çalışma Türü") });


                FacultyWorksEntities db = new FacultyWorksEntities();
                OgrenciRezervasyonBilgileri bil =
                   db.OgrenciRezervasyonBilgileri.FirstOrDefault(
                       m => m.kullanıcı_rezervasyon_id == userReservationId);
                Ogrenci o = db.Ogrenci.FirstOrDefault(m => m.kullanıcı_id == bil.kullanıcı_id);
                OgrenciCalismaTuru calisma =
                    db.OgrenciCalismaTuru.FirstOrDefault(m => m.calisma_id == bil.kullanici_calisma_turu);
                //Dersler ders = db.Dersler.FirstOrDefault( m => m.ders_id == bil.kullanici_secilen_ders);

                var grupArkadaslari = db.OgrenciGrupİlişkisi.Where(m => m.kullanıcı_rezervasyon_id == userReservationId).ToList();
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
                        dtMalzeme.Rows.Add(t.m.malzeme_adi, t.m.malzeme_serino, t.m.malzeme_kodu, t.md.durum_adi, t.mt.tip_adi, t.oct.calisma_turu);
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



        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            List<string> silinen;
            try
            {
                if (Session["SilinenMalzemeler"] != null)
                {
                    silinen = (List<string>)Session["SilinenMalzemeler"];
                    foreach (string t in silinen)
                    {
                        int silinenMalzeme = int.Parse(t);
                        var itemToRemove = db.OgrenciSecilenMalzeme.SingleOrDefault(m => m.secilen_malzeme_id == silinenMalzeme && m.kullanıcı_rezervasyon_id == rzTxtbox.Text);
                        if (itemToRemove != null)
                        {
                            db.OgrenciSecilenMalzeme.Remove(itemToRemove);

                        }
                    }
                }
                var rezervasyon = db.OgrenciRezervasyonİliskisi.Find(Session["userReservationId"]);
                rezervasyon.rezervasyon_id = 1;
                db.SaveChanges();
                string script = "alert(\"Rezervasyon onaylandı!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
                Response.Redirect("~/IndexLecturer.aspx", true);
            }
            catch (Exception ex)
            {
                string script = "alert(\"" + ex.Message.ToString() + "!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
        }

        protected void gwSecilenMalzeme_RowCreated(object sender, GridViewRowEventArgs e)
        {
            GridViewRow row = e.Row;
            TableCell cell = row.Cells[0];
            row.Cells.Remove(cell);
            row.Cells.Add(cell);
        }

        protected void gwSecilenMalzeme_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dtMalzeme = Session["DataTableMalzemeler"] as DataTable;
            if (dtMalzeme != null)
            {
                dtMalzeme.Rows.RemoveAt(e.RowIndex);
                gwSecilenMalzeme.DataSource = dtMalzeme;
            }
            gwSecilenMalzeme.DataBind();
            List<string> silinen;
            if (Session["SilinenMalzemeler"] != null)
            {

                silinen = (List<string>)Session["SilinenMalzemeler"];

            }
            else
            {
                silinen = new List<string>();
            }
            List<string> malzemeler = (List<string>)Session["Malzemeler"];
            silinen.Add(malzemeler[e.RowIndex]);
            Session["SilinenMalzemeler"] = silinen;
        }

        protected void btnReddet_Click(object sender, EventArgs e)
        {
            try
            {
                FacultyWorksEntities db = new FacultyWorksEntities();
                string userReservationId = Session["userReservationId"].ToString();
                var rezervasyon = db.OgrenciRezervasyonİliskisi.Find(userReservationId);
                rezervasyon.rezervasyon_id = 5;


                if (Session["Malzemeler"] != null)
                {
                    var secilenMalzeme = (from m in db.Malzeme join osm in db.OgrenciSecilenMalzeme on m.malzeme_id equals osm.secilen_malzeme_id where osm.kullanıcı_rezervasyon_id == userReservationId select new { m, osm }).ToList();
                    foreach (var t in secilenMalzeme)
                    {
                        t.m.malzeme_durumu = 1;
                    }
                }
                db.SaveChanges();
                string script = "alert(\"Rezervasyon iptal edildi!\");";
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

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndexLecturer.aspx", true);
        }
    }
}