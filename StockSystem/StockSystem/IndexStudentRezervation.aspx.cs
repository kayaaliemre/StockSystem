using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockSystem
{
    public partial class IndexStudentRezervation : System.Web.UI.Page
    {
        DataTable dtBilgiler = new DataTable();
        DataTable dtSecilenMalzemeler = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            int kullanıcıId;
            Int32.TryParse(Session["UserStudent"].ToString(), out kullanıcıId);
            Ogrenci ogrenci = db.Ogrenci.FirstOrDefault(x => x.kullanıcı_id == kullanıcıId);
            if (Session["UserStudent"] != null)
            {
                loginName.Text = ogrenci.kullanıcı_adi;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            var guncelle = Request.QueryString["id"];
            if (guncelle != null)
            {
                if (guncelle.Equals("guncelle"))
                {
                    if (!Page.IsPostBack)
                    {
                        dtBilgiler.Columns.AddRange(new DataColumn[4] { new DataColumn("Öğrenci Id"), new DataColumn("Öğrenci Adı"), new DataColumn("Öğrenci Soyadı"), new DataColumn("Öğrenci Bölümü") });
                        dtSecilenMalzemeler.Columns.AddRange(new DataColumn[5] { new DataColumn("Malzeme Adı"), new DataColumn("Malzeme Seri No"), new DataColumn("Malzeme Kodu"), new DataColumn("Malzeme Tipi"), new DataColumn("Çalışma Türü") });
                        ViewState["SecilenMalzemeler"] = null;
                        Session["bilgiler"] = null;
                        Session["malzemeIndexCount"] = null;
                        ViewState["guncelleMalzeme"] = null;
                        ViewState["GrupArkadasGuncelle"] = null;
                        Session["GrupArkadasIndexCount"] = null;
                        wzStudent.PreRender += new EventHandler(WzStudentPreRender);
                        string userReservationId = Session["userReservationId"].ToString();
                        FacultyWorksEntities udb = new FacultyWorksEntities();
                        int kullanıcıIdSession = Convert.ToInt32(kullanıcıId);
                        Ogrenci m =
                            udb.Ogrenci.FirstOrDefault(
                                x => x.kullanıcı_id == kullanıcıIdSession);
                        wzStudent.ActiveStepIndex = 0;

                        rzTxtbox.Text = userReservationId;
                        tcTxtbox.Text = m.kullanıcı_id.ToString();
                        nameTxtbox.Text = m.kullanıcı_adi;
                        surnameTxtbox.Text = m.kullanıcı_soyadi;
                        dptTxtbox.Text = m.kullanıcı_bolumu;
                        //telTxtbox.Text=m.
                        OgrenciRezervasyonBilgileri rezervasyonBilgileri = udb.OgrenciRezervasyonBilgileri.FirstOrDefault(x => x.kullanıcı_rezervasyon_id == userReservationId);
                        telTxtbox.Text = rezervasyonBilgileri.kullanici_telefon;
                        ajaxCalendarAlisTarihi.SelectedDate = rezervasyonBilgileri.kullanici_alis_tarihi;
                        ajaxCalendarVerisTarihi.SelectedDate = rezervasyonBilgileri.kullanici_teslim_tarihi;

                        txtNote.Text = rezervasyonBilgileri.kullanıcı_note;


                        Ddlcalismatürü.DataBind();
                        DdlDersler.DataBind();
                        ddlDanisman.DataBind();
                        Ddlcalismatürü.SelectedIndex = rezervasyonBilgileri.kullanici_calisma_turu;

                        if (rezervasyonBilgileri.kullanici_calisma_tipi == 1)
                        {
                            IletisimOgrencisiSecilenDanismanIlıskisi ioSecilenDanisman = udb.IletisimOgrencisiSecilenDanismanIlıskisi.FirstOrDefault(x => x.kullanıcı_rezervasyon_id == userReservationId);
                            IletisimOgrencisiSecilenDersIlıskisi ioSecilenDers = udb.IletisimOgrencisiSecilenDersIlıskisi.FirstOrDefault(x => x.kullanıcı_rezervasyon_id == userReservationId);

                            DigerOgrencilerSecilenDanismanIlıskisi doSecilenDanisman = udb.DigerOgrencilerSecilenDanismanIlıskisi.FirstOrDefault(x => x.kullanıcı_rezervasyon_id == userReservationId);
                            DigerOgrencilerSecilenDersIlıskisi doSecilenDers = udb.DigerOgrencilerSecilenDersIlıskisi.FirstOrDefault(x => x.kullanıcı_rezervasyon_id == userReservationId);

                            if (dptTxtbox.Text == "İletişim Fakültesi")
                            {
                                cbOzel.Checked = true;
                                txtDanisman2.Visible = false;
                                txtDersSecimi.Visible = false;
                                txtDersKodu.Visible = false;
                                lblDanisman2.Visible = false;
                                lblDers2.Visible = false;
                                lblDersKodu.Visible = false;
                                ddlDanisman.SelectedIndex = ioSecilenDanisman.kullanıcı_secilen_danisman;
                                DdlDersler.SelectedIndex = ioSecilenDers.kullanıcı_secilen_ders;
                            }
                            else
                            {
                                cbOzel.Checked = true;
                                ddlDanisman.Visible = false;
                                DdlDersler.Visible = false;
                                lblDanisman.Visible = false;
                                lblDersler.Visible = false;
                                txtDanisman2.Text = doSecilenDanisman.danisman_adi;
                                txtDersSecimi.Text = doSecilenDers.ders_adi;
                                txtDersKodu.Text = doSecilenDers.ders_kodu;

                            }
                        }
                        if (rezervasyonBilgileri.kullanici_calisma_tipi == 2)
                        {
                            cbOzel.Checked = false;
                            txtDanisman2.Visible = false;
                            txtDersSecimi.Visible = false;
                            txtDersKodu.Visible = false;
                            lblDanisman2.Visible = false;
                            lblDers2.Visible = false;
                            lblDersKodu.Visible = false;
                            IletisimOgrencisiSecilenDanismanIlıskisi ioSecilenDanisman = udb.IletisimOgrencisiSecilenDanismanIlıskisi.FirstOrDefault(x => x.kullanıcı_rezervasyon_id == userReservationId);
                            IletisimOgrencisiSecilenDersIlıskisi ioSecilenDers = udb.IletisimOgrencisiSecilenDersIlıskisi.FirstOrDefault(x => x.kullanıcı_rezervasyon_id == userReservationId);
                            DdlDersler.SelectedIndex = ioSecilenDers.kullanıcı_secilen_ders;
                            ddlDanisman.SelectedIndex = ioSecilenDanisman.kullanıcı_secilen_danisman;
                        }
                        List<string> grupArkadasiGuncelle = new List<string>();
                        var grup = udb.OgrenciGrupİlişkisi.Where(x => x.kullanıcı_rezervasyon_id == userReservationId).ToList();
                        
                        foreach (OgrenciGrupİlişkisi t in grup)
                        {
                            Ogrenci ogrenciBilgileri = udb.Ogrenci.FirstOrDefault(x => x.kullanıcı_id == t.ogrenci_id);
                            if (ogrenciBilgileri != null)
                                dtBilgiler.Rows.Add(t.ogrenci_id, ogrenciBilgileri.kullanıcı_adi, ogrenciBilgileri.kullanıcı_soyadi, "İletişim Fakültesi");
                            grupArkadasiGuncelle.Add(t.ogrenci_id + "");
                        }
                        var guncelleSecilenMalzemeler = (from mal in udb.Malzeme
                                                         join osm in udb.OgrenciSecilenMalzeme on mal.malzeme_id equals osm.secilen_malzeme_id
                                                         join oct in udb.OgrenciCalismaTuru on mal.malzeme_calisma_grubu equals oct.calisma_id
                                                         join md in udb.MalzemeDurumu on mal.malzeme_durumu equals md.durum_id
                                                         join mt in udb.MalzemeTipi on mal.malzeme_tipi equals mt.tip_id
                                                         where osm.kullanıcı_rezervasyon_id == userReservationId
                                                         select new { mal, oct, md, mt }).ToList();
                        List<string> guncellemedenGelenMalzemeler = new List<string>();
                        foreach (var t in guncelleSecilenMalzemeler)
                        {
                            dtSecilenMalzemeler.Rows.Add(t.mal.malzeme_adi, t.mal.malzeme_serino, t.mal.malzeme_kodu, t.mt.tip_adi, t.oct.calisma_turu);
                            guncellemedenGelenMalzemeler.Add(t.mal.malzeme_id + "");
                        }


                        Session["bilgiler"] = dtBilgiler;
                        gwSecilenOgrenci.DataSource = dtBilgiler;
                        gwSecilenOgrenci.DataBind();

                        ViewState["SecilenMalzemeler"] = dtSecilenMalzemeler;
                        GridViewSeçilenMalzemeList.DataSource = dtSecilenMalzemeler;
                        GridViewSeçilenMalzemeList.DataBind();
                        // Session["malzemeIndexCount"] = dtSecilenMalzemeler;
                        ViewState["guncelleMalzeme"] = guncellemedenGelenMalzemeler;
                        Session["malzemeIndexCount"] = guncellemedenGelenMalzemeler;
                        ViewState["GrupArkadasGuncelle"] = grupArkadasiGuncelle;
                        Session["GrupArkadasIndexCount"] = grupArkadasiGuncelle;
                        wzStudent.FinishCompleteButtonText = "Rezervasyonu Güncelle";
                    }

                    if (Session["bilgiler"] != null)
                    {
                        dtBilgiler = (DataTable)Session["bilgiler"];
                        gwSecilenOgrenci.DataSource = dtBilgiler;
                        gwSecilenOgrenci.DataBind();
                    }

                    if (ViewState["SecilenMalzemeler"] != null)
                    {
                        dtSecilenMalzemeler = (DataTable)ViewState["SecilenMalzemeler"];
                        GridViewSeçilenMalzemeList.DataSource = dtSecilenMalzemeler;
                        GridViewSeçilenMalzemeList.DataBind();
                    }
                }

            }
            else
            {
                int kullanıcıIdSession = Convert.ToInt32(kullanıcıId);
                Ogrenci m =
                    db.Ogrenci.FirstOrDefault(
                        x => x.kullanıcı_id == kullanıcıIdSession);
                if (!Page.IsPostBack)
                {

                    wzStudent.ActiveStepIndex = 0;
                    var reservationKey = GenerateKey().ToUpper();
                    rzTxtbox.Text = reservationKey;
                    tcTxtbox.Text = m.kullanıcı_id.ToString();
                    nameTxtbox.Text = m.kullanıcı_adi;
                    surnameTxtbox.Text = m.kullanıcı_soyadi;
                    dptTxtbox.Text = m.kullanıcı_bolumu;
                    Session["tel"] = telTxtbox.Text;
                    Session["malzemeIndexCount"] = null;
                    ViewState["guncelleMalzeme"] = null;
                    ViewState["GrupArkadasGuncelle"] = null;
                    Session["GrupArkadasIndexCount"] = null;
                    ViewState["SecilenMalzemeler"] = null;
                    Session["bilgiler"] = null;
                }

                if (m.kullanıcı_adi != null)
                {
                    loginName.Text = m.kullanıcı_adi;
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

            }

            //üçüncü sayfada grup arkadaşı eklemek için prerender

            wzStudent.PreRender += new EventHandler(WzStudentPreRender);
            LoadGridData(0);
            txtAlisTarihi.Attributes.Add("readonly", "readonly");
            txtVerisTarihi.Attributes.Add("readonly", "readonly");
            ajaxCalendarAlisTarihi.StartDate = DateTime.Now;

            //malzeme seçmek için prerender



        }

        protected void WzStudentPreRender(object sender, EventArgs e)
        {
            Repeater SideBarList = wzStudent.FindControl("HeaderContainer").FindControl("SideBarList") as Repeater;
            SideBarList.DataSource = wzStudent.WizardSteps;
            SideBarList.DataBind();

        }


        void LoadGridData(int index)
        {
            int tip;
            int.TryParse(DdlMalzemeList.SelectedValue, out tip);
            using (var entities = new FacultyWorksEntities())
            {
                var items = entities.Malzeme.Where(m => m.malzeme_tipi == tip).Where(m => m.malzeme_durumu == 1).ToList();
                if (tip == 0)
                {
                    GridViewMalzemeList.DataSource = entities.Malzeme.Where(m => m.malzeme_durumu == 1).ToList();
                    GridViewMalzemeList.DataBind();
                }
                else
                {
                    GridViewMalzemeList.DataSource = items;
                    GridViewMalzemeList.DataBind();
                }


            }
        }

        protected string GetClassForWizardStep(object wizardStep)
        {
            WizardStep step = wizardStep as WizardStep;

            if (step == null)
            {
                return "";
            }
            int stepIndex = wzStudent.WizardSteps.IndexOf(step);

            if (stepIndex < wzStudent.ActiveStepIndex)
            {
                return "prevStep";
            }
            else if (stepIndex > wzStudent.ActiveStepIndex)
            {
                return "nextStep";
            }
            else
            {
                return "currentStep";
            }
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Login.aspx", true);
        }

        public static string GenerateKey()
        {
            long i = Guid.NewGuid().ToByteArray().Aggregate<byte, long>(1, (current, b) => current * ((int)b + 1));
            return string.Format("{0:x}", i - DateTime.Now.Ticks);
        }

        protected void wzStudent_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {

            Session["tel"] = telTxtbox.Text;
        }

        protected void wzStudent_PreviousButtonClick(object sender, WizardNavigationEventArgs e)
        {

            telTxtbox.Text = Session["tel"].ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            var secilenOgrenci = Convert.ToInt32(tcSecilenOgrenci.Text);
            Ogrenci m =
               db.Ogrenci.FirstOrDefault(
                   x => x.kullanıcı_id == secilenOgrenci);
            if (m != null)
            {
                dtBilgiler.Rows.Add(m.kullanıcı_id, m.kullanıcı_adi, m.kullanıcı_soyadi, m.kullanıcı_bolumu);
                ViewState["bilgiler"] = dtBilgiler;
                gwSecilenOgrenci.DataSource = dtBilgiler;
                gwSecilenOgrenci.DataBind();

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Kullanıcı bulunamadı')", true);
            }

        }

        protected void DdlMalzemeList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["index"] = DdlMalzemeList.SelectedIndex;
            LoadGridData(DdlMalzemeList.SelectedIndex);
        }

        protected void GridViewMalzemeList_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow row = GridViewMalzemeList.SelectedRow;
            if (row.RowType == DataControlRowType.DataRow)
            {
                string malzemeId = HttpUtility.HtmlDecode(row.Cells[0].Text);
                string malzemeAdı = HttpUtility.HtmlDecode(row.Cells[1].Text);
                string malzemeSeri = HttpUtility.HtmlDecode(row.Cells[2].Text);
                string malzemeKodu = HttpUtility.HtmlDecode(row.Cells[3].Text);
                string malzemeDurumu = HttpUtility.HtmlDecode(row.Cells[4].Text);
                string malzemeTipi = HttpUtility.HtmlDecode(row.Cells[5].Text);
                string malzemeTuru = HttpUtility.HtmlDecode(row.Cells[6].Text);
                List<string> malzemeIndexCount;
                if (Session["malzemeIndexCount"] != null)
                {

                    malzemeIndexCount = (List<string>)Session["malzemeIndexCount"];

                }
                else
                {
                    malzemeIndexCount = new List<string>();
                }

                bool noMaterialExist = true;
                for (int i = 0; i < malzemeIndexCount.Count; i++)
                {
                    if (malzemeIndexCount[i].Equals(malzemeId))
                    {
                        noMaterialExist = false;
                        break;
                    }
                }
                if (noMaterialExist)
                {
                    malzemeIndexCount.Add(malzemeId);
                    Session["malzemeIndexCount"] = malzemeIndexCount;
                    dtSecilenMalzemeler.Rows.Add(malzemeAdı, malzemeSeri, malzemeKodu, malzemeDurumu, malzemeTipi, malzemeTuru);
                }
                else
                {
                    string script = "alert(\"Daha önce seçilmiş malzeme eklenmeye çalışıldı!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }


            }
            ViewState["SecilenMalzemeler"] = dtSecilenMalzemeler;
            GridViewSeçilenMalzemeList.DataSource = dtSecilenMalzemeler;
            GridViewSeçilenMalzemeList.DataBind();

        }


        protected void DdlMalzemeList_DataBound(object sender, EventArgs e)
        {
            DdlMalzemeList.Items.Insert(0, new ListItem("Tümü", "0"));
        }

        protected void GridViewMalzemeList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewMalzemeList.PageIndex = e.NewPageIndex;
            if (Session["index"] != null)
            {
                int session;
                int.TryParse(DdlMalzemeList.SelectedValue, out session);
                LoadGridData(session);
            }

        }


        protected void btnHukuksalDokuman_Click(object sender, EventArgs e)
        {
            mpeHukuksal.Show();
        }
        protected void btnOduncKilavuz_Click(object sender, EventArgs e)
        {
            mpeOdunc.Show();
        }

        protected void btnOkay_Click(object sender, EventArgs e)
        {
            CheckBoxHukuksal.Checked = true;
        }
        protected void btnOkay2_Click(object sender, EventArgs e)
        {
            CheckBoxOduncAlma.Checked = true;
        }

        protected void gwSecilenOgrenci_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dtBilgiler.Rows.RemoveAt(e.RowIndex);
            ViewState["bilgiler"] = dtBilgiler;
            gwSecilenOgrenci.DataSource = dtBilgiler;
            gwSecilenOgrenci.DataBind();

        }
        protected void GridViewSeçilenMalzemeList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dtSecilenMalzemeler.Rows.RemoveAt(e.RowIndex);
            ViewState["SecilenMalzemeler"] = dtSecilenMalzemeler;
            GridViewSeçilenMalzemeList.DataSource = dtSecilenMalzemeler;
            GridViewSeçilenMalzemeList.DataBind();
        }

        protected void wzStudent_ActiveStepChanged(object sender, EventArgs e)
        {
            int step = wzStudent.ActiveStepIndex;

            // Disable validation for Step 2. (index is zero-based)
            if (step == 1)
            {
                if (string.IsNullOrEmpty(telTxtbox.Text) || telTxtbox.Text.Length != 13)
                {
                    wzStudent.ActiveStepIndex = 0;
                    string script = "alert(\"Lütfen geçerli telefon numarası giriniz!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }

            }
            if (step == 2 && !cbOzel.Checked)
            {
                if (Ddlcalismatürü.SelectedIndex == 0)
                {
                    wzStudent.ActiveStepIndex = 1;
                    string script = "alert(\"Lütfen çalışma türü seçiniz!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                    // show message to the user
                }
                if (DdlDersler.SelectedIndex == 0)
                {
                    wzStudent.ActiveStepIndex = 1;
                    string script = "alert(\"Lütfen ders seçiniz!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
                if (ddlDanisman.SelectedIndex == 0)
                {
                    wzStudent.ActiveStepIndex = 1;
                    string script = "alert(\"Lütfen danışman seçiniz!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
                if (Ddlcalismatürü.SelectedIndex == 0)
                {
                    wzStudent.ActiveStepIndex = 1;
                    string script = "alert(\"Lütfen geçerli telefon numarası giriniz!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }


            }
            if (step == 2 && cbOzel.Checked)
            {
                if (txtDersSecimi.Text == "")
                {
                    wzStudent.ActiveStepIndex = 1;
                    string script = "alert(\"Lütfen ders giriniz!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                    // show message to the user
                }
                if (Ddlcalismatürü.SelectedIndex == 0)
                {
                    wzStudent.ActiveStepIndex = 1;
                    string script = "alert(\"Lütfen geçerli telefon numarası giriniz!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }

            }
        }
        protected void DdlDersler_DataBound(object sender, EventArgs e)
        {
            DdlDersler.Items.Insert(0, new ListItem("Seçiniz", "0"));
        }

        protected void Ddlcalismatürü_DataBound(object sender, EventArgs e)
        {
            Ddlcalismatürü.Items.Insert(0, new ListItem("Seçiniz", "0"));
        }
        protected void ddlDanisman_DataBound(object sender, EventArgs e)
        {
            ddlDanisman.Items.Insert(0, new ListItem("Seçiniz", "0"));
        }
        protected void wzStudent_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            var malzemeIndexCount1 = (List<string>)Session["malzemeIndexCount"];
            if (string.IsNullOrEmpty(txtAlisTarihi.Text) || string.IsNullOrEmpty(txtVerisTarihi.Text))
            {

                string script = "alert(\"Lütfen malzeme alış ve veriş tarihlerini giriniz!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else if (malzemeIndexCount1.Count == 0)
            {
                string script = "alert(\"En az bir malzeme seçilmelidir!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else if (!CheckBoxHukuksal.Checked)
            {
                string script = "alert(\"Hukuksal dökümanı okuyup onaylayınız!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else if (!CheckBoxOduncAlma.Checked)
            {
                string script = "alert(\"Ödünç alma klavuzunu okuyup onaylayınız!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            else
            {
                FacultyWorksEntities fw = new FacultyWorksEntities();
                string userReservationId = rzTxtbox.Text;
                string id = Request.QueryString["id"];

                if (id != null)
                {
                    if (id.Equals("guncelle"))
                    {
                        try
                        {
                            var rezervasyonBilgileri = fw.OgrenciRezervasyonBilgileri.Find(userReservationId);
                            if (cbOzel.Checked && HttpUtility.HtmlDecode(dptTxtbox.Text) != "Iletişim Fakültesi")
                            {
                                rezervasyonBilgileri.kullanici_telefon = telTxtbox.Text;
                                rezervasyonBilgileri.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                rezervasyonBilgileri.kullanıcı_id = int.Parse(tcTxtbox.Text);
                                rezervasyonBilgileri.kullanici_alis_tarihi = DateTime.Parse(txtAlisTarihi.Text);
                                rezervasyonBilgileri.kullanici_teslim_tarihi = DateTime.Parse(txtVerisTarihi.Text);
                                rezervasyonBilgileri.kullanici_calisma_turu = Ddlcalismatürü.SelectedIndex;
                                rezervasyonBilgileri.kullanıcı_note = txtNote.Text;


                                DigerOgrencilerSecilenDanismanIlıskisi secilenDanismanIlıskisi = new DigerOgrencilerSecilenDanismanIlıskisi();
                                secilenDanismanIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                secilenDanismanIlıskisi.danisman_adi = txtDanisman2.Text;
                                

                                DigerOgrencilerSecilenDersIlıskisi secilenDersIlıskisi = new DigerOgrencilerSecilenDersIlıskisi();
                                secilenDersIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                secilenDersIlıskisi.ders_kodu = txtDersKodu.Text;
                                secilenDersIlıskisi.ders_adi = txtDersSecimi.Text;



                            }
                            //iletişim fakültesi öğrencisi olup bireysel çalışma yapanlar 
                            if (cbOzel.Checked && HttpUtility.HtmlDecode(dptTxtbox.Text) == "Iletişim Fakültesi")
                            {
                                rezervasyonBilgileri.kullanici_telefon = telTxtbox.Text;
                                rezervasyonBilgileri.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                rezervasyonBilgileri.kullanıcı_id = int.Parse(tcTxtbox.Text);
                                rezervasyonBilgileri.kullanici_alis_tarihi = DateTime.Parse(txtAlisTarihi.Text);
                                rezervasyonBilgileri.kullanici_teslim_tarihi = DateTime.Parse(txtVerisTarihi.Text);
                                rezervasyonBilgileri.kullanici_calisma_turu = Ddlcalismatürü.SelectedIndex;
                                rezervasyonBilgileri.kullanıcı_note = txtNote.Text;

              

                                IletisimOgrencisiSecilenDanismanIlıskisi secilenDanismanIlıskisi = new IletisimOgrencisiSecilenDanismanIlıskisi();
                                secilenDanismanIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                secilenDanismanIlıskisi.kullanıcı_secilen_danisman = ddlDanisman.SelectedIndex;
                     

                                IletisimOgrencisiSecilenDersIlıskisi secilenDersIlıskisi = new IletisimOgrencisiSecilenDersIlıskisi();
                                secilenDersIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                secilenDersIlıskisi.kullanıcı_secilen_ders = DdlDersler.SelectedIndex;
          

                            }
                            //iletişim fakültesindeki bireysel çalışma yapmayıp normal çalışma yapanlar
                            if (!cbOzel.Checked)
                            {
                                rezervasyonBilgileri.kullanici_telefon = telTxtbox.Text;
                                rezervasyonBilgileri.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                rezervasyonBilgileri.kullanıcı_id = int.Parse(tcTxtbox.Text);
                                rezervasyonBilgileri.kullanici_alis_tarihi = DateTime.Parse(txtAlisTarihi.Text);
                                rezervasyonBilgileri.kullanici_teslim_tarihi = DateTime.Parse(txtVerisTarihi.Text);
                                rezervasyonBilgileri.kullanici_calisma_turu = Ddlcalismatürü.SelectedIndex;
                                rezervasyonBilgileri.kullanıcı_note = txtNote.Text;

 

                                IletisimOgrencisiSecilenDanismanIlıskisi secilenDanismanIlıskisi = new IletisimOgrencisiSecilenDanismanIlıskisi();
                                secilenDanismanIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                secilenDanismanIlıskisi.kullanıcı_secilen_danisman = ddlDanisman.SelectedIndex;


                                IletisimOgrencisiSecilenDersIlıskisi secilenDersIlıskisi = new IletisimOgrencisiSecilenDersIlıskisi();
                                secilenDersIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                secilenDersIlıskisi.kullanıcı_secilen_ders = DdlDersler.SelectedIndex;


                            }

                            // malzeme değişiklikleri bölümü
                            List<string> malzemeIndexCount = (List<string>)Session["malzemeIndexCount"];
                            List<string> malzemeGuncelledenGelen = (List<string>)ViewState["guncelleMalzeme"];
                            bool itemDeleted = true;
                            foreach (string t in malzemeGuncelledenGelen)
                            {
                                foreach (string t1 in malzemeIndexCount)
                                {
                                    if (t.Equals(t1))
                                    {
                                        itemDeleted = false;
                                        break;
                                    }
                                }
                                if (itemDeleted)
                                {
                                    int malzemeId = int.Parse(t);
                                    var silinen = fw.OgrenciSecilenMalzeme.FirstOrDefault(osm => osm.secilen_malzeme_id == malzemeId);
                                    fw.OgrenciSecilenMalzeme.Remove(silinen);
                                    //malzeme durumlarını depoda olarak değiştirme

                                    var malzemeDurumu = fw.Malzeme.Find(malzemeId);
                                    malzemeDurumu.malzeme_durumu = 1;

                                }
                                itemDeleted = true;
                            }

                            bool itemInserted = true;
                            foreach (string t in malzemeIndexCount)
                            {
                                if (malzemeGuncelledenGelen.Any(t1 => t.Equals(t1)))
                                {
                                    itemInserted = false;
                                }
                                if (itemInserted)
                                {
                                    OgrenciSecilenMalzeme eklenen = new OgrenciSecilenMalzeme();
                                    eklenen.kullanıcı_id = int.Parse(tcTxtbox.Text);
                                    eklenen.secilen_malzeme_id = int.Parse(t);
                                    eklenen.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                    fw.OgrenciSecilenMalzeme.Add(eklenen);

                                    //malzeme durumlarını kullanımda olarak değiştirme
                                    int malzeme_id = int.Parse(t);
                                    var malzemeDurumu = fw.Malzeme.Find(malzeme_id);
                                    malzemeDurumu.malzeme_durumu = 3;
                                }
                                itemInserted = true;
                            }
                            var grupArkadasIndexCount = (List<string>)Session["GrupArkadasIndexCount"];

                            var grupArkadasiGuncelle = (List<string>)ViewState["GrupArkadasGuncelle"];
                            bool studentDeleted = true;
                            foreach (string t in grupArkadasiGuncelle)
                            {
                                if (grupArkadasIndexCount.Any(t1 => t.Equals(t1)))
                                {
                                    studentDeleted = false;
                                }
                                if (studentDeleted)
                                {
                                    int temp = int.Parse(t);
                                    var deleted = fw.OgrenciGrupİlişkisi.FirstOrDefault(x => x.kullanıcı_rezervasyon_id == rzTxtbox.Text && x.ogrenci_id == temp);
                                    fw.OgrenciGrupİlişkisi.Remove(deleted);
                                }
                                studentDeleted = true;
                            }

                            bool studentInserted = true;
                            foreach (string t in grupArkadasIndexCount)
                            {
                                if (grupArkadasiGuncelle.Any(t1 => t.Equals(t1)))
                                {
                                    studentInserted = false;
                                }
                                if (studentInserted)
                                {
                                    OgrenciGrupİlişkisi eklenen = new OgrenciGrupİlişkisi();
                                    eklenen.ogrenci_id = int.Parse(t);
                                    eklenen.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                                    fw.OgrenciGrupİlişkisi.Add(eklenen);
                                    //grup arkadaşın adını soyadını eklemedin
                                }
                                studentInserted = true;
                            }

                            fw.SaveChanges();
                            string script = "alert(\"Rezervasyon başarıyla güncellendi!\");";
                            ScriptManager.RegisterStartupScript(this, GetType(),
                                                  "ServerControlScript", script, true);

                            Response.Redirect("IndexStudent.aspx", false);
                            Context.ApplicationInstance.CompleteRequest();
                        }

                        catch (Exception ex)
                        {
                            string script = "alert(\"" + ex.Message.ToString() + "!\");";
                            ScriptManager.RegisterStartupScript(this, GetType(),
                                                  "ServerControlScript", script, true);
                        }
                    }

                }
                else
                {
                    var malzemeIndexCount = (List<string>)Session["malzemeIndexCount"];

                    try
                    {   //iletişim fakültesi öğrencisi olmayıp bireysel çalışma yapanlar
                        if (cbOzel.Checked && HttpUtility.HtmlDecode(dptTxtbox.Text) != "Iletişim Fakültesi")
                        {
                            OgrenciRezervasyonBilgileri rezervasyonBilgileri = new OgrenciRezervasyonBilgileri();
                            rezervasyonBilgileri.kullanici_telefon = telTxtbox.Text;
                            rezervasyonBilgileri.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            rezervasyonBilgileri.kullanıcı_id = int.Parse(tcTxtbox.Text);
                            rezervasyonBilgileri.kullanici_alis_tarihi = DateTime.Parse(txtAlisTarihi.Text);
                            rezervasyonBilgileri.kullanici_teslim_tarihi = DateTime.Parse(txtVerisTarihi.Text);
                            rezervasyonBilgileri.kullanici_calisma_turu = Ddlcalismatürü.SelectedIndex;
                            rezervasyonBilgileri.kullanıcı_note = txtNote.Text;
                            rezervasyonBilgileri.kullanici_calisma_tipi = 1;

                            fw.OgrenciRezervasyonBilgileri.Add(rezervasyonBilgileri);

                            DigerOgrencilerSecilenDanismanIlıskisi secilenDanismanIlıskisi = new DigerOgrencilerSecilenDanismanIlıskisi();
                            secilenDanismanIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            secilenDanismanIlıskisi.danisman_adi = txtDanisman2.Text;
                            fw.DigerOgrencilerSecilenDanismanIlıskisi.Add(secilenDanismanIlıskisi);

                            DigerOgrencilerSecilenDersIlıskisi secilenDersIlıskisi = new DigerOgrencilerSecilenDersIlıskisi();
                            secilenDersIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            secilenDersIlıskisi.ders_kodu = txtDersKodu.Text;
                            secilenDersIlıskisi.ders_adi = txtDersSecimi.Text;
                            fw.DigerOgrencilerSecilenDersIlıskisi.Add(secilenDersIlıskisi);


                        }
                        //iletişim fakültesi öğrencisi olup bireysel çalışma yapanlar 
                        if (cbOzel.Checked && HttpUtility.HtmlDecode(dptTxtbox.Text) == "Iletişim Fakültesi")
                        {
                            OgrenciRezervasyonBilgileri rezervasyonBilgileri = new OgrenciRezervasyonBilgileri();
                            rezervasyonBilgileri.kullanici_telefon = telTxtbox.Text;
                            rezervasyonBilgileri.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            rezervasyonBilgileri.kullanıcı_id = int.Parse(tcTxtbox.Text);
                            rezervasyonBilgileri.kullanici_alis_tarihi = DateTime.Parse(txtAlisTarihi.Text);
                            rezervasyonBilgileri.kullanici_teslim_tarihi = DateTime.Parse(txtVerisTarihi.Text);
                            rezervasyonBilgileri.kullanici_calisma_turu = Ddlcalismatürü.SelectedIndex;
                            rezervasyonBilgileri.kullanıcı_note = txtNote.Text;
                            rezervasyonBilgileri.kullanici_calisma_tipi = 1;
                            fw.OgrenciRezervasyonBilgileri.Add(rezervasyonBilgileri);

                            IletisimOgrencisiSecilenDanismanIlıskisi secilenDanismanIlıskisi = new IletisimOgrencisiSecilenDanismanIlıskisi();
                            secilenDanismanIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            secilenDanismanIlıskisi.kullanıcı_secilen_danisman = ddlDanisman.SelectedIndex;
                            fw.IletisimOgrencisiSecilenDanismanIlıskisi.Add(secilenDanismanIlıskisi);

                            IletisimOgrencisiSecilenDersIlıskisi secilenDersIlıskisi = new IletisimOgrencisiSecilenDersIlıskisi();
                            secilenDersIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            secilenDersIlıskisi.kullanıcı_secilen_ders = DdlDersler.SelectedIndex;
                            fw.IletisimOgrencisiSecilenDersIlıskisi.Add(secilenDersIlıskisi);

                        }
                        //iletişim fakültesindeki bireysel çalışma yapmayıp normal çalışma yapanlar
                        if (!cbOzel.Checked)
                        {
                            OgrenciRezervasyonBilgileri rezervasyonBilgileri = new OgrenciRezervasyonBilgileri();
                            rezervasyonBilgileri.kullanici_telefon = telTxtbox.Text;
                            rezervasyonBilgileri.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            rezervasyonBilgileri.kullanıcı_id = int.Parse(tcTxtbox.Text);
                            rezervasyonBilgileri.kullanici_alis_tarihi = DateTime.Parse(txtAlisTarihi.Text);
                            rezervasyonBilgileri.kullanici_teslim_tarihi = DateTime.Parse(txtVerisTarihi.Text);
                            rezervasyonBilgileri.kullanici_calisma_turu = Ddlcalismatürü.SelectedIndex;
                            rezervasyonBilgileri.kullanıcı_note = txtNote.Text;
                            rezervasyonBilgileri.kullanici_calisma_tipi = 2;
                            fw.OgrenciRezervasyonBilgileri.Add(rezervasyonBilgileri);

                            IletisimOgrencisiSecilenDanismanIlıskisi secilenDanismanIlıskisi = new IletisimOgrencisiSecilenDanismanIlıskisi();
                            secilenDanismanIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            secilenDanismanIlıskisi.kullanıcı_secilen_danisman = ddlDanisman.SelectedIndex;
                            fw.IletisimOgrencisiSecilenDanismanIlıskisi.Add(secilenDanismanIlıskisi);

                            IletisimOgrencisiSecilenDersIlıskisi secilenDersIlıskisi = new IletisimOgrencisiSecilenDersIlıskisi();
                            secilenDersIlıskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            secilenDersIlıskisi.kullanıcı_secilen_ders = DdlDersler.SelectedIndex;
                            fw.IletisimOgrencisiSecilenDersIlıskisi.Add(secilenDersIlıskisi);

                        }
                        foreach (string t in malzemeIndexCount)
                        {
                            OgrenciSecilenMalzeme secilenMalzeme = new OgrenciSecilenMalzeme();
                            secilenMalzeme.kullanıcı_id = int.Parse(tcTxtbox.Text);
                            secilenMalzeme.secilen_malzeme_id = int.Parse(t);
                            secilenMalzeme.kullanıcı_rezervasyon_id = rzTxtbox.Text;

                            fw.OgrenciSecilenMalzeme.Add(secilenMalzeme);
                        }


                        for (int i = 0; i < gwSecilenOgrenci.Rows.Count; i++)
                        {
                            GridViewRow r = gwSecilenOgrenci.Rows[i];
                            int ogrenciId = int.Parse(r.Cells[0].Text);

                            OgrenciGrupİlişkisi grupIliskisi = new OgrenciGrupİlişkisi();
                            grupIliskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                            grupIliskisi.ogrenci_id = ogrenciId;
                            fw.OgrenciGrupİlişkisi.Add(grupIliskisi);

                        }

                        OgrenciRezervasyonİliskisi rezervasyonİliskisi = new OgrenciRezervasyonİliskisi();
                        rezervasyonİliskisi.kullanici_id = int.Parse(tcTxtbox.Text);
                        rezervasyonİliskisi.kullanıcı_rezervasyon_id = rzTxtbox.Text;
                        rezervasyonİliskisi.rezervasyon_id = 2;
                        fw.OgrenciRezervasyonİliskisi.Add(rezervasyonİliskisi);

                        fw.SaveChanges();
                        //malzeme durumlarını işlem yapılıyor olarak değiştirme
                        string rez = rzTxtbox.Text;
                        var malzemeDurumu = (from m in fw.Malzeme join osm in fw.OgrenciSecilenMalzeme on m.malzeme_id equals osm.secilen_malzeme_id where osm.kullanıcı_rezervasyon_id == rez select new { m, osm }).ToList();
                        foreach (var t in malzemeDurumu)
                        {
                            t.m.malzeme_durumu = 3;
                        }
                        fw.SaveChanges();
                        string script = "alert(\"Rezervasyon başarıyla kaydedildi!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                              "ServerControlScript", script, true);
                        Response.Redirect("IndexStudent.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();

                    }
                    catch (Exception ex)
                    {
                        string script = "alert(\"" + ex.Message.ToString() + "!\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                              "ServerControlScript", script, true);
                    }
                }
            }


        }

        protected void Ddlcalismatürü_SelectedIndexChanged(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            var secilenCalisma = Ddlcalismatürü.SelectedIndex;
            var items = db.Malzeme.Where(m => m.malzeme_calisma_grubu == secilenCalisma).ToList();
            for (int i = 0; i < items.Count(); i++)
            {
                string malzemeId = items[i].malzeme_id.ToString();
                string malzemeAdı = items[i].malzeme_adi;
                string malzemeSeri = items[i].malzeme_serino;
                string malzemeKodu = items[i].malzeme_kodu;
                string malzemeDurumu = items[i].MalzemeDurumu.durum_adi;
                string malzemeTipi = items[i].MalzemeTipi.tip_adi;
                string malzemeTuru = items[i].OgrenciCalismaTuru.calisma_turu;
                if (HttpUtility.HtmlDecode(Ddlcalismatürü.SelectedItem.Text) == "Haber Stüdyosu")
                {
                    dtSecilenMalzemeler.Rows.Add(malzemeAdı, malzemeSeri, malzemeKodu, malzemeDurumu, malzemeTipi, malzemeTuru);
                }
                ViewState["SecilenMalzemeler"] = dtSecilenMalzemeler;
                GridViewSeçilenMalzemeList.DataSource = dtSecilenMalzemeler;
                GridViewSeçilenMalzemeList.DataBind();
            }


        }

        protected void GridViewSeçilenMalzemeList_RowCreated(object sender, GridViewRowEventArgs e)
        {
            GridViewRow row = e.Row;
            TableCell cell = row.Cells[0];
            row.Cells.Remove(cell);
            row.Cells.Add(cell);
        }

        protected void gwSecilenOgrenci_RowCreated(object sender, GridViewRowEventArgs e)
        {
            GridViewRow row = e.Row;
            TableCell cell = row.Cells[0];
            TableCell cell2 = row.Cells[1];
            row.Cells.Remove(cell);
            row.Cells.Add(cell);
            row.Cells.Add(cell2);
        }

        protected void cbOzel_CheckedChanged(object sender, EventArgs e)
        {
            if (cbOzel.Checked && HttpUtility.HtmlDecode(dptTxtbox.Text) != "Iletişim Fakültesi")
            {
                lblDersler.Visible = false;
                lblDanisman.Visible = false;
                ddlDanisman.Visible = false;
                DdlDersler.Visible = false;
                lblDersKodu.Visible = true;
                txtDersKodu.Visible = true;
                txtDersSecimi.Visible = true;
                lblDers2.Visible = true;
                lblDanisman2.Visible = true;
                txtDanisman2.Visible = true;

            }
            if (cbOzel.Checked && HttpUtility.HtmlDecode(dptTxtbox.Text) == "Iletişim Fakültesi")
            {
                lblDersler.Visible = true;
                lblDanisman.Visible = true;
                ddlDanisman.Visible = true;
                DdlDersler.Visible = true;
                lblDanisman2.Visible = true;
                txtDanisman2.Visible = true;
                lblDersKodu.Visible = false;
                txtDersKodu.Visible = false;
                txtDersSecimi.Visible = false;
                lblDers2.Visible = false;

            }
            if (!cbOzel.Checked)
            {
                lblDersler.Visible = true;
                lblDanisman.Visible = true;
                ddlDanisman.Visible = true;
                DdlDersler.Visible = true;
                lblDersKodu.Visible = false;
                txtDersKodu.Visible = false;
                txtDersSecimi.Visible = false;
                lblDers2.Visible = false;
                lblDanisman2.Visible = false;
                txtDanisman2.Visible = false;
            }
        }
    }
}