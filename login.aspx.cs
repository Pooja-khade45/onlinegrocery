using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn; 
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String Query = "select name from signup where username=@un and password=@p";
        mycomm = new SqlCommand(Query, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@p", TextBox2.Text);
        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();
        if (x == null)
        {
            Label1.Text = "Incorrect username/password";
        }
        else
        {
            Session.Add("n",x.ToString());
            Session.Add("un",TextBox1.Text);
            Query="select usertype from signup where username=@un";
            mycomm=new SqlCommand(Query,myconn);
            mycomm.Parameters.AddWithValue("@un",TextBox1.Text);
            myconn.Open();
            object res = mycomm.ExecuteScalar();
            myconn.Close();
            if(res.ToString()=="Normal")
            {
                Response.Redirect("home.aspx");
            }
            else if(res.ToString()=="Admin")
            {
                Session.Add("ad", "Admin");
                Response.Redirect("adminpanel.aspx");
            }
        }
    }
}