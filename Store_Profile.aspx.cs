using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Store_Profile : System.Web.UI.Page
{
    ClassCon c1 = new ClassCon();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Store"] != null)
        {
            string id = Request.QueryString["Store"].ToString();
            if (!IsPostBack)
            {
                Products(id);
                Photogallery(id);
                StoreHour(id);
            }
            string str = "Select * from tbl_Store where S_id='" + id + "' ";
            SqlDataReader rd;
            rd = c1.selectdr(str);
            if (rd.Read())
            {
                Label1.Text = rd["name"].ToString();
                Label5.Text = "Welcome in "+rd["name"].ToString();
                Image1.ImageUrl = rd["Cover"].ToString();
                Label6.Text = rd["About_Store"].ToString();
            }
        }


    }
    public void StoreHour(string id)
    {
        string str = "Select * from tbl_Storehours where Store_id='" + id + "'";
        DataList2.DataSource = c1.selectds(str);
        DataList2.DataBind();
    }
    public void Products(string id)
    {
        string str = "Select * from tbl_Products where Store_id='"+id+"'";
        DataList3.DataSource = c1.selectds(str);
        DataList3.DataBind();
    }
    public void Photogallery(string id)
    {
        string str = "Select * from tbl_Photogallery where Store_id='" + id + "'";
        DataList1.DataSource = c1.selectds(str);
        DataList1.DataBind();
    }
}