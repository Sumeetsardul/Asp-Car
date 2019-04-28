using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Car
{   
    public partial class register : System.Web.UI.Page
    {
        Business bs = new Business();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {

            Response.Redirect("Login.aspx");


        }

        protected void regBtn_Click(object sender, EventArgs e)
        {
            bs.AddReg(Pass_txt.Text, User_txt.Text);
            Response.Redirect("Login.aspx");
        }
    }
}