using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class addbrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into addbrand values(@bname,@bpic)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@bname", TextBox1.Text);
        
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
            mycomm.Parameters.AddWithValue("@bpic", FileUpload1.FileName);
        }
        else
        {
            mycomm.Parameters.AddWithValue("@bpic", "no-image.jpeg");
        }
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "Brand added successfully";
        }
        else
        {
            Label2.Text = "Brand not added successfully";
        }
    }
}