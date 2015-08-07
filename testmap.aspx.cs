using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testmap : System.Web.UI.Page
{
    ClassCon c1 = new ClassCon();
    protected void Page_Load(object sender, EventArgs e)
    {


        txtsearch.Text = Session["ID"].ToString();
        
    }

    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        txtsearch.Text = Session["ID"].ToString(); 
    }
    protected void txtsearch_Load(object sender, EventArgs e)
    {
        txtsearch.Text = Session["ID"].ToString();
    }
    protected void txtsearch_DataBinding(object sender, EventArgs e)
    {
        txtsearch.Text = Session["ID"].ToString();
    }
}