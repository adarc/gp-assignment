<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Map.ascx.cs" Inherits="Map" %>
 

      <div>
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
    </div>