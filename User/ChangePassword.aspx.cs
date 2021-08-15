using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LibraryMgmtSystem
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnchngnewpw_Click1(object sender, EventArgs e)
        {
            if (txtnewpass.Text != txtconfirmnewpass.Text)
            {
                if (IsPostBack)
                {
                    Response.Write("<script language='javascript'>window.alert('Passwords do not Match...Password Change Failed...Try Again');window.location.href='ChangePassword.aspx';</script>");
                }
            }
            else
            {
                string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
                SqlConnection con = new SqlConnection(connstr);
                con.Open();

                SqlCommand cmd = new SqlCommand("update user_details set user_pass=('" + txtnewpass.Text + "'),user_passconfirm=('" + txtconfirmnewpass.Text + "') where user_name =('" + txtunamenewchng.Text + "')", con);
                cmd.ExecuteNonQuery();
                if (IsPostBack)
                {
                    Response.Write("<script language='javascript'>window.alert('Password Changed Successfully...Login To Continue');window.location.href='UserLogin.aspx';</script>");
                }
            }
        }
    }
}
