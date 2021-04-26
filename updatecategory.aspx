<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatecategory.aspx.cs" Inherits="updatecategory" %>

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
            <div class="w3_login_module">
              <h3 align="center">Update Category</h3>
				<div class="module form-module1">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-12 text-center"> 
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="catid" DataSourceID="SqlDataSource1" AllowPaging="True" 
                    PageSize="5" Width="100%">
                   
                    <Columns>
                        <asp:ImageField DataImageUrlField="catpic" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Category image">
                            <ControlStyle Height="150px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="catname" HeaderText="Category name" 
                            SortExpression="catname" />
                        <asp:HyperLinkField DataNavigateUrlFields="catid" 
                            DataNavigateUrlFormatString="updatecategorydetail.aspx?cid={0}" 
                            HeaderText="Click to Update" Text="update" />
                    </Columns>
                   
                            <HeaderStyle HorizontalAlign="Center" />
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [addcategory]"></asp:SqlDataSource>                     
                       
                    </div>
                 </div>
				 
				 
				</div>
			</div>
			
		</div>
     <div class="clearfix"></div>
</div>
</asp:Content>

