<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="productsearch.aspx.cs" Inherits="productsearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 64px;
        }
        .style5
        {
            width: 381px;
            font-size: x-large;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
			<div class="w3ls_w3l_banner_nav_right_grid">
				<h3>Search By Name</h3>
				<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"></div>
				  <div class="form">
                      Product Name
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    
                      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                    Font-Bold="True" />
				  </div>
				 
				 
				</div>
			</div>
			</div>
		</div>
    <div class="clearfix"></div>
</div>
    
</asp:Content>

