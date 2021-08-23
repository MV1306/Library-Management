using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LibraryManagementSys
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
        string GUIDvalue;
        DataTable dt = new DataTable();
        int Uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                GUIDvalue = Request.QueryString["Uid"];
                if (GUIDvalue != null)
                {
                    SqlCommand cmd = new SqlCommand("select * from forgotpass where id='" + GUIDvalue + "'", con);
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        Uid = Convert.ToInt32(dt.Rows[0][1]);
                    }
                    else
                    {
                        Response.Write("<script>alert('Your Password Reset Link is Expired or Invalid !');</script>");
                    }
                }
                else
                {
                    Response.Redirect("~/ForgotPassword.aspx");
                }
            }
            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    txtnewpass.Visible = true;
                    txtconfirmnewpass.Visible = true;
                    btnchngnewpw.Visible = true;
                }
                else
                {
                    Response.Write("<script>alert('Your Password Reset Link is Expired or Invalid !');</script>");
                }
            }
        }

        protected void btnchngnewpw_Click1(object sender, EventArgs e)
        {
            if (txtnewpass.Text != "" && txtconfirmnewpass.Text != "" && txtnewpass.Text == txtconfirmnewpass.Text)
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("update [user] set userpass='" + txtnewpass.Text + "',userconfirmpass='"+txtconfirmnewpass.Text+"' where id='" + Uid + "'", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    SqlCommand cmd2 = new SqlCommand("delete from forgotpass where Uid='" + Uid + "'", con);
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script language='javascript'>window.alert('Password Changed Successfully. Login to Continue');window.location.href='Login.aspx';</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('All fields are mandatory');</script>");
            }
        }
    }
}
