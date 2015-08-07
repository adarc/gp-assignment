<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<%@ Register src="Map.ascx" tagname="Map" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places" type="text/javascript"></script> 
          <script src="Js/GoogleAPIScript.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>  <div class="base">
                                    
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
 </div>
    </form>
</body>
</html>
