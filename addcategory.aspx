<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addcategory.aspx.cs" Inherits="addcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 706px;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 300px;
        }
        .style6
        {
            width: 300px;
            font-weight: bold;
            font-size: x-large;
        }
        .style7
        {
            width: 37px;
        }
        .style8
        {
            width: 37px;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
        <div class="w3_login">
			<h3>Add Category</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
					
                        <!---Username---->
                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Category Name"></asp:TextBox>
                        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                        <!----Button----->
					  <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Submit" />
                        <asp:Label ID="Label2" runat="server"></asp:Label>
					
				  </div>
				 
				 
				</div>
			</div>
			
		</div>
			
		</div>
    <div class="clearfix"></div>
</div>
   
</asp:Content>

