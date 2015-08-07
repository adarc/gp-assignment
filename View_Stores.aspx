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
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        Font-Bold="False" Font-Names="Calibri" Font-Size="Medium" 
        AllowPaging="True" AutoGenerateColumns="False" 
        onpageindexchanging="GridView1_PageIndexChanging" Width="100%">
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

