using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace Online_Book_Store_WebForm
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPass_Click(object sender, EventArgs e)
        {
            using (SqlConnection _con = new SqlConnection(ConfigurationManager.ConnectionStrings["OBSDB"].ConnectionString))
            {
                _con.Open();
                SqlCommand cmd = new SqlCommand("select * from tblUser where Email=@Email", _con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    string myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("insert into ForgotPass(Id,Uid,RequestDateTime)values('" + myGUID + "','" + Uid + "',GETDATE())", _con);
                    cmd1.ExecuteNonQuery();

                    //Send Reset Link via Email

                    string ToEmailAddress = dt.Rows[0][4].ToString();
                    string Username = dt.Rows[0][1].ToString();
                    string EmailBody = "Hi ," + Username + ", <br/><br/> Click the link below to reset your password<br/> <br/>   https://localhost:44345/RecoverPassword.aspx?id=" + myGUID;


                    MailMessage PassRecMail = new MailMessage("ridetechfusion@gmail.com", ToEmailAddress);

                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";


                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("ridetechfusion@gmail.com", "cqmt wszx awjh kbef");
                        client.Host = "smtp.gmail.com";
                        client.Port = 578;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;


                        client.Send(PassRecMail);
                    }

                    //--------------
                    lblResetPassMge.Text = "Reset  Link Send....! Check Your Email for reset password";
                    lblResetPassMge.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;
                }
                else
                {
                    lblResetPassMge.Text = "OOps! This Email Does't Exist.......Try Again ";
                    lblResetPassMge.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();
                }
            }
        }
    }
}