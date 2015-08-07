using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] != null)
        {
            Label2.Text = "Welcome " + Session["Login"].ToString().ToUpper();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["Login"] = null;
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }
}
