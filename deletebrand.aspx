<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="deletebrand.aspx.cs" Inherits="deletebrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 60px;
        }
        .style5
        {
            width: 322px;
        }
        .style6
        {
            width: 322px;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3l_banner_nav_right">
            <div class="w3_login_module">
              <br /><h3 align="center">Delete Brand</h3>
				<div class="module">
				
				  <div class="form">
                      <div class="table-responsive col-sm-12 text-center">
                        &nbsp;
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [addbrand]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [addbrand] WHERE [brandid] = @original_brandid" InsertCommand="INSERT INTO [addbrand] ([brandname], [brandpic]) VALUES (@brandname, @brandpic)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [addbrand] SET [brandname] = @brandname, [brandpic] = @brandpic WHERE [brandid] = @original_brandid AND (([brandname] = @original_brandname) OR ([brandname] IS NULL AND @original_brandname IS NULL)) AND (([brandpic] = @original_brandpic) OR ([brandpic] IS NULL AND @original_brandpic IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_brandid" Type="Decimal" />
                                <asp:Parameter Name="original_brandname" Type="String" />
                                <asp:Parameter Name="original_brandpic" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="brandname" Type="String" />
                                <asp:Parameter Name="brandpic" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="brandname" Type="String" />
                                <asp:Parameter Name="brandpic" Type="String" />
                                <asp:Parameter Name="original_brandid" Type="Decimal" />
                                <asp:Parameter Name="original_brandname" Type="String" />
                                <asp:Parameter Name="original_brandpic" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                      </div>
                    <div class="table-responsive col-sm-12 text-center"> 
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="brandid" DataSourceID="SqlDataSource3" 
                    PageSize="5" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                    
                            <AlternatingRowStyle BackColor="White" />
                    
                    <Columns>
                        <asp:ImageField DataImageUrlField="brandpic" DataImageUrlFormatString="images/{0}" HeaderText="Image">
                            <ControlStyle Height="150px" Width="200px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="brandname" HeaderText="Brand Name" SortExpression="brandname" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                   
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [addbrand] WHERE [brandid] = @original_brandid " 
                    InsertCommand="INSERT INTO [addbrand] ([brandname], [brandpic]) VALUES (@brandname, @brandpic)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [brandid], [brandname], [brandpic] FROM [addbrand]" 
                    UpdateCommand="UPDATE [addbrand] SET [brandname] = @brandname, [brandpic] = @brandpic WHERE [brandid] = @original_brandid AND (([brandname] = @original_brandname) OR ([brandname] IS NULL AND @original_brandname IS NULL)) AND (([brandpic] = @original_brandpic) OR ([brandpic] IS NULL AND @original_brandpic IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_brandid" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="brandname" Type="String" />
                        <asp:Parameter Name="brandpic" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="brandname" Type="String" />
                        <asp:Parameter Name="brandpic" Type="String" />
                        <asp:Parameter Name="original_brandid" Type="Decimal" />
                        <asp:Parameter Name="original_brandname" Type="String" />
                        <asp:Parameter Name="original_brandpic" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                    </div>
                 </div>
				 
				 
				</div>
			</div>
			
		</div><br /><br />
     <div class="clearfix"></div>
</div>
</asp:Content>

