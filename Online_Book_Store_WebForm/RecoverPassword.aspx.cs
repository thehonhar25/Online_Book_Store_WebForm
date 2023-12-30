using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Online_Book_Store_WebForm
{
    public partial class RecoverPassword : System.Web.UI.Page
    {
        string GUIDvalue;
        DataTable dt = new DataTable();
        int Uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection _con = new SqlConnection(ConfigurationManager.ConnectionStrings["OBSDB"].ConnectionString))
            {
                _con.Open();
                GUIDvalue = Request.QueryString["id"];
                if (GUIDvalue != null)
                {
                    SqlCommand cmd = new SqlCommand("select * from ForgotPass where Id=@Id", _con);
                    cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);

                    sda.Fill(dt);
                    if (dt.Rows.Count!=0) 
                    {
                        Uid = Convert.ToInt32(dt.Rows[0][1]);
                    }
                    else
                    {
                        lblmsg.Text = "Your password Reset link is Expired .....try again";
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                    Response.Redirect("~/Default.aspx");

            }
            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    txtNewPass.Visible = true;
                    txtComfirmNewPass.Visible = true;
                    lblConfirmNewPass.Visible = true;
                    lblNewPass.Visible = true;
                    btnResetPass.Visible = true;
                }
                else
                {
                    lblmsg.Text = "Your password Reset link is Expired .....try again";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }

            }
        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            if (txtNewPass.Text != "" && txtComfirmNewPass.Text !="" && txtNewPass.Text==txtComfirmNewPass.Text)
            {
                using (SqlConnection _con = new SqlConnection(ConfigurationManager.ConnectionStrings["OBSDB"].ConnectionString))
                {
                    _con.Open();
                    SqlCommand sqlCommand = new SqlCommand("Update tblUser set Password=@Password where Uid=@Uid", _con);
                    sqlCommand.Parameters.AddWithValue("@Password", txtNewPass.Text);
                    sqlCommand.Parameters.AddWithValue("@Uid", Uid);
                    sqlCommand.ExecuteNonQuery();


                    SqlCommand sqlCommand2 = new SqlCommand("delete from ForgotPass where Uid='" + Uid + "'", _con);
                    sqlCommand2.ExecuteNonQuery();
                    Response.Write("<script> alert('Password Reset Successfully done...!!');</script>");
                    Response.Redirect("~/Login.aspx");


                }
            }
        }
    }
}