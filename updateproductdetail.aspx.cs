using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class productdetail : System.Web.UI.Page
{
    string cid, scid,bid;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            String bkid = Request.QueryString["bid"];
            SqlConnection myconn;
            SqlCommand mycomm;
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q = "select * from addproduct where productid=@p";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@p", bkid);
            myconn.Open();
            SqlDataReader myreader;
            myreader = mycomm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["productname"].ToString();
            TextBox2.Text = myreader["feature"].ToString();
            TextBox3.Text = myreader["rate"].ToString();

            Image2.ImageUrl = "images/" + myreader["picture"].ToString();
            cid = myreader["catid"].ToString();
            scid = myreader["subcatid"].ToString();
            bid = myreader["brandid"].ToString();
            myreader.Close();
            myconn.Close();
        }
    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DropDownList1.Items.FindByValue(cid).Selected = true;
        }
    }
    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DropDownList2.Items.FindByValue(scid).Selected = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "update addproduct set productname=@pname,catid=@catid,subcatid=@scatid,feature=@f,rate=@r,picture=@img where productid=@bkid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@catid",DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@scatid",DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@b",DropDownList3.SelectedValue);
        mycomm.Parameters.AddWithValue("@f",TextBox2.Text);
        mycomm.Parameters.AddWithValue("@r", TextBox3.Text);
        if (FileUpload1.HasFile == true)
        {
            mycomm.Parameters.AddWithValue("@img", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            mycomm.Parameters.AddWithValue("@img", Path.GetFileName(Image2.ImageUrl));
        }
        mycomm.Parameters.AddWithValue("@bkid", Request.QueryString["bid"]);
        myconn.Open();
       int res= mycomm.ExecuteNonQuery();
        myconn.Close();
         if (res == 1)
        {
            Label2.Text = "product updated successfully";
        }
        else
        {
            Label2.Text = "product not updated successfully";
        }
    
        q = "select * from addproduct where productid=@p";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@p", Request.QueryString["bid"]);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        TextBox1.Text = myreader["productname"].ToString();
        TextBox2.Text = myreader["feature"].ToString();
        TextBox3.Text = myreader["rate"].ToString();

        Image2.ImageUrl = "images/" + myreader["picture"].ToString();
        cid = myreader["catid"].ToString();
        scid = myreader["subcatid"].ToString();
        myreader.Close();
        myconn.Close();


        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("updateproduct.aspx");

    }
    protected void DropDownList3_DataBound(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            DropDownList3.Items.FindByValue(bid).Selected = true;
        }
    }
}