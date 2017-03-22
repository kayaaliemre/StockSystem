using System;
using System.Linq;
using System.Web.UI;

namespace StockSystem
{
    public partial class IndexStockerDeliverStudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserStocker"] != null)
            {
                loginName.Text = Session["UserStocker"].ToString();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            string userReservationCase = Session["userReservationCase"].ToString();
            string userReservationCase2 = Session["userReservationCase2"].ToString();
            if (userReservationCase == "Reddedildi" || userReservationCase2 == "Reddedildi")
            {
                btnTeslim.Enabled = false;
            }
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"];

                if (id.Equals("3"))
                {
                    btnTeslim.Text = "Teslim Al";
                }
                FacultyWorksEntities db = new FacultyWorksEntities();
                string userReservationId = Session["userReservationId"].ToString();

                OgrenciRezervasyonBilgileri bil =
                  db.OgrenciRezervasyonBilgileri.FirstOrDefault(
                      m => m.kullanıcı_rezervasyon_id == userReservationId);
                Ogrenci o = db.Ogrenci.FirstOrDefault(m => m.kullanıcı_id == bil.kullanıcı_id);
                if (bil != null)
                {
                    rzTxtbox.Text = bil.kullanıcı_rezervasyon_id;
                    tcTxtbox.Text = bil.kullanıcı_id.ToString();
                    telTxtbox.Text = bil.kullanici_telefon;

                }
                if (o != null)
                {
                    nameTxtbox.Text = o.kullanıcı_adi;
                    surnameTxtbox.Text = o.kullanıcı_soyadi;
                    dptTxtbox.Text = o.kullanıcı_bolumu;
                }
            }

        }

        protected void btnTeslim_Click(object sender, EventArgs e)
        {
            try
            {
                FacultyWorksEntities db = new FacultyWorksEntities();
                string userReservationId = Session["userReservationId"].ToString();

                // öğrenciye teslim etme işleminde rezervasyon id leri 3 numaraya çekeceksin
                // öğrenciden teslim alma işleminde rezervasyon id leri 4 numaraya çekecesin
                var id = Request.QueryString["id"];
                string script = "";
                if (id.Equals("4"))
                {
                    var rezervasyon = db.OgrenciRezervasyonİliskisi.Find(userReservationId);
                    rezervasyon.rezervasyon_id = 3;
                    var secilenMalzeme = (from m in db.Malzeme join osm in db.OgrenciSecilenMalzeme on m.malzeme_id equals osm.secilen_malzeme_id where osm.kullanıcı_rezervasyon_id == userReservationId select new { m, osm }).ToList();
                    foreach (var t in secilenMalzeme)
                    {
                        t.m.malzeme_durumu = 2;
                    }
                    script = "alert(\"Malzeme öğrenciye verildi !\");";
                    Response.Redirect("~/IndexStockerDeliverStudent.aspx", true);
                }
                if (id.Equals("3"))
                {
                    var rezervasyon = db.OgrenciRezervasyonİliskisi.Find(userReservationId);
                    rezervasyon.rezervasyon_id = 5;
                    var secilenMalzeme = (from m in db.Malzeme join osm in db.OgrenciSecilenMalzeme on m.malzeme_id equals osm.secilen_malzeme_id where osm.kullanıcı_rezervasyon_id == userReservationId select new { m, osm }).ToList();
                    foreach (var t in secilenMalzeme)
                    {
                        t.m.malzeme_durumu = 1;
                    }
                    script = "alert(\"Malzeme depoya konuldu !\");";
                }
                db.SaveChanges();

                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            catch (Exception ex)
            {
                string script = "alert(\"" + ex.Message.ToString() + "!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
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
            Response.Redirect("~/IndexStockerDeliverStudent.aspx", true);
        }

        protected void btnYazdır_Click(object sender, EventArgs e)
        {

        }
    }
}