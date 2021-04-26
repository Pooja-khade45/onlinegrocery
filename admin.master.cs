using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ad"] == null)
        {
            Response.Redirect("error.aspx");
        }
        else
        {
            Label1.Text = Session["n"].ToString();
        }
        if(Request.UserAgent.IndexOf("applewebkit")>0)
        {
            Request.Browser.Adapters.Clear();
        }

        

    }
   protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("passwordchange.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpanel");

    }
  
}
