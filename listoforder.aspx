<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="listoforder.aspx.cs" Inherits="listoforder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3l_banner_nav_right">
            <div class="w3_login_module">
             <br /> <h3 align="center">List of Orders</h3><br />
				<div class="module">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-12 text-center"> 
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="orderno" DataSourceID="SqlDataSource1" CssClass="table">
                    <Columns>
                        <asp:BoundField DataField="orderno" HeaderText="orderno" InsertVisible="False" 
                            ReadOnly="True" SortExpression="orderno" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="paymentmode" HeaderText="paymentmode" 
                            SortExpression="paymentmode" />
                        <asp:BoundField DataField="shippingaddress" HeaderText="shippingaddress" 
                            SortExpression="shippingaddress" />
                        <asp:BoundField DataField="billamount" HeaderText="billamount" 
                            SortExpression="billamount" />
                        <asp:BoundField DataField="orderdate" HeaderText="orderdate" 
                            SortExpression="orderdate" />
                        <asp:HyperLinkField DataNavigateUrlFields="sessionid" 
                            DataNavigateUrlFormatString="orderdetailsadmin.aspx?sessid={0}" 
                            HeaderText="Click to view details" Text="Show order details" />
                    </Columns>
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [finalorder] ORDER BY [orderdate] DESC">
                </asp:SqlDataSource>

                    </div>
                    
                 </div>
				 
				 
				</div>
			</div>
			
		</div>
     <div class="clearfix"></div>
</div>
    
</asp:Content>

