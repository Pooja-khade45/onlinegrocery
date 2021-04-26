using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class categorydetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q = "select * from addcategory where catid=@catid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@catid", Request.QueryString["cid"]);
            myconn.Open();
            SqlDataReader myreader;
            myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["catname"].ToString();
            Image2.ImageUrl = "images/" + myreader["catpic"].ToString();
            myreader.Close();
            myconn.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "update addcategory set catname=@cname,catpic=@cpic where catid=@catid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cname", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@cpic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@cpic", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@catid", Request.QueryString["cid"]);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "category updated successfully";
        }
        else
        {
            Label2.Text = "category not updated successfully";
        }
        q = "select * from addcategory where catid=@catid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@catid", Request.QueryString["cid"]);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        TextBox1.Text = myreader["catname"].ToString();
        Image2.ImageUrl = "images/" + myreader["catpic"].ToString();
        myreader.Close();
        myconn.Close();


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatecategory.aspx");
    }
}