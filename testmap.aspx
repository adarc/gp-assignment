<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testmap.aspx.cs" Inherits="testmap" %>

<%@ Register src="Map.ascx" tagname="Map" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"  
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
 
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places"></script>  
      <script src="Js/JScript.js" type="text/javascript"></script>  
      <link href="Css/MapStyleSheet.css" rel="stylesheet" type="text/css" /> 
      <style type="text/css">.txt_pd{padding:5px; font-family:Calibri; font-size:small; border:1px solid Silver; height:15px;}</style>
</head>
<body style="padding:0px; margin:0px;">
<form runat="server" id="Form1">

<div> 
<asp:TextBox id="txtsearch" runat="server" class="apply" type="text" 
        placeholder="Enter Search Place e.g Gopalpura Jaipur" AutoPostBack="True" 
        CssClass="txt_pd apply" Height="30px" 
        ontextchanged="txtsearch_TextChanged" onload="txtsearch_Load" Visible="False" ></asp:TextBox> 
    <div id="divloadMap" style="height: 300px"></div> </div> 
</form>
    </body>
</html>
