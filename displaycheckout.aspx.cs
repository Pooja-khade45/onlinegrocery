using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class displaycheckout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
        {
            Response.Redirect("error.aspx");
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 1)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection myconn;
        SqlCommand mycomm;
        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into finalorder values(@pmode,@ccno,@coname,@hname,@expiry,@saddr,@bamt,@username,@orderdt,@sessid)";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@pmode", RadioButtonList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@ccno", TextBox1.Text);
        mycomm.Parameters.AddWithValue("@coname",DropDownList1.SelectedValue);
        mycomm.Parameters.AddWithValue("@hname", TextBox2.Text);
        mycomm.Parameters.AddWithValue("@expiry", TextBox3.Text);
        mycomm.Parameters.AddWithValue("@saddr", TextBox4.Text);
        mycomm.Parameters.AddWithValue("@bamt",Session["tbill"]);
        mycomm.Parameters.AddWithValue("@username",Session["un"]);
        mycomm.Parameters.AddWithValue("@orderdt", DateTime.Now);
        mycomm.Parameters.AddWithValue("@sessid", Session["sessid"]);
        myconn.Open();
        mycomm.ExecuteNonQuery();
        myconn.Close();
        Response.Redirect("thxorder.aspx");
    }
}