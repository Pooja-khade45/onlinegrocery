using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            int x;
            for (x = 1; x <= 31; x++)
            {
                DropDownList2.Items.Add(x.ToString());
            }
            for (x = 1; x <= 12; x++)
            {
                DropDownList3.Items.Add(x.ToString());
            }
            for (x = 1940; x <= 2020; x++)
            {
                DropDownList4.Items.Add(x.ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "select name from signup where username=@un";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@un", TextBox6.Text);
        myconn.Open();
        object x = mycomm.ExecuteScalar();
        myconn.Close();
        if (x == null)
        {
            myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            q = "insert into signup values(@n,@add,@ct,@st,@ph,@un,@p,@ge,@co,@dt,@pp,@ut)";
            mycomm = new SqlCommand(q, myconn);
            mycomm.Parameters.AddWithValue("@n", TextBox1.Text);
            mycomm.Parameters.AddWithValue("@add", TextBox2.Text);
            mycomm.Parameters.AddWithValue("@ct", TextBox3.Text);
            mycomm.Parameters.AddWithValue("@st", TextBox4.Text);
            mycomm.Parameters.AddWithValue("@ph", TextBox5.Text);
            mycomm.Parameters.AddWithValue("@un", TextBox6.Text);
            mycomm.Parameters.AddWithValue("@p", TextBox7.Text);
            mycomm.Parameters.AddWithValue("@ge", RadioButtonList1.SelectedItem.ToString());
            mycomm.Parameters.AddWithValue("@co", DropDownList1.SelectedItem.ToString());

            String dob = DropDownList2.SelectedItem.ToString() + "-" + DropDownList3.SelectedItem.ToString() + "-" + DropDownList4.SelectedItem.ToString();
            mycomm.Parameters.AddWithValue("@dt", dob);
            mycomm.Parameters.AddWithValue("@pp", FileUpload1.FileName);
            mycomm.Parameters.AddWithValue("@ut", "Normal");
            if (FileUpload1.HasFile == true)
            {
                FileUpload1.SaveAs(MapPath("uploads/" + FileUpload1.FileName));
            }

            myconn.Open();
            int res = mycomm.ExecuteNonQuery();
            myconn.Close();

            if (res == 1)
            {
                Response.Redirect("thx.aspx");
            }
            else
            {
                Label1.Text = "Sign up not successfull,please try again";
            }
        }
        else
        {
            Label2.Text = "Email ID already in use";
        }


        
        


    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q="select name from signup where username=@un";
        mycomm=new SqlCommand(q,myconn);
        mycomm.Parameters.AddWithValue("@un",TextBox6.Text);
        myconn.Open();
        object x= mycomm.ExecuteScalar();
        myconn.Close();
        if(x== null)
        {
            Label2.Text="Available";
        }
        else
        {
            Label2.Text="Not available";
        }


    }
} 