<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="deletecategory.aspx.cs" Inherits="deletecategory" %>

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
             <br /> <h3 align="center">Delete Category</h3>
				<div class="module form-module1">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-12 text-center"> 
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="catid" DataSourceID="SqlDataSource1" AllowPaging="True" 
                    PageSize="5" Width="100%" CssClass="table">
                    
                    <Columns>
                        <asp:ImageField DataImageUrlField="catpic" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Category image">
                            <ControlStyle Height="150px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="catname" HeaderText="Category name" 
                            SortExpression="catname" />
                        <asp:CommandField HeaderText="Click to delete" ShowDeleteButton="True" 
                            ButtonType="Image" DeleteImageUrl="~/images/delete.png" />
                    </Columns>
                    
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [addcategory] WHERE [catid] = @original_catid " 
                    InsertCommand="INSERT INTO [addcategory] ([catname], [catpic]) VALUES (@catname, @catpic)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [addcategory]" 
                    UpdateCommand="UPDATE [addcategory] SET [catname] = @catname, [catpic] = @catpic WHERE [catid] = @original_catid AND (([catname] = @original_catname) OR ([catname] IS NULL AND @original_catname IS NULL)) AND (([catpic] = @original_catpic) OR ([catpic] IS NULL AND @original_catpic IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_catid" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="catname" Type="String" />
                        <asp:Parameter Name="catpic" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="catname" Type="String" />
                        <asp:Parameter Name="catpic" Type="String" />
                        <asp:Parameter Name="original_catid" Type="Decimal" />
                        <asp:Parameter Name="original_catname" Type="String" />
                        <asp:Parameter Name="original_catpic" Type="String" />
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

