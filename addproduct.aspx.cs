using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into addproduct values(@pname,@catid,@subcatid,@bid,@ft,@rt,@pp,@st,@dis)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@catid", DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@subcatid", DropDownList2.SelectedValue);
        mycomm.Parameters.AddWithValue("@bid", DropDownList3.SelectedValue);
        mycomm.Parameters.AddWithValue("@ft", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@rt", TextBox3.Text);
 

        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
            mycomm.Parameters.AddWithValue("@pp",FileUpload1.FileName);
        }
        else
        {
            mycomm.Parameters.AddWithValue("@pp", "no-image.jpeg");
        }
        mycomm.Parameters.AddWithValue("@st", TextBox5.Text);
        mycomm.Parameters.AddWithValue("@dis", TextBox4.Text);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "Product  added successfully";
        }
        else
        {
            Label2.Text = "Product not added successfully";
        }
    }
}