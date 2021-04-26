<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="thxorder.aspx.cs" Inherits="thxorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 100%;
        font-weight: 700;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
            <div class="w3_login_module">
				
				  <div class="form">
                      <div style="width:100%;padding:2em 0 3em 3em;">
                          Thanks for shopping on our website.<br />
                                Your order number is
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                    &nbsp;. Your total bill is Rs.<asp:Label ID="Label3" runat="server"></asp:Label>
                    &nbsp;.<br />
                                Summary of your shopping is as below
                      </div>
                          
                     <div class="table-responsive otable">
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="sno" DataSourceID="SqlDataSource1" Width="90%" CssClass="table">
                
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
                    <asp:SessionParameter Name="sessionid" SessionField="sessid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                    </div>
                      
                 </div>
				
                              <br />
                         
				 
				</div>
			
			
		</div>
   <div class="newsletter-top-serv-btm">
		<div class="container">
			
			<div class="clearfix"> </div>
		</div>
	</div>
    <div class="clearfix"></div>
        </div>
</asp:Content>

