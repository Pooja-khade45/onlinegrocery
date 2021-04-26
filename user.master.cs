using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
public partial class user : System.Web.UI.MasterPage
{
    StringBuilder htmlTable = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["n"] == null)
        {
            Label1.Text = "Guest";
            LinkButton5.Visible = true;
            LinkButton2.Visible = true;
        }
        else
        {
            Label1.Text = Session["n"].ToString();
            LinkButton1.Visible = true;
            LinkButton4.Visible = true;
            LinkButton12.Visible = true;
        }

        SqlConnection myconn,myconn2;
        SqlCommand mycomm,mycomm2;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string q = "SELECT * from addcategory";
        mycomm = new SqlCommand(q, myconn);
        
        myconn.Open();
        SqlDataReader myreader = mycomm.ExecuteReader();
        if (myreader.HasRows)
        {
            while (myreader.Read())
            {

                myconn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                myconn2.Open();
                string q1 = "SELECT * from subcategory where maincatid=@mcid";
                mycomm2 = new SqlCommand(q1, myconn2);
                mycomm2.Parameters.AddWithValue("@mcid", myreader["catid"].ToString());
                SqlDataReader myreader2 = mycomm2.ExecuteReader();
                if (myreader2.HasRows)
                {
                    htmlTable.Append("<li class='dropdown mega-dropdown active'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>" + myreader["catname"].ToString() + "<span class='caret'></span></a><div class='dropdown-menu mega-dropdown-menu w3ls_vegetables_menu'><div class='w3ls_vegetables'><ul>");
                    while (myreader2.Read())
                    {
                        htmlTable.Append("<li><a href='productdisplay.aspx?scid=" + myreader2["subcatid"].ToString() + "'>" + myreader2["subcatname"].ToString() + "</a></li>");
                    }
                    htmlTable.Append("</ul></div></div></li>");
                
                }
                else
                {
                    htmlTable.Append("<li><a href='#'>" + myreader["catname"].ToString() + "</a></li>");
                }
                myreader2.Close();
                myreader2.Dispose();
                myconn2.Close();
            }
        }

        myreader.Close();
        myreader.Dispose();
        myconn.Close();
       
        PlaceHolder1.Controls.Add(new Literal { Text = htmlTable.ToString() });
     }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("changepassword.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
        Response.Redirect("home.aspx");

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("categorydisplay.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("contactus.aspx");

    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Response.Redirect("orderhistory.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("searchprodresult.aspx?s=" + TextBox1.Text);
    }
}
