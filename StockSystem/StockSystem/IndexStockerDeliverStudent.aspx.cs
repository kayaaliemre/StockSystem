using System;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockSystem
{
    public partial class IndexStockerDeliverStudent : System.Web.UI.Page
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
        }

        protected void logOutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Login.aspx", true);
        }

        protected void gvDepocuTeslim_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["userReservationId"] = gvDepocuTeslim.SelectedRow.Cells[0].Text;
            Session["userReservationCase"] = gvDepocuTeslim.SelectedRow.Cells[7].Text;
            Session["userReservationCase2"] = gvDepocuTeslim.SelectedRow.Cells[7].Text;
            var id = Request.QueryString["id"];
            Response.Redirect("~/IndexStockerDeliverStudentDetails.aspx" + "?id=" + id, true);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string item = tbInput.Text.Trim();
            if (!(string.IsNullOrEmpty(item)))
            {
                int length = item.Length;
                if (length == 5)
                {
                    gvDepocuTeslim.DataSourceID = "SqldsOgrenciTC";
                    gvDepocuTeslim.DataBind();
                }
                else if (length == 16)
                {
                    gvDepocuTeslim.DataSourceID = "sqlDsReservasionId";
                    gvDepocuTeslim.DataBind();
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
                gvDepocuTeslim.DataSourceID = "sqlDsAll";
                gvDepocuTeslim.DataBind();
            }

        }

        protected void gvDepocuTeslim_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void btnTumu_Click(object sender, EventArgs e)
        {
            gvDepocuTeslim.DataSourceID = "sqlDsAll";
            gvDepocuTeslim.DataBind();
        }
    }
}