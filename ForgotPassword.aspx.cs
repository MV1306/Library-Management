using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace LibraryManagementSys
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnchngpw_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from [User] where useremail='" + txtemailchng.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("insert into forgotpass values('" + myGUID + "','" + Uid + "',getdate())", con);
                    cmd1.ExecuteNonQuery();
                    //send email
                    try
                    {
                        String ToEmailAddress = dt.Rows[0][3].ToString();
                        String Username = dt.Rows[0][2].ToString();
                        String EmailBody = "Hi " + Username + ",<br/><br/> Click the link below to reset your password <br/><br/> http://localhost:56395/ChangePassword.aspx?Uid=" + myGUID;
                        MailMessage PassRecMail = new MailMessage("manojprabakaran2001@gmail.com", ToEmailAddress);
                        PassRecMail.Body = EmailBody;
                        PassRecMail.IsBodyHtml = true;
                        PassRecMail.Subject = "Reset Password";
                        PassRecMail.Priority = MailPriority.High;
                        SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                        SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                        SMTP.UseDefaultCredentials = false;
                        SMTP.Credentials = new NetworkCredential()
                        {
                            UserName = "manojprabakaran2001@gmail.com",
                            Password = "Manojvarsha"
                        };
                        SMTP.EnableSsl = true;
                        SMTP.Send(PassRecMail);
                        Response.Write("<script>alert('Check your email to reset your password.');</script>");
                        txtemailchng.Text = "";
                    }
                    catch (Exception)
                    {
                        Response.Write("<script>alert('Message not sent !');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('There is no account associated with this email ID!');</script>");
                }
            }
        }
    }

}