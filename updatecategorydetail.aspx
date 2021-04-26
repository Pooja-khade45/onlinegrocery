<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatecategorydetail.aspx.cs" Inherits="categorydetail"debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 52px;
        }
        .style5
        {
            width: 292px;
        }
        .style6
        {
            width: 292px;
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
        <div class="w3_login">
			<h3>Update Category</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
                        <!---Username---->
                     <asp:TextBox ID="TextBox1" runat="server" placholder="Category Name"></asp:TextBox>
                     
                     <asp:Image ID="Image2" runat="server" Height="150px" Width="100%" />
                      <label>Upload new picture,if required</label>
                     <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                        <!----Button----->
					 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                    Font-Bold="True" />
&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
                    Font-Bold="True" />
                      <asp:Label ID="Label2" runat="server"></asp:Label>
					
				  </div>
				 
				 
				</div>
			</div>
			
		</div><br /><br />
			
		</div>
    <div class="clearfix"></div>
</div>
    
</asp:Content>

