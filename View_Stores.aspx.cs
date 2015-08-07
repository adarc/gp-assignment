﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Stores : System.Web.UI.Page
{
    ClassCon c1 = new ClassCon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            SelectData("Select * from tbl_Store order By S_Id Desc");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        SelectData("Select * from tbl_Store order By S_Id Desc");

    }
    public void SelectData(string str)
    {
       
        GridView1.DataSource = c1.selectds(str);
        GridView1.DataBind();
        Label3.Text="[ "+ GridView1.Rows.Count.ToString()+" ]";
        if (GridView1.Rows.Count < 1)
        {
            LinkButton1.Visible = true;
           
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SelectData("Select * from tbl_Store where Name Like '%"+TextBox1.Text+"' order By S_Id Desc");
        Label2.Visible = true;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SelectData("Select * from tbl_Store order By S_Id Desc");
        LinkButton1.Visible = false;
        Label2.Visible = false;
        TextBox1.Text = "";
    }
}