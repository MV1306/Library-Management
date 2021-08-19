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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            SqlConnection con = new SqlConnection(connstr);
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from [user] where username='" + txtunamelog.Text + "' and userpass='" + txtpasslog.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["user"] = txtunamelog.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                if (IsPostBack)
                {
                    Response.Write("<script language='javascript'>window.alert('Invalid Username or Password...Please Try Again...OR...Sign Up');window.location.href='Login.aspx';</script>");
                }
            }

        }
    }
}