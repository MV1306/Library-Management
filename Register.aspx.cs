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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnreg_Click1(object sender, EventArgs e)
        {

            if (txtpass.Text != txtpassconfirm.Text)
            {
                if (IsPostBack)
                {
                    Response.Write("<script language='javascript'>window.alert('Passwords do not Match...Registration Failed...Try Again');window.location.href='Register.aspx';</script>");
                }
            }
            else
            {
                string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
                SqlConnection con = new SqlConnection(connstr);
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into user_details(user_fullname,user_name,user_pass,user_pass_confirm) values('" + txtname.Text + "','" + txtusername.Text + "','" + txtpass.Text + "','" + txtpassconfirm.Text + "')", con);
                cmd.ExecuteNonQuery();
                if (IsPostBack)
                {
                    Response.Write("<script language='javascript'>window.alert('User Registered Successfully. Login to Continue');window.location.href='UserLogin.aspx';</script>");
                }
            }
        }
    }
}