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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnchngnewpw_Click1(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            SqlConnection con = new SqlConnection(connstr);
            con.Open();

            SqlCommand cmd = new SqlCommand("update [user] set userpass=('" + txtnewpass.Text + "'),userconfirmpass=('" + txtconfirmnewpass.Text + "') where username =('" + Session["user"].ToString() + "')", con);
            cmd.ExecuteNonQuery();
            if (IsPostBack)
            {
                Response.Write("<script language='javascript'>window.alert('Password Changed Successfully...Login To Continue');window.location.href='Login.aspx';</script>");
            }
        }
    }
}