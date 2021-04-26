using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class passwordchange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String query = "update signup set password=@np where username=@un and password=@op";
        mycomm = new SqlCommand(query, myconn);
        mycomm.Parameters.AddWithValue("@np", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@un", Session["un"].ToString());
        mycomm.Parameters.AddWithValue("@op", TextBox1.Text);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "password changed successfully";
        }
        else
        {
            Label2.Text = "Current password incorrect";
        }
    }
}