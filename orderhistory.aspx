<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="orderhistory.aspx.cs" Inherits="orderhistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
			<div class="w3ls_w3l_banner_nav_right_grid">
				<h3>Order History</h3>
				<div class="w3ls_w3l_banner_nav_right_grid1">
					 <div class="table-responsive ">
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="orderno" DataSourceID="SqlDataSource1"
                    style="margin-bottom: 0px" Width="100%" CssClass="table">
                    
                    <Columns>
                        <asp:BoundField DataField="orderno" HeaderText="orderno" InsertVisible="False" 
                            ReadOnly="True" SortExpression="orderno" />
                        <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" 
                            SortExpression="paymentmode" />
                       
                        <asp:BoundField DataField="shippingaddress" HeaderText="shipaddress" 
                            SortExpression="shippingaddress" />
                        <asp:BoundField DataField="billamount" HeaderText="billamt" 
                            SortExpression="billamount" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="orderdate" HeaderText="orderdate" 
                            SortExpression="orderdate" />
                        <asp:HyperLinkField DataNavigateUrlFields="sessionid" 
                            DataNavigateUrlFormatString="orderdetailuser.aspx?sessid={0}" 
                            HeaderText="Click to view details" Text="Show order details" />
                    </Columns>
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [finalorder] WHERE ([username] = @username) order by orderdate desc" OnSelected="SqlDataSource1_Selected1">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="un" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
				
                    </div>
                    <div class="text-center">
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
				</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
    <div class="clearfix"></div>
</div>
    
</asp:Content>

