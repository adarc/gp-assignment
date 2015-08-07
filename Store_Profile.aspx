<%@ Page Title="Store Profile" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Store_Profile.aspx.cs" Inherits="Store_Profile" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
   <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ShowImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(1000)
                        .height(300);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
<style type="text/css">
  .mpc{background-color:Black; opacity:0.6;}
     .modal
     {
        display: none; 
        position: absolute;
        top: 0px; 
        left: 0px;
        background-color:black;
        z-index:100;
        opacity: 0.8;
        filter: alpha(opacity=60);
        -moz-opacity:0.8;
        min-height: 100%;
     }
     #divImage
     {
        display: none;
        z-index: 1000;
        position: fixed;
        top: 0;
        left: 0;
        background-color:White;
        height: 550px;
        width: 600px;
        padding: 3px;
        border: solid 1px black;
     }
     * html #divImage {position:absolute;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div style="background-color:#f2f2f2; border-bottom:1px solid rgb(226,226,226); border-top:1px solid rgb(226,226,226);">
            <div class="Sub_header" style="height:30px; padding-top:10px; padding-bottom:10px;" align="left">
                <table class="container">
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" 
                    Font-Size="Large" ForeColor="#CC6600" Text="MY STORES"></asp:Label>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
            </td>
                        <td align="right">
                            <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Arial" 
                    Font-Size="Small" ForeColor="#009933" Text="UPLOAD COVER PHOTO" Visible="False"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" 
                                onchange="ShowImagePreview(this);" Font-Names="Calibri" Font-Size="Small" 
                                Visible="False" />
&nbsp;<asp:Button ID="Button2" runat="server" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Calibri" Font-Size="Small" 
                    Height="25px" Text="UPLOAD" onclick="Button2_Click" Visible="False" />
                        </td>
                       
                        <td width="150px" align="right">
                            <asp:Button ID="Button1" runat="server" BorderColor="#CCCCCC" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Calibri" Font-Size="Small" 
                    Height="25px" Text="BACK TO STORES" PostBackUrl="~/View_Stores.aspx" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div style="width:100%;">
            <div style="width:90%; " 
        align="center">
                <asp:Image ID="Image1" runat="server" Height="300px" Width="100%" 
                    ImageUrl='~/images/images.jpg' />
                <div style="background-color: #CCCCFF; height: 70px;" align="right">
                    <table cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="center" width="180px">
                            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Verdana" 
                    Font-Size="Small" ForeColor="#336699" Text="PHOTO GALLERY"></asp:Label>
                            </td>
                            <td align="right" valign="bottom" style="padding-top: 10px">
                            <script type="text/javascript">
                                function LoadDiv(url) {
                                    var img = new Image();
                                    var bcgDiv = document.getElementById("divBackground");
                                    var imgDiv = document.getElementById("divImage");
                                    var imgFull = document.getElementById("imgFull");
                                    var imgLoader = document.getElementById("imgLoader");

                                    imgLoader.style.display = "block";
                                    img.onload = function () {
                                        imgFull.src = img.src;
                                        imgFull.style.display = "block";
                                        imgLoader.style.display = "none";
                                    };
                                    img.src = url;
                                    var width = document.body.clientWidth;
                                    if (document.body.clientHeight > document.body.scrollHeight) {
                                        bcgDiv.style.height = document.body.clientHeight + "px";
                                    }
                                    else {
                                        bcgDiv.style.height = document.body.scrollHeight + "px";
                                    }

                                    imgDiv.style.left = (width - 650) / 2 + "px";
                                    imgDiv.style.top = "20px";
                                    bcgDiv.style.width = "100%";

                                    bcgDiv.style.display = "block";
                                    imgDiv.style.display = "block";
                                    return false;
                                }
                                function HideDiv() {
                                    var bcgDiv = document.getElementById("divBackground");
                                    var imgDiv = document.getElementById("divImage");
                                    var imgFull = document.getElementById("imgFull");
                                    if (bcgDiv != null) {
                                        bcgDiv.style.display = "none";
                                        imgDiv.style.display = "none";
                                        imgFull.style.display = "none";
                                    }
                                }
</script>
           <asp:DataList ID="DataList1" runat="server" RepeatColumns="10">
                        <ItemTemplate> <div>
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                               BackColor="White" Height="50px" 
                                ImageUrl='<%# Eval("image_URL") %>'  
                                Width="50px" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Style="cursor: pointer" OnClientClick = "return LoadDiv(this.src);" />
                            </div></ItemTemplate>
                    </asp:DataList>
                    <div id="divBackground" class="modal">
