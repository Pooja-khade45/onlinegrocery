<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updateproduct.aspx.cs" Inherits="updateproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 30px;
        }
        .style5
        {
            width: 309px;
        }
        .style6
        {
            width: 309px;
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
            <br /><h3 align="center">Update Product</h3>
            <div class="w3_login_module">
              
				<div class="module form-module1">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-offset-3 col-sm-5 text-center"> 
                        <label>Choose Category</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="catname" 
                            DataValueField="catid" CssClass="form-control" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [catid], [catname] FROM [addcategory]">
                        </asp:SqlDataSource><br /><br />

                        <label>Choose Subcategory</label>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="subcatname" 
                            DataValueField="subcatid" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [subcatid], [subcatname] FROM [subcategory] WHERE ([maincatid] = @maincatid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="maincatid" 
                                    PropertyName="SelectedValue" Type="Decimal" />
                            </SelectParameters>
                        </asp:SqlDataSource><br /><br />

                        <label>Choose Brand</label>
                        <asp:DropDownList ID="DropDownList3" runat="server" 
                            DataSourceID="SqlDataSource3" DataTextField="brandname" 
                            DataValueField="brandid"  AutoPostBack="True" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                            SelectCommand="SELECT addproduct.brandid, addbrand.brandname FROM addbrand INNER JOIN addproduct ON addbrand.brandid = addproduct.brandid WHERE (addproduct.subcatid = @scid) AND (addproduct.catid = @cid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="scid" 
                                    PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="DropDownList1" Name="cid" 
                                    PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource><br /><br />
                  </div>
                   <div class="table-responsive col-sm-12 text-center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="productid" DataSourceID="SqlDataSource4" PageSize="5" 
                    Width="100%">
                    
                    <Columns>
                        <asp:ImageField DataImageUrlField="picture" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Product image">
                            <ControlStyle Height="150px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Product Name" 
                            SortExpression="productname" />
                        <asp:HyperLinkField DataNavigateUrlFields="productid" 
                            DataNavigateUrlFormatString="updateproductdetail.aspx?bid={0}" 
                            HeaderText="Click to update" Text="Update" />
                    </Columns>
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [productid], [productname], [picture] FROM [addproduct] WHERE (([catid] = @catid) AND ([subcatid] = @subcatid) AND ([brandid] = @brandid))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="catid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="subcatid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="brandid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
                  
                 </div>
				 
				 
				</div>
			</div>
			<br /><br />
		</div>
     <div class="clearfix"></div>
</div>
    
</asp:Content>

