using System;
using System.Drawing;
using System.Linq;
using System.Web.UI.WebControls;

namespace StockSystem
{
    public partial class IndexStudent : System.Web.UI.Page
    {
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
        }

        protected void gwRezervasyonluOgrenciler_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["userReservationId"] = gwRezervasyonluOgrenciler.SelectedRow.Cells[0].Text;
            Session["userReservationCase"] = gwRezervasyonluOgrenciler.SelectedRow.Cells[7].Text;
            Session["userReservationCase2"] = gwRezervasyonluOgrenciler.SelectedRow.Cells[8].Text;
            Response.Redirect("IndexStudentRezervationDetails.aspx", true);
        }

        protected void gwRezervasyonluOgrenciler_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            TableCell cell = e.Row.Cells[7];
            TableCell cell2 = e.Row.Cells[8];
            TableCell cell3 = e.Row.Cells[9];
            string name = cell.Text;
            string name2 = cell2.Text;
            string name3 = cell3.Text;
            if (name == "Onaylı" && name2 == "Onaylı" && name3 == "Teslim Edildi")
            {
                cell.ForeColor = Color.DarkGreen;
                cell.Font.Bold = true;
                cell.Font.Italic = true;
                cell2.ForeColor = Color.DarkGreen;
                cell2.Font.Bold = true;
                cell2.Font.Italic = true;
                cell3.ForeColor = Color.DarkGreen;
                cell3.Font.Bold = true;
                cell3.Font.Italic = true;
            }
            if (name == "Onaylı" && name2 == "Onaylı" && name3 == "Teslim Edilmedi")
            {
                cell.ForeColor = Color.DarkGreen;
                cell.Font.Bold = true;
                cell.Font.Italic = true;
                cell2.ForeColor = Color.DarkGreen;
                cell2.Font.Bold = true;
                cell2.Font.Italic = true;
                cell3.ForeColor = Color.Red;
                cell3.Font.Bold = true;
                cell3.Font.Italic = true;
            }
            if (name == "Onaylı" && (name2 == "Onaysız" || name2 == "Reddedildi") && name3 == "Teslim Edilmedi")
            {
                cell.ForeColor = Color.DarkGreen;
                cell.Font.Bold = true;
                cell.Font.Italic = true;
                cell2.ForeColor = Color.Red;
                cell2.Font.Bold = true;
                cell2.Font.Italic = true;
                cell3.ForeColor = Color.Red;
                cell3.Font.Bold = true;
                cell3.Font.Italic = true;
            }
            if ((name == "Onaysız" || name == "Reddedildi") && name2 == "Onaysız" && name3 == "Teslim Edilmedi")
            {
                cell.ForeColor = Color.Red;
                cell.Font.Bold = true;
                cell.Font.Italic = true;
                cell2.ForeColor = Color.Red;
                cell2.Font.Bold = true;
                cell2.Font.Italic = true;
                cell3.ForeColor = Color.Red;
                cell3.Font.Bold = true;
                cell3.Font.Italic = true;
            }
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Login.aspx", true);
        }

        protected void btnYeniRezervasyon_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/IndexStudentRezervation.aspx", true);
        }
    }
}