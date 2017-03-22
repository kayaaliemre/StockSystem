using System;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockSystem
{
    public partial class IndexDean : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserDean"] != null)
            {
                loginName.Text = Session["UserDean"].ToString();
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

        protected void gwRezervasyonluOgrenciler_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                TableCell cell = e.Row.Cells[7];
                TableCell cell2 = e.Row.Cells[8];
                string name = cell.Text;
                string name2 = cell2.Text;
                if (name == "Onaylı" && name2 == "Onaylı")
                {
                    cell.ForeColor = Color.DarkGreen;
                    cell.Font.Bold = true;
                    cell.Font.Italic = true;
                    cell2.ForeColor = Color.DarkGreen;
                    cell2.Font.Bold = true;
                    cell2.Font.Italic = true;
                }
                if (name == "Onaylı" && (name2 == "Onaysız" || name2 == "Reddedildi"))
                {
                    cell.ForeColor = Color.DarkGreen;
                    cell.Font.Bold = true;
                    cell.Font.Italic = true;
                    cell2.ForeColor = Color.Red;
                    cell2.Font.Bold = true;
                    cell2.Font.Italic = true;
                }
                if (name == "Onaysız" && name2 == "Onaylı")
                {
                    cell.ForeColor = Color.Red;
                    cell.Font.Bold = true;
                    cell.Font.Italic = true;
                    cell2.ForeColor = Color.DarkGreen;
                    cell2.Font.Bold = true;
                    cell2.Font.Italic = true;
                }
                if (name == "Onaysız" && name2 == "Onaysız")
                {
                    cell.ForeColor = Color.Red;
                    cell.Font.Bold = true;
                    cell.Font.Italic = true;
                    cell2.ForeColor = Color.Red;
                    cell2.Font.Bold = true;
                    cell2.Font.Italic = true;
                }
            }

        }

        protected void gwRezervasyonluOgrenciler_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["userReservationId"] = gwRezervasyonluOgrenciler.SelectedRow.Cells[0].Text;
            Session["userReservationCase"] = gwRezervasyonluOgrenciler.SelectedRow.Cells[8].Text;
            Response.Redirect("~/IndexDeanReservationDetails.aspx", true);
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
                gwRezervasyonluOgrenciler.DataSourceID = "SqlDataSourceDean";
                gwRezervasyonluOgrenciler.DataBind();
            }
        }

        protected void btnTumu_Click(object sender, EventArgs e)
        {
            gwRezervasyonluOgrenciler.DataSourceID = "SqlDataSourceDean";
            gwRezervasyonluOgrenciler.DataBind();
        }
    }
}
