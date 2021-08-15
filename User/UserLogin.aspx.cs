using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace LibraryMgmtSystem
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            SqlConnection con = new SqlConnection(connstr);
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from user_details where user_name=@username and user_pass=@password", con);
            cmd.Parameters.AddWithValue("@username", txtunamelog.Text);
            cmd.Parameters.AddWithValue("@password", txtpasslog.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count>0)
            {
                Session["user"] = txtunamelog.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                if (IsPostBack)
                {
                    Response.Write("<script language='javascript'>window.alert('Invalid Username or Password...Please Try Again');window.location.href='UserLogin.aspx';</script>");
                }
            }
        }
    }
}