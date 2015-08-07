<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome In Gram Power (India) Store</title>
    <style type="text/css">
   body{padding:0px; margin:0px;}
    .container{ margin:100px;}
    .pleft{float:left; width:49%; border-right:5px solid #336699; padding-top:160px; height:240px;}
    .pright{float:right; width:50%; height:400px;}
    .base{height:35px; text-align:left;}
    .txt_pd{padding:5px; font-family:Calibri; font-size:small; border:1px solid Silver; width:250px; height:15px;}
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <center>
    <div class="container" align="center">
    <div class="pleft">
                  <asp:ImageButton ID="ImageButton1" runat="server" 
                      ImageUrl="~/images/Gram-Power_BigLogo.png" Width="90%" />
                  </div>
    <div class="pright"> 
    <div style="padding:100px; padding-top:150px; height:200px;"> <div class="base"> 
       <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Large" 
           ForeColor="#336699" Text="STORE LOGIN"></asp:Label>
        </div>
    <div class="base"> 
        <asp:TextBox ID="TextBox1" runat="server" CssClass="txt_pd" Height="15px" 
            Width="250px" placeholder="Enter Login Id" ValidationGroup="A"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Enter Login Id" Font-Names="Calibri" 
            Font-Size="Small" ForeColor="#CC3300" ValidationGroup="A"></asp:RequiredFieldValidator>
        </div>
    <div class="base"> 
        <asp:TextBox ID="TextBox2" runat="server" CssClass="txt_pd" Height="15px" 
            TextMode="Password" Width="250px" placeholder="Enter Password" 
            ValidationGroup="A"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Enter Password" Font-Names="Calibri" 
            Font-Size="Small" ForeColor="#CC3300" ValidationGroup="A"></asp:RequiredFieldValidator>
        </div>
    <div class="base" style="padding-bottom:10px;"> 
                <asp:Button ID="Button1" runat="server" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Calibri" Font-Size="Small" 
                    Height="28px" Text="LOGIN" Width="80px" onclick="Button1_Click" 
                    ValidationGroup="A" />
        </div>
    <div class="base">  
       <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Medium" 
           ForeColor="#CC3300"></asp:Label>
        </div>
    </div>
    </div>
    </div>
    </center>
    </form>
</body>
</html>
