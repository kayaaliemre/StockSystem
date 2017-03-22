using System;
using System.Linq;
using System.Web;

namespace StockSystem
{
    public partial class IndexAdminMaterial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserAdmin"] != null)
            {
                loginName.Text = Session["UserAdmin"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Login.aspx", true);
        }

        protected void btnMalzemeKaydet_Click(object sender, EventArgs e)
        {
            try
            {

                FacultyWorksEntities db = new FacultyWorksEntities();

                Malzeme m = new Malzeme();
                m.malzeme_kodu = tbMalzemeKodu.Text;
                m.malzeme_adi = tbMalzemeAdı.Text;
                m.malzeme_serino = tbMalzemeSeriNo.Text;
                m.malzeme_durumu = (ddMalzemeDurumu.SelectedIndex + 1);
                m.malzeme_calisma_grubu = (ddlMalzemeCalisma.SelectedIndex + 1);
                m.malzeme_tipi = (ddlMalzemeTipi.SelectedIndex + 1);

                db.Malzeme.Add(m);
                db.SaveChanges();
                gwMalzeme.DataBind();
                clearForm();
            }
            catch
            {

            }



        }

        protected void gwMalzeme_SelectedIndexChanged(object sender, EventArgs e)
        {
   
            tbMalzemeAdı.Text = HttpUtility.HtmlDecode(gwMalzeme.SelectedRow.Cells[1].Text);
            tbMalzemeSeriNo.Text = HttpUtility.HtmlDecode(gwMalzeme.SelectedRow.Cells[2].Text);
            tbMalzemeKodu.Text = HttpUtility.HtmlDecode(gwMalzeme.SelectedRow.Cells[3].Text);
            ddMalzemeDurumu.SelectedIndex = ddMalzemeDurumu.Items.IndexOf(ddMalzemeDurumu.Items.FindByText(HttpUtility.HtmlDecode(gwMalzeme.SelectedRow.Cells[4].Text)));
            ddlMalzemeTipi.SelectedIndex = ddlMalzemeTipi.Items.IndexOf(ddlMalzemeTipi.Items.FindByText(HttpUtility.HtmlDecode(gwMalzeme.SelectedRow.Cells[5].Text)));
            ddlMalzemeCalisma.SelectedIndex = ddlMalzemeCalisma.Items.IndexOf(ddlMalzemeCalisma.Items.FindByText(HttpUtility.HtmlDecode(gwMalzeme.SelectedRow.Cells[6].Text)));
            btnMalzemeKaydet.Enabled = false;
            btnMalzemeKaydet.CssClass = "btn disabled";

        }

        protected void btnMalzemeGüncelle_Click(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            int y = Convert.ToInt32(gwMalzeme.SelectedRow.Cells[0].Text);
            Malzeme m =
                db.Malzeme.FirstOrDefault(
                    x => x.malzeme_id == y);
            m.malzeme_kodu = tbMalzemeKodu.Text;
            m.malzeme_adi = tbMalzemeAdı.Text;
            m.malzeme_serino = tbMalzemeSeriNo.Text;
            m.malzeme_durumu = (ddMalzemeDurumu.SelectedIndex + 1);
            m.malzeme_calisma_grubu = (ddlMalzemeCalisma.SelectedIndex + 1);
            m.malzeme_tipi = (ddlMalzemeTipi.SelectedIndex + 1);
            db.SaveChanges();
            gwMalzeme.DataBind();
            clearForm();
        }

        protected void btnMalzemeSil_Click(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            int y = Convert.ToInt32(gwMalzeme.SelectedRow.Cells[0].Text);
            Malzeme m =
                db.Malzeme.FirstOrDefault(x => x.malzeme_id == y);
            db.Malzeme.Remove(m);
            db.SaveChanges();
            gwMalzeme.DataBind();
            clearForm();
        }

        protected void clearForm()
        {
            tbMalzemeAdı.Text = "";
            tbMalzemeKodu.Text = "";
            tbMalzemeSeriNo.Text = "";
            ddlMalzemeTipi.SelectedIndex = -1;
            ddlMalzemeCalisma.SelectedIndex = -1;
            ddMalzemeDurumu.SelectedIndex = -1;
        }
    }
}