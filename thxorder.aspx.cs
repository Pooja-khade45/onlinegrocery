using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.SessionState;
using System.Reflection;
public partial class thxorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection myconn, myconn1;
        SqlCommand mycomm;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        myconn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "select * from cart where sessionid=@sessid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sessid", Session["sessid"].ToString());
        myconn.Open();
        myconn1.Open();
        SqlDataReader myreader;

        myreader = mycomm.ExecuteReader();
        if (myreader.HasRows)
        {
            while (myreader.Read())
            {
                q = "update addproduct set stock=stock-@st where productid=@pid";
                mycomm = new SqlCommand(q, myconn1);
                mycomm.Parameters.AddWithValue("@st", myreader["quantity"].ToString());
                mycomm.Parameters.AddWithValue("@pid", myreader["productid"].ToString());
                mycomm.ExecuteNonQuery();
            }
        }





        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        q = "select orderno,billamount from finalorder where sessionid=@sessid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sessid", Session["sessid"]);
        myconn.Open();

        myreader = mycomm.ExecuteReader();
        myreader.Read();
        Label2.Text = myreader["orderno"].ToString();
        Label3.Text = myreader["billamount"].ToString();
        myreader.Close();
        myconn.Close();
        if (Session["n"] != null)
        {
            String n = Session["n"].ToString();
            String un = Session["un"].ToString();
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

            regenerateId();
            //Session.Add("sessid", sessid);
            Session.Add("n", n);
            Session.Add("un", un);

        }

    }
    void regenerateId()
    {
        System.Web.SessionState.SessionIDManager manager = new System.Web.SessionState.SessionIDManager();
        string oldId = manager.GetSessionID(Context);
        string newId = manager.CreateSessionID(Context);
        bool isAdd = false, isRedir = false;
        manager.SaveSessionID(Context, newId, out isRedir, out isAdd);
        HttpApplication ctx = (HttpApplication)HttpContext.Current.ApplicationInstance;
        HttpModuleCollection mods = ctx.Modules;
        System.Web.SessionState.SessionStateModule ssm = (SessionStateModule)mods.Get("Session");
        System.Reflection.FieldInfo[] fields = ssm.GetType().GetFields(BindingFlags.NonPublic | BindingFlags.Instance);
        SessionStateStoreProviderBase store = null;
        System.Reflection.FieldInfo rqIdField = null, rqLockIdField = null, rqStateNotFoundField = null;
        foreach (System.Reflection.FieldInfo field in fields)
        {
            if (field.Name.Equals("_store")) store = (SessionStateStoreProviderBase)field.GetValue(ssm);
            if (field.Name.Equals("_rqId")) rqIdField = field;
            if (field.Name.Equals("_rqLockId")) rqLockIdField = field;
            if (field.Name.Equals("_rqSessionStateNotFound")) rqStateNotFoundField = field;
        }
        object lockId = rqLockIdField.GetValue(ssm);
        if ((lockId != null) && (oldId != null)) store.ReleaseItemExclusive(Context, oldId, lockId);
        rqStateNotFoundField.SetValue(ssm, true);
        rqIdField.SetValue(ssm, newId);
    }

}