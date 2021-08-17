using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryMgmtSystem
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]!=null)
            {
                lbluser.Text = Session["user"].ToString();
            }
        }

        protected void lbtnlogout_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Session.Remove("user");
                Session.RemoveAll();
                Response.Write("<script language='javascript'>window.alert('Logged Out Successfully');window.location.href='UserLogin.aspx';</script>");
            }
        }
    }
}