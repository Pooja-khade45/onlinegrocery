using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into feedback values(@n,@un,@ph,@rate,@uf,@mp,@pn,@co)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@un", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@ph", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@rate",RadioButtonList1.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@uf", RadioButtonList2.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@mp", RadioButtonList3.SelectedItem.ToString());
        mycomm.Parameters.AddWithValue("@pn", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@co", TextBox5.Text);
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label1.Text = "Message successfully Submitted";
        }
        else
        {
            Label1.Text = "Not successfull,please try  again";
        }
    }
}