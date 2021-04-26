<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updateproductdetail.aspx.cs" Inherits="productdetail" %>

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
            width: 256px;
        }
        .style6
        {
            width: 57px;
            height: 19px;
        }
        .style7
        {
            width: 256px;
            height: 19px;
        }
        .style8
        {
            height: 19px;
        }
        .style9
        {
            width: 256px;
            font-size: x-large;
            font-weight: bold;
        }
        .style10
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
        <div class="w3_login">
			<h3>Update Product</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
                        <!---Username---->
                      <asp:TextBox ID="TextBox1" runat="server" placeholder="Product Name"></asp:TextBox>
                     <label>Choose Category</label>
                       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="catname" DataValueField="catid" 
                    ondatabound="DropDownList1_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [catid], [catname] FROM [addcategory]">
                </asp:SqlDataSource>
                <label>Choose Subcategory</label>
                      <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="subcatname" 
                    DataValueField="subcatid" ondatabound="DropDownList2_DataBound" 
                    >
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
                    DataValueField="brandid" 
                    ondatabound="DropDownList3_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [brandid], [brandname] FROM [addbrand]">
                </asp:SqlDataSource>

                <asp:TextBox ID="TextBox2" runat="server" placeholder="Features"></asp:TextBox>
                     
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Rate"></asp:TextBox>
                 
                <asp:Image ID="Image2" runat="server" Height="169px" Width="168px" />
                 <label>Upload new picture,if required</label>
                 <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                        <!----Button----->
				<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" />
                 <asp:Label ID="Label2" runat="server"></asp:Label>
					
				  </div>
				 
				 
				</div>
			</div>
			
		</div><br /><br />
			
		</div>
    <div class="clearfix"></div>
</div>
 
</asp:Content>

