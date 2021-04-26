<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="cartdisplay.aspx.cs" Inherits="cartdisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="w3l_banner_nav_right">
            <div class="w3_login_module">
				<div class="module form-module1">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-12 text-center"> 
                        <asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" 
                                    DataKeyNames="sno" DataSourceID="SqlDataSource1" 
                                    onrowdeleted="GridView1_RowDeleted" CellPadding="4"  AlternatingRowStyle-CssClass="table text-center" 
                                    GridLines="None" PageSize="5">
                                    <AlternatingRowStyle />
                                    <Columns>

                                        <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="images/{0}" 
                                            HeaderText="Product image" ControlStyle-Height="200" ControlStyle-Width="200">
                                        </asp:ImageField>
                                        <asp:BoundField DataField="productname" HeaderText="productname" 
                                            SortExpression="productname" />
                                        <asp:BoundField DataField="quantity" HeaderText="quantity" 
                                            SortExpression="quantity" />
                                        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                                        <asp:BoundField DataField="totalcost" HeaderText="totalcost" 
                                            SortExpression="totalcost" />
                                        <asp:CommandField HeaderText="Click to delete" ShowDeleteButton="True" 
                                            ButtonType="Image" DeleteImageUrl="~/images/delete.png" />
                                    </Columns>
                                    <EditRowStyle  />
                                    <FooterStyle  Font-Bold="True" ForeColor="#000" />
                                    <HeaderStyle  Font-Bold="True" ForeColor="#000" />
                                    <PagerStyle ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle  />
                                    <SortedAscendingHeaderStyle />
                                    <SortedDescendingCellStyle />
                                    <SortedDescendingHeaderStyle />
                                </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConflictDetection="CompareAllValues" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    DeleteCommand="DELETE FROM [cart] WHERE [sno] = @original_sno" 
                                    InsertCommand="INSERT INTO [cart] ([pic], [productname], [quantity], [rate], [totalcost], [sessionid]) VALUES (@pic, @productname, @quantity, @rate, @totalcost, @sessionid)" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    SelectCommand="SELECT * FROM [cart] WHERE ([sessionid] = @sessionid)" 
                                    
                                    UpdateCommand="UPDATE [cart] SET [pic] = @pic, [productname] = @productname, [quantity] = @quantity, [rate] = @rate, [totalcost] = @totalcost, [sessionid] = @sessionid WHERE [sno] = @original_sno AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL)) AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND (([quantity] = @original_quantity) OR ([quantity] IS NULL AND @original_quantity IS NULL)) AND (([rate] = @original_rate) OR ([rate] IS NULL AND @original_rate IS NULL)) AND (([totalcost] = @original_totalcost) OR ([totalcost] IS NULL AND @original_totalcost IS NULL)) AND (([sessionid] = @original_sessionid) OR ([sessionid] IS NULL AND @original_sessionid IS NULL))" 
                                    onselected="SqlDataSource1_Selected">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_sno" Type="Decimal" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="pic" Type="String" />
                                        <asp:Parameter Name="productname" Type="String" />
                                        <asp:Parameter Name="quantity" Type="Decimal" />
                                        <asp:Parameter Name="rate" Type="Decimal" />
                                        <asp:Parameter Name="totalcost" Type="Decimal" />
                                        <asp:Parameter Name="sessionid" Type="String" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:SessionParameter Name="sessionid" SessionField="sessid" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="pic" Type="String" />
                                        <asp:Parameter Name="productname" Type="String" />
                                        <asp:Parameter Name="quantity" Type="Decimal" />
                                        <asp:Parameter Name="rate" Type="Decimal" />
                                        <asp:Parameter Name="totalcost" Type="Decimal" />
                                        <asp:Parameter Name="sessionid" Type="String" />
                                        <asp:Parameter Name="original_sno" Type="Decimal" />
                                        <asp:Parameter Name="original_pic" Type="String" />
                                        <asp:Parameter Name="original_productname" Type="String" />
                                        <asp:Parameter Name="original_quantity" Type="Decimal" />
                                        <asp:Parameter Name="original_rate" Type="Decimal" />
                                        <asp:Parameter Name="original_totalcost" Type="Decimal" />
                                        <asp:Parameter Name="original_sessionid" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                        <div class="col-sm-12">
                             Total bill amount in Rs<asp:Label ID="Label2" runat="server"></asp:Label>
                        </div>
                        <div class="col-sm-4">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                    Text="Continue Shopping" />
                        </div>
                        <div class="col-sm-4">
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                    Text="Check out" />
                        </div>                        
                        <div class="col-sm-8"></div>
                    </div>
                 </div>
				 
				 
				</div>
			</div>
			
		</div>
<!-- //login -->
		</div>
    <!-- newsletter-top-serv-btm -->
	<div class="newsletter-top-serv-btm">
		<div class="container">
			
			<div class="clearfix"> </div>
		</div>
	</div>
    <div class="clearfix"></div>
        </div>
  
                <asp:Label ID="Label3" runat="server"></asp:Label>
           </asp:Panel> 
</asp:Content>

