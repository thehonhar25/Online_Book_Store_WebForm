using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store_WebForm
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"]!=null)
            lblSuccess.Text="Login Success, Welcome " + Session["Username"].ToString();
            else 
           Response.Redirect("~/Login.aspx");

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
            Session["Username"] = null;
        }
    }
}