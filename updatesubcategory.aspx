<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatesubcategory.aspx.cs" Inherits="updatesubcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 63px;
        }
        .style5
        {
            width: 322px;
        }
        .style6
        {
            width: 322px;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
        <h3 align="center">Update Subategory</h3>
            <div class="w3_login_module">
              
				<div class="module form-module1">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-offset-3 col-sm-4 text-center"> 
                       <label>Choose Category</label>
                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="catname" 
                            DataValueField="catid" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [catid], [catname] FROM [addcategory]">
                        </asp:SqlDataSource> <br /><br />
                        </div>  
                     <div class="table-responsive col-sm-12 text-center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="subcatid" DataSourceID="SqlDataSource2" AllowPaging="True" 
                    PageSize="5" Width="100%" CssClass="table">
                    
                    <Columns>
                        <asp:ImageField DataImageUrlField="subcatpic" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Sub Category image">
                            <ControlStyle Height="150px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="subcatname" HeaderText="Sub Category name" 
                            SortExpression="subcatname" />
                        <asp:HyperLinkField DataNavigateUrlFields="subcatid" 
                            DataNavigateUrlFormatString="updatesubcategorydetail.aspx?sid={0}" 
                            HeaderText="Click to update" Text="Update" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [subcatid], [subcatname], [subcatpic] FROM [subcategory] WHERE ([maincatid] = @maincatid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="maincatid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                  </div>
                 </div>
				 
				 
				</div>
			</div>
			
		</div>
     <div class="clearfix"></div>
</div>
    
</asp:Content>

