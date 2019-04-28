using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Car
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            CarsEntities db = new CarsEntities();
            string query = (from c in db.Users
                            where c.Username == User_txt.Text && c.Password == Pass_txt.Text
                            select c.Username).FirstOrDefault();
            if (query != null)
            {
                Response.Redirect("Car.aspx");
            }
            else
                Response.Write("Invalid User");
        }
    }
}