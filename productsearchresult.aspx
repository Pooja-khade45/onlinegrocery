<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="productsearchresult.aspx.cs" Inherits="productsearchresult" %>

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
			<div class="w3ls_w3l_banner_nav_right_grid">
				<h3>Search By Name</h3><br />
                <div class="table-responsive col-sm-12"> 
				<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="productid" 
                    DataSourceID="SqlDataSource1" PageSize="5" Width="100%" CssClass="table">
                    
                    <Columns>
                        <asp:ImageField DataImageUrlField="picture" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Product image">
                            <ControlStyle Height="150px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Product name" 
                            SortExpression="productname" />
                        <asp:BoundField DataField="feature" HeaderText="Feature" 
                            SortExpression="feature" />
                        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
                        <asp:HyperLinkField DataNavigateUrlFields="productid" 
                            DataNavigateUrlFormatString="moreproductdetail.aspx?pid={0}" 
                            HeaderText="Product Detail" Text="Show detail" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [productid], [productname], [rate], [picture], [feature] FROM [addproduct] WHERE ([productname] LIKE '%' + @productname + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="productname" QueryStringField="s" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>
			</div>
		</div>
    <div class="clearfix"></div>
</div>
   
</asp:Content>

