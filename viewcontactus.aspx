<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewcontactus.aspx.cs" Inherits="viewcontactus" %>

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
             <br /> <h3 align="center">View Messages</h3><br />
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
                        <asp:BoundField DataField="message" HeaderText="Message" 
                            SortExpression="message" />
                        <asp:CommandField HeaderText="Click to delete" ShowDeleteButton="True" 
                            ButtonType="Image" DeleteImageUrl="~/images/delete.png" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [contactus] WHERE [serialno] = @original_serialno" 
                    InsertCommand="INSERT INTO [contactus] ([name], [username], [phone], [message]) VALUES (@name, @username, @phone, @message)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [serialno], [name], [username], [phone], [message] FROM [contactus]" 
                    UpdateCommand="UPDATE [contactus] SET [name] = @name, [username] = @username, [phone] = @phone, [message] = @message WHERE [serialno] = @original_serialno AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_serialno" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="message" Type="String" />
                        <asp:Parameter Name="original_serialno" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_message" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                    </div>
                    
                 </div>
				 
				 
				</div>
			</div>
			
		</div>
     <div class="clearfix"></div>
</div>
   
</asp:Content>

