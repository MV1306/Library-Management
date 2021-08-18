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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            SqlConnection con = new SqlConnection(connstr);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into [User](useremail,phno,userdob,gender,username,userpass,userconfirmpass) values('"+txtemail.Text+"','"+txtphno.Text+"','"+txtdob.Text+"','"+rbtngender.SelectedItem+"','"+txtusername.Text+"','"+txtpass.Text+"','"+txtpassconfirm.Text+"')", con);
            cmd.ExecuteNonQuery();
            if (IsPostBack)
            {
                Response.Write("<script language='javascript'>window.alert('User Registered Successfully. Login to Continue');window.location.href='UserLogin.aspx';</script>");
            }
        }

    }
}