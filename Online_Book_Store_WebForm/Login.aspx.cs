using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Online_Book_Store_WebForm
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["PASS"] != null)
                {
                    txtUname.Text = Request.Cookies["UNAME"].Value;
                    txtPassword.Text = Request.Cookies["PASS"].Value;
                    CheckBox.Checked = true;
                }
            }


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection _con = new SqlConnection(ConfigurationManager.ConnectionStrings["OBSDB"].ConnectionString))
            {
                _con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblUser where Username=@Username and Password=@Password", _con);
                cmd.Parameters.AddWithValue("@Username", txtUname.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    if (CheckBox.Checked)
                    {
                        Response.Cookies["UNAME"].Value = txtUname.Text;
                        Response.Cookies["PASS"].Value = txtPassword.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                        Response.Cookies["PASS"].Expires = DateTime.Now.AddDays(10);
                    }
                    else
                    {

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PASS"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string Utype = dt.Rows[0][5].ToString().Trim();

                    if(Utype=="User")
                    {
                        Session["Username"] = txtUname.Text;
                        Response.Redirect("~/UserHome.aspx");
                    }
                    if(Utype=="Admin")
                    {
                        Session["Username"] = txtUname.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }
                }
                else
                {
                    lblErrorMessage1.Text = "Login Faild........!";
                }
                // Response.Write("<script> alert('Registration Successfully Done..!!'); </script>");
                clr();
                _con.Close();

            }

        }

        private void clr()
        {
            txtUname.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtUname.Focus();
        }
    }
}