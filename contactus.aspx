<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 165px;
        }
        .style4
        {
        }
        .style5
        {
            width: 138px;
            font-size: x-large;
            font-weight: bold;
        }
        .style7
        {
            width: 151px;
        }
        .style8
        {
            width: 68px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Contact us</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
					
                        <!---Username---->
                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
					     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name is required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>

                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Email ID"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="E-mail is required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
			            
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Phone no"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Phone is required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                    placeholder="Message"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Message is required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>

                        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    Font-Bold="True" />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                      </div>
				 
				 
				</div>
			</div>
			
		</div>
<!-- //login -->
		</div>
    <div class="newsletter-top-serv-btm">
		<div class="container">
			
			<div class="clearfix"> </div>
		</div>
	</div>
    <div class="clearfix"></div>
   </div>
</asp:Content>

