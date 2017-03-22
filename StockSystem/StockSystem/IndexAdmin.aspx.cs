using System;
using System.Web;

namespace StockSystem
{
    public partial class IndexAdmin : System.Web.UI.Page
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
            tbEmail.Visible = false;
            lblEmail.Visible = false;
        }
        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Login.aspx", true);
        }

        protected void btnSistemKaydet_Click(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            //yönetici için bilgileri alır
            LoginAdmin a = new LoginAdmin();
            a.userId = Convert.ToInt32(tbSistemTcNo.Text);
            a.userName = tbSistemAdı.Text;
            a.userSurname = tbSistemSoyadı.Text;

            //depocu için bilgileri alır

            LoginStocker s = new LoginStocker();
            s.userId = Convert.ToInt32(tbSistemTcNo.Text);
            s.userName = tbSistemAdı.Text;
            s.userSurname = tbSistemSoyadı.Text;

            //danisman icin bilgileri alır

            Danisman d = new Danisman();
            d.danisman_id = Convert.ToInt32(tbSistemTcNo.Text);
            d.danisman_adi = tbSistemAdı.Text + " " + tbSistemSoyadı.Text;
            d.danisman_email = tbEmail.Text;

            // dekan için bilgileri alır

            LoginDean dean = new LoginDean();
            dean.userId = Convert.ToInt32(tbSistemTcNo.Text);
            dean.userName = tbSistemAdı.Text;
            dean.userSurname = tbSistemSoyadı.Text;
            //kontrol ederek database e kaydetme


            if (ddlSistemRolu.SelectedValue == "Yönetici")
            {

                db.LoginAdmin.Add(a);
                db.SaveChanges();
            }
            if (ddlSistemRolu.SelectedValue == "Depo Sorumlusu")
            {
                db.LoginStocker.Add(s);
                db.SaveChanges();

            }
            if (HttpUtility.HtmlDecode(ddlSistemRolu.SelectedValue) == "Danışman")
            {
                db.Danisman.Add(d);
                db.SaveChanges();
                tbEmail.Visible = true;

            }
            if (HttpUtility.HtmlDecode(ddlSistemRolu.SelectedValue) == "Dekanlık")
            {
                db.LoginDean.Add(dean);
                db.SaveChanges();
                tbEmail.Visible = true;

            }
            gwAdmin.DataBind();
            gwStocker.DataBind();
            gwDanisman.DataBind();
            gwDean.DataBind();
            tbSistemTcNo.Text = "";
            tbSistemAdı.Text = "";
            tbSistemSoyadı.Text = "";
        }

        protected void ddlSistemRolu_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (HttpUtility.HtmlDecode(ddlSistemRolu.SelectedValue) == "Danışman")
            {
                tbEmail.Visible = true;
                lblEmail.Visible = true;
            }
        }

    }
}