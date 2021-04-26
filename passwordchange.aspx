<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="passwordchange.aspx.cs" Inherits="passwordchange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 55px;
        }
        .style6
        {
            width: 55px;
            height: 12px;
        }
        .style7
        {
            height: 12px;
        }
        .style8
        {
            font-size: x-large;
            font-weight: bold;
            width: 328px;
        }
        .style9
        {
            width: 328px;
        }
        .style10
        {
            height: 12px;
            width: 328px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Change Password</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
					
                        <!---Username---->
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" placeholder="Current Password"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="New Password"></asp:TextBox>
                    <!----Password----->
					 <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Password mismatch"></asp:CompareValidator>
                        <!----Button----->
					  <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                       <asp:Label ID="Label2" runat="server"></asp:Label>
					
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
    
    
    <br />
</asp:Content>

