using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q="insert into contactus values(@n,@un,@ph,@msg)";
        mycomm=new SqlCommand(q,myconn);
        mycomm.Parameters.AddWithValue("@n",TextBox1.Text);
        mycomm.Parameters.AddWithValue("@un",TextBox2.Text);
        mycomm.Parameters.AddWithValue("@ph",TextBox3.Text);
        mycomm.Parameters.AddWithValue("@msg",TextBox4.Text);
        myconn.Open();
        int res=mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res==1)
        {
            Label1.Text="Message successfully submitted";
        }
        else
        {
            Label1.Text="Not successfull,please try again";
        }

           

    }
}