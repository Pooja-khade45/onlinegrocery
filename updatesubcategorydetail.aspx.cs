using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class subcategorydetail : System.Web.UI.Page
{
    String mcid;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q = "select * from subcategory where subcatid=@scid";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@scid", Request.QueryString["sid"]);
            myconn.Open();
            SqlDataReader myreader;
            myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["subcatname"].ToString();
            Image2.ImageUrl = "images/" + myreader["subcatpic"].ToString();
            mcid = myreader["maincatid"].ToString();


            myreader.Close();
            myconn.Close();

        }
    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.FindByValue(mcid).Selected = true;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "update subcategory set subcatname=@scname,maincatid=@mcatid,subcatpic=@scpic where subcatid=@scid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@scname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@mcatid", DropDownList1.SelectedValue);
        if (FileUpload1.HasFile)
        {
            mycomm.Parameters.AddWithValue("@scpic", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@scpic", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@scid", Request.QueryString["sid"]);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "Subcategory updated successfully";
        }
        else
        {
            Label2.Text = "Subcategory not updated successfully";
        }
        q = "select * from subcategory where subcatid=@scid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@scid", Request.QueryString["sid"]);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        TextBox1.Text = myreader["subcatname"].ToString();
        Image2.ImageUrl = "images/" + myreader["subcatpic"].ToString();


        myreader.Close();
        myconn.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatesubcategory.aspx");
    }

}