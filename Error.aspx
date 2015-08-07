<%@ Page Title="Sorry" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="width:100%; height:200px; padding-top:150px;">
<asp:Label ID="lbl1" runat="server" Text="Sorry..! Something went wrong..." 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC3300"></asp:Label></div>
</asp:Content>

