using System;

namespace StockSystem
{
    public partial class IndexAdminOthers : System.Web.UI.Page
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

        protected void btnSistemKaydet0_Click(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            OgrenciCalismaTuru calisma = new OgrenciCalismaTuru();
            calisma.calisma_turu = tbCalismaTürü.Text;
            db.OgrenciCalismaTuru.Add(calisma);
            db.SaveChanges();
            gwCalisma.DataBind();

        }
    }
}