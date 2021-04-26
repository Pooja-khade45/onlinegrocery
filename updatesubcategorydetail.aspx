<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatesubcategorydetail.aspx.cs" Inherits="subcategorydetail" debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 54px;
        }
        .style5
        {
            width: 400px;
        }
        .style6
        {
            width: 400px;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
        <div class="w3_login">
			<h3>Update Subcategory</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
                        <!---Username---->
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                      <label>Choose Category</label>
                      <asp:DropDownList ID="DropDownList1" runat="server" 
                            ondatabound="DropDownList1_DataBound" DataSourceID="SqlDataSource1" 
                            DataTextField="catname" DataValueField="catid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [catid], [catname] FROM [addcategory]">
                        </asp:SqlDataSource>

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

