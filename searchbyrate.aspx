<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="searchbyrate.aspx.cs" Inherits="searchbyrate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 50px;
        }
        .style5
        {
            width: 398px;
            font-weight: 700;
            font-size: x-large;
        }
        .style6
        {
            width: 398px;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
			<div class="w3ls_w3l_banner_nav_right_grid">
				<h3>Search By Rate</h3>
				<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"></div>
				  <div class="form">
                      Choose Category
                      <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="catname" 
                            DataValueField="catid" >
                       </asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [catid], [catname] FROM [addcategory]">
                       </asp:SqlDataSource>
                      Minimum Price
                      <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>100</asp:ListItem>
                        <asp:ListItem>500</asp:ListItem>
                        <asp:ListItem>1000</asp:ListItem>
                        <asp:ListItem>1500</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                    </asp:DropDownList>

                      Maximum Price
                      <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1500</asp:ListItem>
                        <asp:ListItem>1000</asp:ListItem>
                        <asp:ListItem>500</asp:ListItem>
                        <asp:ListItem>100</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                     <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
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

