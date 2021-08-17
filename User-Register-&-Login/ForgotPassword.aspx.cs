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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnchngpw_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            SqlConnection con = new SqlConnection(connstr);
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from user_details where user_name=@username", con);
            cmd.Parameters.AddWithValue("@username", txtunamechng.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("ChangePassword.aspx");
            }
            else
            {
                if (IsPostBack)
                {
                    Response.Write("<script language='javascript'>window.alert('Username Not Found');window.location.href='ForgotPassword.aspx';</script>");
                }
            }
        }
    }
}