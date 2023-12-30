using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



namespace Online_Book_Store_WebForm
{
    public partial class SignUp : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            

            if (isformvalid())
            {
                using (SqlConnection _con = new SqlConnection(ConfigurationManager.ConnectionStrings["OBSDB"].ConnectionString))
                {
                    _con.Open();
                    SqlCommand cmd = new SqlCommand("insert into tblUser (Username,Password,FName,Email,Usertype) values('" + txtUname.Text + "','" + txtPassword.Text + "','" + txtFname.Text + "','" + txtEmail.Text + "','User')", _con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registration Successfully Done..!!'); </script>");
                    clr();
                    _con.Close();
                   
                }
                Response.Redirect("~/Login.aspx");
            }
            else
                Response.Write("<script> alert('Registration Failed..!!'); </script>");
        }

        private bool isformvalid()
        {
            if (txtUname.Text == "")
            {
                Response.Write("<script> alert('User Name is not Valid..!!'); </script>");
                txtUname.Focus();
                return false;
            }
            else if (txtPassword.Text == "")
            {
                Response.Write("<script> alert('Password is not Valid..!!'); </script>");
                txtPassword.Focus();
                return false;
            }
            else if (txtPassword.Text != txtComfirmPass.Text)
            {
                Response.Write("<script> alert('Password is not Match..!!'); </script>");
                txtComfirmPass.Focus();
                return false;
            }
            else if (txtFname.Text == "")
            {
                Response.Write("<script> alert('Name is not Valid..!!'); </script>");
                txtFname.Focus();
                return false;
            }
            else if (txtEmail.Text == "")
            {
                Response.Write("<script> alert('Email is not Valid..!!'); </script>");
                txtEmail.Focus();
                return false;
            }
            return true;
        }

        private void clr()
        {
            txtUname.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtComfirmPass.Text = string.Empty;
            txtFname.Text = string.Empty;
            txtEmail.Text = string.Empty;
        }

    }
    
}