using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
public partial class moreproductdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String productid = Request.QueryString["pid"];
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "select *,brandname from addproduct,addbrand where productid=@pkid and addproduct.brandid=addbrand.brandid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pkid", productid);
        myconn.Open();
        SqlDataReader myreader;
        myreader = mycomm.ExecuteReader();
        myreader.Read();
        Label2.Text = myreader["productname"].ToString();
        Label3.Text = myreader["feature"].ToString();
        Label1.Text = myreader["stock"].ToString();
        Label8.Text = myreader["brandname"].ToString();
        int rt, dis, remcost, st;
        st = Convert.ToInt32(myreader["stock"].ToString());
        rt = Convert.ToInt32(myreader["rate"].ToString());
        dis = Convert.ToInt32(myreader["discount"].ToString());
        remcost = rt - ((dis * rt) / 100);
        Label4.Text = remcost.ToString();
        Label6.Text = dis.ToString();
        Label5.Text = rt.ToString();
        Image2.ImageUrl = "images/" + myreader["picture"].ToString();
        myreader.Close();
        myconn.Close();
        if (st <= 0)
        {
            Button1.Enabled = false;
            Button1.Text = "Out of Stock";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int r, qt, tcost;
        r = Convert.ToInt32(Label4.Text);
        qt = Convert.ToInt32(TextBox1.Text);
        tcost = r * qt;
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q =" insert into cart Values(@pic,@pname,@qty,@price,@tc,@sessid,@prodid)";
        mycomm = new SqlCommand(q,myconn);
        mycomm.Parameters.AddWithValue("@pic", Path.GetFileName(Image2.ImageUrl));
        mycomm.Parameters.AddWithValue("@pname", Label2.Text);
        mycomm.Parameters.AddWithValue("@qty", qt);
        mycomm.Parameters.AddWithValue("@price", r);
        mycomm.Parameters.AddWithValue("@tc", tcost);
        mycomm.Parameters.AddWithValue("@sessid", Session.SessionID);
        mycomm.Parameters.AddWithValue("@prodid", Request.QueryString["pid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Session.Add("sessid", Session.SessionID);
        Response.Redirect("cartdisplay.aspx");


    }
}