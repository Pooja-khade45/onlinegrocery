<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
			<div class="w3ls_w3l_banner_nav_right_grid">
				<div class="w3ls_w3l_banner_nav_right_grid1">
                   <h3>You are not Logged In.Please log in to access the page.Click&nbsp;
                <a href="login.aspx">here</a>
&nbsp; to login.</h3>
                </div>
			</div>
		</div>
    <div class="clearfix"></div>
</div>
    
</asp:Content>

