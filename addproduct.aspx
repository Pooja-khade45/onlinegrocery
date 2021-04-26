<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 137px;
        }
        .style5
        {
            text-decoration: underline;
            color: #006600;
        }
        .style6
        {
            width: 242px;
            font-size: x-large;
            font-weight: bold;
        }
        .style7
        {
            width: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
        <div class="w3_login">
			<h3>Add Product</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
                        <!---Username---->
                     <asp:TextBox ID="TextBox1" runat="server" placeholder="Product Name"></asp:TextBox>
                     <label>Choose Category</label>
                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="catname" 
                        DataValueField="catid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [catid], [catname] FROM [addcategory]">
                    </asp:SqlDataSource> 
                      
                    <label>Choose Subcategory</label>
                      <asp:DropDownList ID="DropDownList2" runat="server" 
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

                      <label>Choose Brand</label>
                      <asp:DropDownList ID="DropDownList3" runat="server" 
                            DataSourceID="SqlDataSource3" DataTextField="brandname" 
                            DataValueField="brandid" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [brandid], [brandname] FROM [addbrand]">
                        </asp:SqlDataSource>

                      <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" 
                    placeholder="Features"></asp:TextBox>
                      <asp:TextBox ID="TextBox3" runat="server" placeholder="Rate"></asp:TextBox>
                       <asp:TextBox ID="TextBox4" runat="server" placeholder="Discount"></asp:TextBox>
                       <asp:TextBox ID="TextBox5" runat="server" placeholder="Stock"></asp:TextBox>
                      <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                        <!----Button----->
					<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
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

