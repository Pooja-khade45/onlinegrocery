<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="searchuser.aspx.cs" Inherits="searchuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
        }
        .style6
        {
            width: 489px;
            font-size: x-large;
            font-weight: 700;
        }
        .style8
        {
            width: 489px;
            height: 15px;
        }
        .style9
        {
            height: 15px;
        }
        .style10
        {
            width: 83px;
        }
        .style11
        {
            width: 83px;
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Search User</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
					
					
                        <!---Username---->
                         <asp:TextBox ID="TextBox1" runat="server" placeholder="User Name"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                    Font-Bold="True" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                         <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
					
				  </div>
				 
				 
				</div>
			</div>
			
		</div>
<!-- //login -->
		
		</div>
    <!-- newsletter-top-serv-btm -->
	<div class="newsletter-top-serv-btm">
		<div class="container">
			
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter-top-serv-btm -->
   
</asp:Content>

