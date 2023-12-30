using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store_WebForm
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

          
              if (Session["Username"] != null)
                lblSuccessAdmin.Text = "Login Success, Welcome  Admin  @"  + Session["Username"].ToString();
            else
                Response.Redirect("~/Login.aspx");

        }

        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
            Session["Username"]= null;
        }
    }
}