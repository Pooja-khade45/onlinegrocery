<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatebrand.aspx.cs" Inherits="updatebrand" %>

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
        }
        .style6
        {
            width: 305px;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
            <div class="w3_login_module">
              <h3 align="center">Update Brand</h3>
				<div class="module form-module1">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-12 text-center"> 
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="brandid" 
                    DataSourceID="SqlDataSource1" PageSize="5" Width="100%" CssClass="table">
                   
                    <Columns>
                        <asp:ImageField DataImageUrlField="brandpic" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Brand image">
                            <ControlStyle Height="150px" Width="200px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="brandname" HeaderText="Brand Name" 
                            SortExpression="brandname" />
                        <asp:HyperLinkField DataNavigateUrlFields="brandid" 
                            DataNavigateUrlFormatString="updatebranddetail.aspx?brd={0}" 
                            HeaderText="Click to Update" Text="Update" />
                    </Columns>
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [addbrand]"></asp:SqlDataSource>
                    </div>
                 </div>
				 
				 
				</div>
			</div>
			
		</div>
     <div class="clearfix"></div>
</div>
   
</asp:Content>

