using System;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockSystem
{
    public partial class IndexLecturer : System.Web.UI.Page
    {
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

        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Login.aspx", true);
        }

        protected void gwRezervasyonluOgrenciler_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["userReservationId"] = gwRezervasyonluOgrenciler.SelectedRow.Cells[0].Text;
            Session["userReservationCase"] = gwRezervasyonluOgrenciler.SelectedRow.Cells[7].Text;

            Response.Redirect("~/IndexLecturerReservationDetails.aspx", true);
        }

        protected void gwRezervasyonluOgrenciler_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TableCell cell = e.Row.Cells[7];
                string name = cell.Text;
                if (name == "Onaylı")
                {
                    cell.ForeColor = Color.DarkGreen;
                    cell.Font.Bold = true;
                    cell.Font.Italic = true;
                }
                if (name == "Onaysız" || name == "Reddedildi")
                {
                    cell.ForeColor = Color.Red;
                    cell.Font.Bold = true;
                    cell.Font.Italic = true;
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string item = tbInput.Text.Trim();
            if (!(string.IsNullOrEmpty(item)))
            {
                int length = item.Length;
                if (length == 5)  // tc 11 hane olmalı gerçek verilere geçince değiştiriniz
                {
                    gwRezervasyonluOgrenciler.DataSourceID = "SqldsOgrenciTC";
                    gwRezervasyonluOgrenciler.DataBind();
                }
                else if (length == 16)
                {
                    gwRezervasyonluOgrenciler.DataSourceID = "sqlDsReservasionId";
                    gwRezervasyonluOgrenciler.DataBind();
                }
                else
                {
                    string script = "alert(\"Lütfen 11 haneli TC no ya da rezervasyon numarası giriniz!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }


            }
            else
            {
                gwRezervasyonluOgrenciler.DataSourceID = "SqlDataSource";
                gwRezervasyonluOgrenciler.DataBind();
            }
        }

        protected void btnTumu_Click(object sender, EventArgs e)
        {
            gwRezervasyonluOgrenciler.DataSourceID = "SqlDataSource";
            gwRezervasyonluOgrenciler.DataBind();
        }
    }
}