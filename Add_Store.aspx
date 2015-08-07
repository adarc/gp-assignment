<%@ Page Title="Add New Store" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Store.aspx.cs" Inherits="Add_Store" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"  
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .pleft{float:left; width:35%;   height:400px;}
    .pright{float:right; width:60%; height:400px;}
         .base_left{height:20px;}
         .ddl{border:1px solid silver; height:30px;}
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div style="background-color:#f2f2f2; border-bottom:1px solid rgb(226,226,226); border-top:1px solid rgb(226,226,226);">
            <div class="Sub_header" style="height:30px; padding-top:10px; padding-bottom:10px;" align="left">
                <table width="100%">
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Calibri" 
                    Font-Size="Large" ForeColor="#336699" Text="ADD NEW STORE"></asp:Label>
                        </td>
                        <td width="200px">
                            </td>
                        <td width="50px">
                            <asp:Button ID="Button1" runat="server" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Calibri" Font-Size="Small" 
                    Height="25px" Text="BACK" PostBackUrl="~/View_Stores.aspx" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div style="width:100%;">
            <div style="width:90%; height: 450px;">
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <div align="center" class="container">
                            <div class="pleft">
                                <div>
                                    <div class="base" style="padding-top:10px;">
                                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                            Font-Size="Large" ForeColor="#336699" Text="STORE BASIC INFORMATION"></asp:Label>
                                    </div>
                                    <div class="base">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="txt_pd" Height="15px" 
                                            placeholder="Store Title" ValidationGroup="ADD" Width="300px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox1" ErrorMessage="Enter Title" Font-Names="Calibri" 
                                            Font-Size="Small" ForeColor="#CC3300" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="base">
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="txt_pd" Height="15px" 
                                            placeholder="Contact Number" ValidationGroup="A" Width="30px" 
                                            Enabled="False">+91</asp:TextBox>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="txt_pd" Height="15px" 
                                            placeholder="Contact Number" ValidationGroup="ADD" Width="253px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBox2" ErrorMessage="Enter Contact" Font-Names="Calibri" 
                                            Font-Size="Small" ForeColor="#CC3300" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="base">
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="txt_pd" Height="15px" 
                                            placeholder="E-Mail ID" ValidationGroup="ADD" Width="300px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="TextBox5" ErrorMessage="Enter E-Mail" Font-Names="Calibri" 
                                            Font-Size="Small" ForeColor="#CC3300" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                                    </div>
                                    <div align="left">
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="txt_pd" Height="150px" 
                                            placeholder="Describe Something About Your Store Here.." TextMode="MultiLine" 
                                            ValidationGroup="ADD" Width="300px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="TextBox1" ErrorMessage="Enter About Store" Font-Names="Calibri" 
                                            Font-Size="Small" ForeColor="#CC3300" ValidationGroup="ADD"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="pright">
                                <div>
                                    <div class="base" style="padding-top:10px;">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                            Font-Size="Large" ForeColor="#336699" Text="STORE LOCATION"></asp:Label>
                                    </div>
                                   
                                    <div class="base">
                                    
                                        <asp:TextBox ID="searchbox" runat="server" CssClass="txt_pd apply" 
                                            Height="15px" placeholder="Search Your Location" TextMode="SingleLine" 
                                            ValidationGroup="ADD" Width="300px"></asp:TextBox> 
                                            <asp:TextBox ID="latbox" runat="server" CssClass="txt_pd" 
                                            Height="15px" placeholder="Latitude" TextMode="SingleLine" 
                                            ValidationGroup="ADD" Width="100px"></asp:TextBox>
                                            <asp:TextBox ID="lngbox" runat="server" CssClass="txt_pd" 
                                            Height="15px" placeholder="Longitude" TextMode="SingleLine" 
                                            ValidationGroup="ADD" Width="100px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                            ControlToValidate="searchbox" ErrorMessage="Search Your Location" 
                                            Font-Names="Calibri" Font-Size="Small" ForeColor="#CC3300" 
                                            ValidationGroup="ADD"></asp:RequiredFieldValidator>
                                    </div>
                                    <div ID="map-canvas" align="left" style="height:190px;">
                                    </div>
                                    <div class="base" style="padding-top: 10px;">
                                        <asp:Button ID="Button2" runat="server" BackColor="#FF9933" 
                                            BorderColor="#DD8500" BorderStyle="Solid" BorderWidth="1px" 
                                            Font-Names="Calibri" Font-Size="Small" ForeColor="White" Height="30px" 
                                            onclick="Button2_Click" Text="SUBMIT &amp; CONTINUE" ValidationGroup="ADD" 
                                            Width="150px" />
                                        &nbsp;
                                        <asp:Button ID="Button3" runat="server" BorderColor="#CCCCCC" 
                                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Calibri" Font-Size="Small" 
                                            Height="30px" Text="CANCEL" ValidationGroup="ADD" Width="100px" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div align="center" class="container">
                            <div class="pleft">
                                <div>
                                    <div class="base" style="padding-top:10px;">
                                        <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                            Font-Size="Large" ForeColor="#336699" Text="PRODUCT RANGE"></asp:Label>
                                    </div>
                                    <div class="base">
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="txt_pd" Height="15px" 
                                            placeholder="Store Title" ValidationGroup="Product" Width="300px"></asp:TextBox>
                                        <asp:Button ID="Button6" runat="server" BorderColor="#CCCCCC" 
                                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Calibri" Font-Size="Small" 
                                            Height="28px" Text="ADD" ValidationGroup="Product" Width="80px" 
                                            onclick="Button6_Click" />
                                    </div>
                                    <div align="left">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                            ControlToValidate="TextBox8" ErrorMessage="Enter Product Category" 
                                            Font-Names="Calibri" Font-Size="Small" ForeColor="#CC3300" 
                                            ValidationGroup="Product"></asp:RequiredFieldValidator>
                                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                                        <ItemTemplate>
                                        <div style="height:15px; padding-top:3px; padding-bottom:5px; min-width:50px;">
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete" 
                                                Font-Bold="False" Font-Names="Calibri" Font-Size="Small" Font-Underline="False" 
                                                ForeColor="#CC3300">X</asp:LinkButton>
                                            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                                Font-Size="Small" ForeColor="Black" Text='<%# Eval("Product_Title") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                        </asp:DataList>
                                    </div>
                                </div>
                            </div>
                            <div class="pright">
                                <div>
                                    <div class="base" style="padding-top:10px;">
                                        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                            Font-Size="Large" ForeColor="#336699" Text="PHOTO GALLERY"></asp:Label>
                                    </div>
                                    <div class="base">
                                        <asp:TextBox ID="Pgt_title" runat="server" CssClass="txt_pd" 
                                            Height="15px" placeholder="Search Your Location" TextMode="SingleLine" 
                                            ValidationGroup="IMAGE" Width="300px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                            ControlToValidate="Pgt_title" ErrorMessage="Enter Product Category" 
                                            Font-Names="Calibri" Font-Size="Small" ForeColor="#CC3300" 
                                            ValidationGroup="IMAGE"></asp:RequiredFieldValidator>
                                    </div>
                                     <div class="base">
                                       
                                         <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                             Font-Size="Medium" ForeColor="#CC6600" Text="UPLOAD IMAGE"></asp:Label>
                                         &nbsp;
                                         <asp:FileUpload ID="FileUpload1" runat="server" />
                                       
                                         &nbsp;</div>
                                    <div class="base" style="padding-top: 10px;">
                                        <asp:Button ID="Button4" runat="server" BackColor="#FF9933" 
                                            BorderColor="#DD8500" BorderStyle="Solid" BorderWidth="1px" 
                                            Font-Names="Calibri" Font-Size="Small" ForeColor="White" Height="30px" 
                                            Text="UPLOAD" ValidationGroup="IMAGE" Width="100px" 
                                            onclick="Button4_Click" />
                                    </div>
