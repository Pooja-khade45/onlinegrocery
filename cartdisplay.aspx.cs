using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cartdisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "Select sum(totalcost) from cart where sessionid=@sessid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sessid", Session["sessid"]);
        myconn.Open();
        Label2.Text = mycomm.ExecuteScalar().ToString();
        myconn.Close();

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("categorydisplay.aspx");
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "Select sum(totalcost) from cart where sessionid=@sessid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sessid", Session["sessid"]);
        myconn.Open();
        Label2.Text = mycomm.ExecuteScalar().ToString();
        myconn.Close();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Add("tbill", Label2.Text);
        Response.Redirect("displaycheckout.aspx");
    }

    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 0)
        {
            Label3.Text = "your shopping cart is empty.";
            Panel1.Visible = false;
        }
    }
}