<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

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
             <br /> <h3 align="center">User List</h3>
				<div class="module">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-12 text-center"> 
                       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="5" 
                    Width="100%" CssClass="table">
                    
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="Address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                        <asp:BoundField DataField="username" HeaderText="Username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="country" HeaderText="Country" 
                            SortExpression="country" />
                        <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                    </Columns>
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    onselected="SqlDataSource1_Selected" 
                    SelectCommand="SELECT [name], [address], [city], [state], [phone], [username], [gender], [country], [dob] FROM [signup] WHERE ([username] LIKE '%' + @username + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="username" QueryStringField="nm" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                    </div>
                     <asp:Label ID="Label2" runat="server"></asp:Label> 
                 </div>
				 
				 
				</div>
			</div>
			
		</div>
     <div class="clearfix"></div>
</div>
   
</asp:Content>

