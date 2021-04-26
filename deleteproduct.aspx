<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="deleteproduct.aspx.cs" Inherits="deleteproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 57px;
        }
        .style5
        {
            width: 355px;
        }
        .style6
        {
            width: 355px;
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3l_banner_nav_right">
           <br /> <h3 align="center">Delete Product</h3>
            <div class="w3_login_module">
              
				<div class="module form-module1">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-offset-3 col-sm-5 text-center"> 
                        <label>Choose Category</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="catname" 
                            DataValueField="catid" CssClass="form-control">
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
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource3" DataTextField="brandname" 
                            DataValueField="brandid" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [brandid], [brandname] FROM [addbrand]">
                        </asp:SqlDataSource><br /><br />
                  </div>
                   <div class="table-responsive col-sm-12 text-center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="productid" DataSourceID="SqlDataSource4" AllowPaging="True" 
                    PageSize="5" Width="100%" CssClass="table">
                    
                    <Columns>
                        <asp:ImageField DataImageUrlField="picture" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Product image">
                            <ControlStyle Height="150px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Product name" 
                            SortExpression="productname" />
                        <asp:CommandField HeaderText="Click to delete" ShowDeleteButton="True" 
                            ButtonType="Image" DeleteImageUrl="~/images/delete.png" />
                    </Columns>
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [addproduct] WHERE [productid] = @original_productid " 
                    InsertCommand="INSERT INTO [addproduct] ([productname], [picture]) VALUES (@productname, @picture)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [productid], [productname], [picture] FROM [addproduct] WHERE (([catid] = @catid) AND ([subcatid] = @subcatid) AND ([brandid] = @brandid))" 
                    UpdateCommand="UPDATE [addproduct] SET [productname] = @productname, [picture] = @picture WHERE [productid] = @original_productid AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND (([picture] = @original_picture) OR ([picture] IS NULL AND @original_picture IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_productid" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="productname" Type="String" />
                        <asp:Parameter Name="picture" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="catid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="subcatid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="brandid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="productname" Type="String" />
                        <asp:Parameter Name="picture" Type="String" />
                        <asp:Parameter Name="original_productid" Type="Decimal" />
                        <asp:Parameter Name="original_productname" Type="String" />
                        <asp:Parameter Name="original_picture" Type="String" />
                    </UpdateParameters>
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

