<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addsubcategory.aspx.cs" Inherits="addsubcategory"debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
    }
    .style4
    {
    }
    .style5
    {
        width: 235px;
    }
    .style6
    {
        height: 17px;
    }
    .style7
    {
        width: 235px;
        height: 17px;
    }
    .style8
    {
        height: 17px;
        width: 93px;
    }
    .style9
    {
        width: 93px;
    }
    .style10
    {
        text-decoration: underline;
        color: #006600;
    }
        .style11
        {
            width: 235px;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3l_banner_nav_right">
        <div class="w3_login">
			<h3>Add Subcategory</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
					
                        <!---Username---->
                         <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                      <label>Choose Category</label>
                         <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="catname" 
                DataValueField="catid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [catid], [catname] FROM [addcategory]">
            </asp:SqlDataSource>
                       <asp:FileUpload ID="FileUpload1" runat="server"  /><br />
                        <!----Button----->
					 <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                Font-Bold="True" />
                       <asp:Label ID="Label2" runat="server"></asp:Label>
					
				  </div>
				 
				 
				</div>
			</div>
			
		</div>
			
		</div>
    <div class="clearfix"></div>
</div>
    
</asp:Content>