</div>
                    <div id="divImage" class = "info">
    <table style="height: 100%; width: 100%">
        <tr>
            <td valign="middle" align="center">
                <img id="imgLoader" alt=""
                 src="images/loader.gif" />
                <img id="imgFull" runat="server" alt="" src="" 
                 style="display: none;
                height: 500px;width: 590px" />
            </td>
        </tr>
        <tr>
            <td align="center" valign="bottom">
                <input id="btnClose" type="button" style="border:1px solid #f2f2f2; font-family:Verdana; font-size:small; height:25px; " value="close"
                 onclick="HideDiv()"/>
            </td>
        </tr>
    </table>
</div>
                            </td>
                        </tr>
                    </table>
                </div>
                   <div>
                       <table cellpadding="0" cellspacing="0" class="container">
                           <tr>
                               <td align="left" width="400px" valign="top">
                                   <table bgcolor="#F2F2F2" cellpadding="0" cellspacing="0" class="container" 
                                       style="border: 1px solid #CCCCFF; margin-top: 10px">
                                       <tr>
                                           <td align="left" height="40px" style="padding-left: 10px">
                            <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Names="Verdana" 
                    Font-Size="Small" ForeColor="#336699" Text="STORE HOURS (OPEN)"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td align="left" bgcolor="White" 
                                               style="padding-left: 10px; padding-bottom: 10px;">
           <asp:DataList ID="DataList2" runat="server">
                        <ItemTemplate> <div>
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                            Font-Size="Small" ForeColor="#333333" Text='<%# Eval("Weekday") %>' 
                                            Width="120px"></asp:Label>
                                    </td>
                                    <td align="left">
                                        <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                            Font-Size="Small" ForeColor="#009933" Text='<%# Eval("Hour_Start") %>'></asp:Label>
                                        &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                            Font-Size="Small" ForeColor="#009933" Text="to"></asp:Label>
                                        <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                            Font-Size="Small" ForeColor="#009933" Text='<%# Eval("Hour_End") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                            </div></ItemTemplate>
                    </asp:DataList>
                                           </td>
                                       </tr>
                                   </table>
                               </td>
                               <td align="right" valign="top">
                                       <table cellpadding="0" cellspacing="0" 
                                       style="border: 1px solid #CCCCFF; margin-left: 10px; margin-top: 10px; background-color: #f2f2f2;" 
                                       width="99%">
                                           <tr>
                                               <td align="left" colspan="3" style="padding-left: 15px" height="40px">
                            <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Arial" 
                    Font-Size="Large" ForeColor="#CC6600" Text="MY STORES"></asp:Label>
                                               </td>
                                           </tr>
                                           <tr>
                                               <td align="left" colspan="3" 
                                                   style="padding-left: 15px; padding-top: 5px; padding-bottom: 5px;" 
                                                   valign="top" bgcolor="White">
                            <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Verdana" 
                    Font-Size="Small" ForeColor="#333333"></asp:Label>
                                               </td>
                                           </tr>
                                           <tr>
                                               <td align="left" style="padding-left: 15px" bgcolor="White">
                                                   &nbsp;</td>
                                               <td bgcolor="White">
                                                   &nbsp;</td>
                                               <td bgcolor="White">
                                                   &nbsp;</td>
                                           </tr>
                                       </table>
                                   <table bgcolor="#F2F2F2" cellpadding="0" cellspacing="0" 
                                       style="border: 1px solid #CCCCFF; margin-top: 10px; margin-bottom: 10px; margin-left: 10px;" 
                                       width="99%">
                                       <tr>
                                           <td align="left" height="40px" style="padding-left: 10px">
                            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Verdana" 
                    Font-Size="Small" ForeColor="#336699" Text="PRODUCT RANGE"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td align="left" bgcolor="White" 
                                               style="padding-left: 10px; padding-bottom: 10px;">
                                        <asp:DataList ID="DataList3" runat="server" RepeatColumns="6">
                                        <ItemTemplate>
                                        <div style="height:15px; padding-top:3px; padding-bottom:5px; min-width:50px;">
                                            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Verdana" 
                                                Font-Size="Small" ForeColor="#336699" Text="-"></asp:Label>
                                            <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Calibri" 
                                                Font-Size="Small" ForeColor="#CC6600" Text='<%# Eval("Product_Title") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                        </asp:DataList>
                                           </td>
                                       </tr>
                                   </table>
                               </td>
                           </tr>
                           </table>
                </div>

                <div style="margin-top: 10px">
                <div style="border-width: 1px; border-color: #CCCCFF; height:30px; padding-left: 10px; background-color: #f2f2f2; padding-top: 5px; border-top-style: solid; border-right-style: solid; border-left-style: solid;" 
                        align="left">
                            <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Names="Verdana" 
                    Font-Size="Small" ForeColor="#336699" Text="STORE LOCATION"></asp:Label>
                               </div>
                <div style="border: 1px solid #CCCCFF; height:300px; margin-bottom:40px;">
                
                </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

