using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class addcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
       protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into addcategory values(@cname,@cpic)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@cname", TextBox1.Text);
        
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
            mycomm.Parameters.AddWithValue("@cpic", FileUpload1.FileName);
        }
        else
        {
            mycomm.Parameters.AddWithValue("@cpic", "no-image.jpeg");
        }

        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "Category added successfully";
        }
        else
        {
            Label2.Text = "Category not added successfully";
        }
    }
}