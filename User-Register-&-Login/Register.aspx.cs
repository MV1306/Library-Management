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
            if(Page.IsValid)
            {
                string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
                SqlConnection con = new SqlConnection(connstr);
                con.Open();

                SqlCommand cmd = new SqlCommand("insert into [User](useremail,phno,userdob,gender,username,userpass,userconfirmpass) values('" + txtemail.Text + "','" + txtphno.Text + "','" + txtdob.Text + "','" + rbtngender.SelectedItem + "','" + txtusername.Text + "','" + txtpass.Text + "','" + txtpassconfirm.Text + "')", con);
                cmd.ExecuteNonQuery();
                if (IsPostBack)
                {
                    Response.Write("<script language='javascript'>window.alert('User Registered Successfully. Login to Continue');window.location.href='Login.aspx';</script>");
                }
            }
            else
            {
                if (IsPostBack)
                {
                    Response.Write("<script language='javascript'>window.alert('Username or Email ID Already Exists...Try Again...or Login');window.location.href='Register.aspx';</script>");
                }
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            SqlConnection con = new SqlConnection(connstr);
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from [user] where username=@username", con);
            cmd.Parameters.AddWithValue("@username", txtusername.Text);
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            if (count == 0) 
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string connstr = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
            SqlConnection con = new SqlConnection(connstr);
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from [user] where useremail=@email", con);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            int count = (int)cmd.ExecuteScalar();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            if (count == 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }
    }
}