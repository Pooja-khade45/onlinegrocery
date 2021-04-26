<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="orderdetailuser.aspx.cs" Inherits="orderdetailuser" %>

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
				<h3>Order History</h3>
				<div class="w3ls_w3l_banner_nav_right_grid1">
					 <div class="table-responsive ">
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="sno" DataSourceID="SqlDataSource1" Width="100%" CssClass="table">
                   
                    <Columns>
                        <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="images/{0}" 
                        HeaderText="Product image">
                        <ControlStyle Height="75px" />
                    </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="productname" 
                            SortExpression="productname" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" 
                            SortExpression="quantity" />
                        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                        <asp:BoundField DataField="totalcost" HeaderText="totalcost" 
                            SortExpression="totalcost" />
                    </Columns>
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [cart] WHERE ([sessionid] = @sessionid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="sessionid" QueryStringField="sessid" 
                            Type="String" />
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
    <table cellpadding="0" cellspacing="0" class="style3" bgcolor="#C9EB75">
        <tr>
            <td>
                
            </td>
        </tr>
    </table>
</asp:Content>

