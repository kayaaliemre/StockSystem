using System;
using System.Linq;

namespace StockSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonLogin_Click(object sender, EventArgs e)
        {
            FacultyWorksEntities db = new FacultyWorksEntities();
            int usernameInputValue = Convert.ToInt32(username_input.Value);
            var myAdmin = db.LoginAdmin
        .FirstOrDefault(u => u.userId == usernameInputValue
                     && u.userPass == password_input.Value);

            var myStudent = db.Ogrenci
       .FirstOrDefault(u => u.kullanýcý_id == usernameInputValue
                     && u.kullanýcý_sifre == password_input.Value);

            var myLecturer = db.LoginLecturer
       .FirstOrDefault(u => u.userId == usernameInputValue
                     && u.userPass == password_input.Value);

            var myStocker = db.LoginStocker
       .FirstOrDefault(u => u.userId == usernameInputValue
                     && u.userPass == password_input.Value);

            var myDean = db.LoginDean
       .FirstOrDefault(u => u.userId == usernameInputValue
                     && u.userPass == password_input.Value);

            var myDanisman = db.Danisman.FirstOrDefault(u => u.danisman_id == usernameInputValue);

            if (myAdmin != null)    //User was found
            {
                Session["UserAdmin"] = username_input.Value;
                Response.Redirect("~/IndexAdmin.aspx");
            }
            if (myStudent != null)    //User was found
            {
                Session["UserStudent"] = username_input.Value;
                Response.Redirect("~/IndexStudent.aspx");
            }
            if (myLecturer != null || myDanisman != null)    //User was found
            {
                Session["UserLecturer"] = username_input.Value;
                Response.Redirect("~/IndexLecturer.aspx");
            }
            if (myStocker != null) //User was found
            {
                Session["UserStocker"] = username_input.Value;
                Response.Redirect("~/IndexStocker.aspx");
            }
            if (myDean != null) //User was found
            {
                Session["UserDean"] = username_input.Value;
                Response.Redirect("~/IndexDean.aspx");
            }
            else
            {
                ModelState.AddModelError("", "Invalid login credentials.");
            }
        }
    }
}