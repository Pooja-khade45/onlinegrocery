<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login"debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            font-size: x-large;
            font-weight: bold;
            width: 133px;
        }
        .style5
        {
            width: 134px;
        }
        .style6
        {
            width: 132px;
        }
        .style7
        {
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Sign In</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
					<h2>Login to your account</h2>
					
                        <!---Username---->
                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Name is requred"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="enter the correct format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <!----Password----->
					 <asp:TextBox ID="TextBox2" runat="server" 
                    TextMode="Password" placeholder="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Incorrect password"></asp:RequiredFieldValidator>
                        <!----Button----->
					  <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" 
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