<div align="left" style="height:190px;">
                                        <asp:DataList ID="DataList2" runat="server" RepeatColumns="4">
                                        <ItemTemplate> <div style="width:100px; height:80px;">
                                            <asp:Image ID="Image1" runat="server" Height="60px" 
                                                ImageUrl='<%# Eval("Image_URL") %>' Width="100px" />
                                            <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                                Font-Size="Small" ForeColor="#333333" Text='<%# Eval("Image_Title") %>'></asp:Label>
                                            </div></ItemTemplate>
                                        </asp:DataList>
                                    </div>
                                    <div align="right">
                                        <asp:Button ID="Button7" runat="server" BackColor="#FF9933" 
                                            BorderColor="#DD8500" BorderStyle="Solid" BorderWidth="1px" 
                                            Font-Names="Calibri" Font-Size="Small" ForeColor="White" Height="30px" 
                                            onclick="Button7_Click" Text="CONTINUE " ValidationGroup="A" 
                                            Width="100px" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                    <div class="container"> 
                    <div class="base" style="padding-top:10px;">
                        <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Calibri" 
                            Font-Size="Large" ForeColor="#336699" Text="STORE OPENNG HOURS"></asp:Label>
                        </div>
                     <div align="left">
                         <table cellpadding="0" cellspacing="0" width="500px">
                             <tr>
                                 <td align="left" bgcolor="#F2F2F2" height="35px" style="padding-left: 10px">
                                     <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="Week Day"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#F2F2F2" height="30px">
                                     <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="Opening Hour"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#F2F2F2" height="30px">
                                     <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="Closing Hour"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#F2F2F2" height="30px">
                                     <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="Action"></asp:Label>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" bgcolor="#FFFFCC" height="35px" style="padding-left: 10px">
                                     <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="MONDAY"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="M_O_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="MO" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="M_C_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="MC" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="Monday_Act" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="70px">
                                         <asp:ListItem>CLOSE</asp:ListItem>
                                         <asp:ListItem>OPEN</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" bgcolor="#FFFFCC" height="35px" style="padding-left: 10px">
                                     <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="TUESDAY"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="T_O_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="TO" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="T_C_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="TC" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="TUES_ACT" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="70px">
                                         <asp:ListItem>CLOSE</asp:ListItem>
                                         <asp:ListItem>OPEN</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" bgcolor="#FFFFCC" height="35px" style="padding-left: 10px">
                                     <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="WEDNESDAY"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="W_O_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="WO" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="W_C_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="WC" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="Wed_Act" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="70px">
                                         <asp:ListItem>CLOSE</asp:ListItem>
                                         <asp:ListItem>OPEN</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" bgcolor="#FFFFCC" height="35px" style="padding-left: 10px">
                                     <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="THRUSDAY"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="TH_O_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="THO" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="TH_C_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="THC" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="Thrs_Act" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="70px">
                                         <asp:ListItem>CLOSE</asp:ListItem>
                                         <asp:ListItem>OPEN</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" bgcolor="#FFFFCC" height="35px" style="padding-left: 10px">
                                     <asp:Label ID="Label16" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="FRIDAY"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="F_O_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="FO" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="F_C_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="FC" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="Friday_Act" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="70px">
                                         <asp:ListItem>CLOSE</asp:ListItem>
                                         <asp:ListItem>OPEN</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" bgcolor="#FFFFCC" height="35px" style="padding-left: 10px">
                                     <asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="SATURDAY"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="S_O_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="SO" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="S_C_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="SC" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="Sat_Act" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="70px">
                                         <asp:ListItem>CLOSE</asp:ListItem>
                                         <asp:ListItem>OPEN</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" bgcolor="#FFFFCC" height="35px" style="padding-left: 10px">
                                     <asp:Label ID="Label18" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                         Font-Size="Medium" ForeColor="Black" Text="SUNDAY"></asp:Label>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="SU_O_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="SUO" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="SU_C_T" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="60px">
                                         <asp:ListItem>01:00</asp:ListItem>
                                         <asp:ListItem>02:00</asp:ListItem>
                                         <asp:ListItem>03:00</asp:ListItem>
                                         <asp:ListItem>04:00</asp:ListItem>
                                         <asp:ListItem>05:00</asp:ListItem>
                                         <asp:ListItem>06:00</asp:ListItem>
                                         <asp:ListItem>07:00</asp:ListItem>
                                         <asp:ListItem>08:00</asp:ListItem>
                                         <asp:ListItem>09:00</asp:ListItem>
                                         <asp:ListItem>10:00</asp:ListItem>
                                         <asp:ListItem>11:00</asp:ListItem>
                                         <asp:ListItem>12:00</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:DropDownList ID="SUC" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="50px">
                                         <asp:ListItem>AM</asp:ListItem>
                                         <asp:ListItem>PM</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                                 <td align="left" bgcolor="#FFFFCC" height="35px">
                                     <asp:DropDownList ID="Sunday_Act" runat="server" CssClass="ddl" 
                                         Font-Names="Calibri" Font-Size="Small" Width="70px">
                                         <asp:ListItem>CLOSE</asp:ListItem>
                                         <asp:ListItem>OPEN</asp:ListItem>
                                     </asp:DropDownList>
                                 </td>
                             </tr>
                         </table>
                        </div>
                        <div class="base" style="padding-top: 10px">
                            <asp:Button ID="Button8" runat="server" BackColor="#FF9900" 
                                BorderColor="#DD8500" BorderStyle="Solid" BorderWidth="1px" 
                                Font-Names="Calibri" Font-Size="Small" ForeColor="White" Height="30px" 
                                onclick="Button8_Click" Text="SAVE STORE" ValidationGroup="A" Width="100px" />
                        </div>
                    </div>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </div>
</asp:Content>

