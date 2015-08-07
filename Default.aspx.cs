using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    ClassCon c1 = new ClassCon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Compare Login Condiation
        string str = "Select Count(*) from tbl_login where Login_Id='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"' and status='True'";
        if (Convert.ToInt32(c1.selectScaler(str)) != 0)
        {
            Session.Add("Login", TextBox1.Text);
            Response.Redirect("View_Stores.aspx");
        }
        else
        {
            Label2.Text = "Invalid Login Id Or Password";
        }

    }
}