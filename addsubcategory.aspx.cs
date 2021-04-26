using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class addsubcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into subcategory values(@scname,@mcatid,@scpic)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@scname", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@mcatid", DropDownList1.SelectedValue);
        
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
            mycomm.Parameters.AddWithValue("@scpic", FileUpload1.FileName);
        }
        else
        {
            mycomm.Parameters.AddWithValue("@scpic", "no-image.jpeg");
        }
        myconn.Open();
        int res = mycomm.ExecuteNonQuery();
        myconn.Close();
        if (res == 1)
        {
            Label2.Text = "Sub Category added successfully";
        }
        else
        {
            Label2.Text = "Sub Category not added successfully";
        }
    }
}