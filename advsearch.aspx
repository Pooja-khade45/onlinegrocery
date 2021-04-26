<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="advsearch.aspx.cs" Inherits="advsearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 58px;
        }
        .style5
        {
            text-decoration: underline;
            color: #006600;
        }
        .style6
        {
            width: 346px;
            font-size: x-large;
            font-weight: 700;
        }
        .style7
        {
            width: 346px;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
			<div class="w3ls_w3l_banner_nav_right_grid">
				<h3>Search By Name</h3>
				<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"></div>
				  <div class="form">
                      Choose Category
                       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="catname" 
                            DataValueField="catid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [catid], [catname] FROM [addcategory]">
                        </asp:SqlDataSource>

                       Choose Subcategory
                      <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="subcatname" 
                            DataValueField="subcatid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [subcatid], [subcatname] FROM [subcategory] WHERE ([maincatid] = @maincatid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="maincatid" 
                                    PropertyName="SelectedValue" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource>
				  </div>
				</div>
                     
            <div class="table-responsive col-sm-12"> 
               
                      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="productid" 
                    DataSourceID="SqlDataSource3" PageSize="5" Width="100%" CssClass="table">
                   
                    <Columns>
                        <asp:ImageField DataImageUrlField="picture" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Product Image">
                            <ControlStyle Height="150px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Product Name" 
                            SortExpression="productname" />
                        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
                        <asp:HyperLinkField DataNavigateUrlFields="productid" 
                            DataNavigateUrlFormatString="moreproductdetail.aspx?pid={0}" 
                            HeaderText="Product Detail" Text="Show Detail" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [productid], [productname], [rate], [picture] FROM [addproduct] WHERE (([catid] = @catid) AND ([subcatid] = @subcatid))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="catid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="subcatid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>
			</div>
                
			</div>
		</div>
    <div class="clearfix"></div>
</div>
    
</asp:Content>

