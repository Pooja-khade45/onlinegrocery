<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-decoration: underline;
            color: #006600;
        }
        .style4
        {
            width: 247px;
        }
        .style5
        {
            width: 238px;
            font-size: x-large;
            font-weight: bold;
        }
        .style6
        {
            width: 150px;
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
				  <div class="toggle"></div>
				  <div class="form">

                      <asp:TextBox ID="TextBox1" TextMode="Password" runat="server" placeholder="Current Password"></asp:TextBox>

                      <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" placeholder="New Password"></asp:TextBox>

                      <asp:TextBox ID="TextBox3" TextMode="Password" runat="server" placeholder="Confirm Password"></asp:TextBox>

                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Password mismatch"></asp:CompareValidator>
                      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Change Password" 
                    Font-Bold="True" />

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

    <!---<table cellpadding="0" cellspacing="0" class="style2" bgcolor="#C9EB75">
        <tr>
            <td class="style4">
                <h1 class="style3">
                    Change Password</h1>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                Current Password</td>
            <td class="style6">
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                New Password</td>
            <td class="style6">
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                Confirm Password</td>
            <td class="style6">
                
            </td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>---->
</asp:Content>

