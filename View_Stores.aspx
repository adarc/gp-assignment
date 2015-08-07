<%@ Page Title="Show All Stores" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_Stores.aspx.cs" Inherits="View_Stores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
<div style="background-color:#f2f2f2; border-bottom:1px solid rgb(226,226,226); border-top:1px solid rgb(226,226,226);"> <div class="Sub_header" style="height:30px; padding-top:10px; padding-bottom:10px;" align="left"> 
       
    <table class="container">
        <tr>
            <td align="left">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Calibri" 
                    Font-Size="Large" ForeColor="#336699" Text="MY STORES"></asp:Label>
            &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Calibri" 
                    Font-Size="Large" ForeColor="#336699"></asp:Label>
            </td>
            <td width="200px">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" placeholder="Search here" 
                    CssClass="txt_pd" Height="15px" Width="200px"></asp:TextBox>
            </td>
            <td width="50px">
                <asp:Button ID="Button1" runat="server" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Calibri" Font-Size="Small" 
                    Height="25px" Text="SEARCH" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
       
    </div></div>
<div style="width:100%;"> <div style="width:90%; height:450px; padding-top: 10px;" 
        align="center">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Horizontal" onitemcommand="DataList1_ItemCommand" RepeatColumns="2" 
        Width="100%">
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td align="left" rowspan="4" width="160px">
                        <asp:Image ID="Image1" runat="server" Height="100px" Width="150px" 
                            ImageUrl='<%# Eval("Cover") %>' />
                    </td>
                    <td align="left">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" 
                            Font-Size="Large" ForeColor="#336699" Text='<%# Eval("name") %>' 
                            style="min-width:200px;"></asp:Label>
                    </td>
                    <td align="left">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="Label2" runat="server" Enabled="False" Font-Bold="False" 
                            Font-Names="Calibri" Font-Size="Small" ForeColor="Black" 
                            Text="Rigistered Since: "></asp:Label>
                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Calibri" 
                            Font-Size="Small" ForeColor="Black" Text='<%# Eval("Reg_Date") %>'></asp:Label>
                    </td>
                    <td align="center" rowspan="3" width="100px">
                        <asp:Button ID="Button1" runat="server" BackColor="#FF9933" 
                            BorderColor="#FF9933" BorderStyle="Solid" BorderWidth="1px" 
                            CommandArgument='<%# Eval("S_Id") %>' CommandName="Detail" Font-Names="Calibri" 
                            Font-Size="Small" ForeColor="White" Height="25px" Text="DETAIL" />
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="Label4" runat="server" Enabled="False" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="Small" ForeColor="Black" Text="Contact No. :"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Enabled="False" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="Small" ForeColor="Black" Text="+91"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Enabled="False" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="Small" ForeColor="Black" 
                            Text='<%# Eval("Contact_No") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="Label7" runat="server" Enabled="False" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="Small" ForeColor="Black" Text="E-Mail ID :"></asp:Label>
                        <asp:Label ID="Label8" runat="server" Enabled="False" Font-Bold="False" 
                            Font-Names="Verdana" Font-Size="Small" ForeColor="Black" 
                            Text='<%# Eval("E_Mail") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:DataList>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        Font-Bold="False" Font-Names="Calibri" Font-Size="Medium" 
        AllowPaging="True" AutoGenerateColumns="False" 
        onpageindexchanging="GridView1_PageIndexChanging" Width="100%" 
        Visible="False">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Store Title">
            <ItemStyle HorizontalAlign="Center" Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="Contact_No" HeaderText="Contact Number">
            <ItemStyle HorizontalAlign="Center" Width="120px" Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="E_Mail" HeaderText="E-Mail ID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Reg_Date" HeaderText="Registration Date">
            <ItemStyle HorizontalAlign="Center" Width="150px" />
            </asp:BoundField>
            <asp:ButtonField Text="Detail" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#336699" Font-Bold="False" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <div class="base">
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Calibri" 
                    Font-Size="Medium" ForeColor="#CC3300" 
            Text="Sorry..! No Search record Found" Visible="False"></asp:Label>
            &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="False" 
                      Font-Names="Calibri" Font-Size="Medium" Font-Underline="False" 
                      ForeColor="Black" onclick="LinkButton1_Click" Visible="False">Click Here to Show All Records</asp:LinkButton>
              </div>
    </div></div>
</div>
</asp:Content>

