using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Add_Store : System.Web.UI.Page
{
    ClassCon c1 = new ClassCon();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Add New Store 
        string str = "Insert into tbl_Store (Name,Contact_No, E_Mail,About_Store, Address, Status,Cover, Reg_Date) Values";
        str += "(";
        str += "'"+TextBox1.Text+"',";
        str += "'" + TextBox2.Text + "',";
        str += "'" + TextBox5.Text + "',";
        str += "'" + TextBox7.Text + "',";
        str += "'" + Session["Loc"].ToString() + "',";
        str += "'TRUE',";
        str += "'~/Images/images.jpg',";
        str += "'" + DateTime.Now.ToShortDateString()+ "'";
        str += ")";
        c1.executeQry(str);
        MultiView1.ActiveViewIndex = 1;

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string store_id = c1.selectScaler("Select Max(S_Id) from tbl_Store");
        string str = "Insert into tbl_Products (Product_Title, Status, Store_Id) Values";
        str += "(";
        str += "'" + TextBox8.Text + "',";
        str += "'TRUE',";
        str += "'" + store_id + "'";
        str += ")";
        c1.executeQry(str);
        MultiView1.ActiveViewIndex = 1;
        Products();
    }
    public void Products()
    {
        string str = "Select * from tbl_Products where Store_id=(Select Max(S_Id) from tbl_Store)";
        DataList1.DataSource = c1.selectds(str);
        DataList1.DataBind();
    }
    public void Photogallery()
    {
        string str = "Select * from tbl_Photogallery where Store_id=(Select Max(S_Id) from tbl_Store)";
        DataList2.DataSource = c1.selectds(str);
        DataList2.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string store_id = c1.selectScaler("Select Max(S_Id) from tbl_Store");
            string max_id = c1.selectScaler("Select Max(P_Id) from tbl_Photogallery");
                 string uploadFolder = Request.PhysicalApplicationPath + "PHOTO\\";
            string extn = Path.GetExtension(FileUpload1.PostedFile.FileName);
            string profilename = store_id + "_Galleryphoto" + max_id;
            if (extn == ".png" || extn == ".jpg" || extn == ".gif" || extn == ".bmp")
            {
                FileUpload1.SaveAs(uploadFolder + profilename + extn);

                string path = "~/PHOTO/" + profilename + extn;
                //string path;
               // FileUpload1.SaveAs(Server.MapPath("~/Photos/") + FileUpload1.FileName);
               // path = "~/Photos/" + FileUpload1.FileName;
               
                string str = "Insert into tbl_Photogallery (Image_Title, Image_URL, Store_Id) Values";
                str += "(";
                str += "'" + Pgt_title.Text + "',";
                str += "'" + path + "',";
                str += "'" + store_id + "'";
                str += ")";
                c1.executeQry(str);
                MultiView1.ActiveViewIndex = 1;
                Photogallery();
            }
        }

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        if (Monday_Act.SelectedIndex != 0)
        {

            Addhour("Monday", (M_O_T.SelectedValue.ToString() + MO.SelectedValue.ToString()), M_C_T.SelectedValue.ToString() + MC.SelectedValue.ToString());
        }
        if (TUES_ACT.SelectedIndex != 0)
        {
            Addhour("Tuesday", (T_O_T.SelectedValue.ToString() + TO.SelectedValue.ToString()), T_C_T.SelectedValue.ToString() + TC.SelectedValue.ToString());
        }
        if (Wed_Act.SelectedIndex != 0)
        {
            Addhour("Wednesday", (W_O_T.SelectedValue.ToString() + WO.SelectedValue.ToString()), W_C_T.SelectedValue.ToString() + WC.SelectedValue.ToString());
        }
        if (Thrs_Act.SelectedIndex != 0)
        {
            Addhour("Thursday", (TH_O_T.SelectedValue.ToString() + THO.SelectedValue.ToString()), TH_C_T.SelectedValue.ToString() + THC.SelectedValue.ToString());
        }
        if (Friday_Act.SelectedIndex != 0)
        {
            Addhour("Friday", (F_O_T.SelectedValue.ToString() + FO.SelectedValue.ToString()), F_C_T.SelectedValue.ToString() + FC.SelectedValue.ToString());
        }
        if (Sat_Act.SelectedIndex != 0)
        {
            Addhour("Saturday", (S_O_T.SelectedValue.ToString() +SO.SelectedValue.ToString()), S_C_T.SelectedValue.ToString() + SC.SelectedValue.ToString());
        }
        if (Sunday_Act.SelectedIndex != 0)
        {
            Addhour("Sunday", (SU_O_T.SelectedValue.ToString() + SUO.SelectedValue.ToString()), SU_C_T.SelectedValue.ToString() + SUC.SelectedValue.ToString());
        }
        else
        {
            Addhour("Sunday", "", "CLOSE");
        }
        Response.Redirect("View_Stores.aspx");
    }
    public void Addhour(string weekday, string oh, string ch)
    {
        string store_id = c1.selectScaler("Select Max(S_Id) from tbl_Store");
        string str = "Select Count(*) from tbl_Storehours where Weekday='" + weekday+ "' and Store_Id='" + store_id+ "'";
        if (Convert.ToInt32(c1.selectScaler(str)) != 0)
        {
            string stru = "Update tbl_Storehours Set Hour_Start='" + oh + "', Hour_End='" + ch + "' where Weekday='" + weekday + "' and Store_Id='" + store_id + "' ";
            c1.executeQry(stru);
        }
        else
        {
            string stri = "Insert Into tbl_Storehours (Weekday, Hour_Start, Hour_End, Store_Id) Values('" + weekday + "', '" + oh + "', '" + ch + "', '" + store_id + "')";
            c1.executeQry(stri);
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            c1.executeQry("Delete from tbl_Products where PR_Id='" + e.CommandArgument + "'");
            Products();
        }
    }
}