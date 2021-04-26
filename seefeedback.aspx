<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="seefeedback.aspx.cs" Inherits="seefeedback" %>

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
             <br /> <h3 align="center">View Feedback</h3><br />
				<div class="module">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-12 text-center"> 
                       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="serialno" 
                    DataSourceID="SqlDataSource1" PageSize="5" Width="100%" CssClass="table">
                   
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="username" HeaderText="Username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                        <asp:BoundField DataField="rateourwebsite" HeaderText="Rate Our Website" 
                            SortExpression="rateourwebsite" />
                        <asp:BoundField DataField="userfriendly" HeaderText="User Friendly" 
                            SortExpression="userfriendly" />
                        <asp:BoundField DataField="wantmoreproducts" HeaderText="Want More Products" 
                            SortExpression="wantmoreproducts" />
                        <asp:BoundField DataField="productsname" HeaderText="Products name" 
                            SortExpression="productsname" />
                        <asp:BoundField DataField="comments" HeaderText="Comments" 
                            SortExpression="comments" />
                        <asp:CommandField HeaderText="Click to delete" ShowDeleteButton="True" 
                            ButtonType="Image" DeleteImageUrl="~/images/delete.png" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [feedback] WHERE [serialno] = @original_serialno" 
                    InsertCommand="INSERT INTO [feedback] ([name], [username], [phone], [rateourwebsite], [userfriendly], [wantmoreproducts], [productsname], [comments]) VALUES (@name, @username, @phone, @rateourwebsite, @userfriendly, @wantmoreproducts, @productsname, @comments)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [serialno], [name], [username], [phone], [rateourwebsite], [userfriendly], [wantmoreproducts], [productsname], [comments] FROM [feedback]" 
                    UpdateCommand="UPDATE [feedback] SET [name] = @name, [username] = @username, [phone] = @phone, [rateourwebsite] = @rateourwebsite, [userfriendly] = @userfriendly, [wantmoreproducts] = @wantmoreproducts, [productsname] = @productsname, [comments] = @comments WHERE [serialno] = @original_serialno AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([rateourwebsite] = @original_rateourwebsite) OR ([rateourwebsite] IS NULL AND @original_rateourwebsite IS NULL)) AND (([userfriendly] = @original_userfriendly) OR ([userfriendly] IS NULL AND @original_userfriendly IS NULL)) AND (([wantmoreproducts] = @original_wantmoreproducts) OR ([wantmoreproducts] IS NULL AND @original_wantmoreproducts IS NULL)) AND (([productsname] = @original_productsname) OR ([productsname] IS NULL AND @original_productsname IS NULL)) AND (([comments] = @original_comments) OR ([comments] IS NULL AND @original_comments IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_serialno" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="rateourwebsite" Type="String" />
                        <asp:Parameter Name="userfriendly" Type="String" />
                        <asp:Parameter Name="wantmoreproducts" Type="String" />
                        <asp:Parameter Name="productsname" Type="String" />
                        <asp:Parameter Name="comments" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="rateourwebsite" Type="String" />
                        <asp:Parameter Name="userfriendly" Type="String" />
                        <asp:Parameter Name="wantmoreproducts" Type="String" />
                        <asp:Parameter Name="productsname" Type="String" />
                        <asp:Parameter Name="comments" Type="String" />
                        <asp:Parameter Name="original_serialno" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_rateourwebsite" Type="String" />
                        <asp:Parameter Name="original_userfriendly" Type="String" />
                        <asp:Parameter Name="original_wantmoreproducts" Type="String" />
                        <asp:Parameter Name="original_productsname" Type="String" />
                        <asp:Parameter Name="original_comments" Type="String" />
                    </UpdateParameters>
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

