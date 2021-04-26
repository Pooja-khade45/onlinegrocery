using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class searchbyrate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int minp = Convert.ToInt32(DropDownList2.SelectedValue);
        int maxp = Convert.ToInt32(DropDownList3.SelectedValue);
        if (minp < maxp)
        {
            Response.Redirect("showresultrate.aspx?cid=" + DropDownList1.SelectedValue + "&minprice=" + minp + "&maxprice=" + maxp);
        }
        else
        {
            Label2.Text = "minimum value should be smaller then maximum";
        }

    }
}