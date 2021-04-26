<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="deletesubcategory.aspx.cs" Inherits="deletesubcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 18px;
        }
        .style5
        {
            height: 18px;
            width: 56px;
        }
        .style6
        {
            width: 56px;
        }
        .style7
        {
            height: 18px;
            width: 334px;
        }
        .style8
        {
            width: 334px;
        }
        .style9
        {
            width: 334px;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
        <br /><h3 align="center">Delete Subategory</h3>
            <div class="w3_login_module">
              
				<div class="module form-module1">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-offset-3 col-sm-4 text-center"> 
                       <label>Choose Category</label>
                       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="catname" 
                            DataValueField="catid" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [catid], [catname] FROM [addcategory]">
                        </asp:SqlDataSource> <br /><br />
                        </div>  
                     <div class="table-responsive col-sm-12 text-center">
                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="subcatid" DataSourceID="SqlDataSource2" AllowPaging="True" 
                    PageSize="5" Width="100%" CssClass="table">
                   
                    <Columns>
                        <asp:ImageField DataImageUrlField="subcatpic" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Sub Category image">
                            <ControlStyle Height="150px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="subcatname" HeaderText="Sub Category name" 
                            SortExpression="subcatname" />
                        <asp:CommandField HeaderText="Click to delete" ShowDeleteButton="True" 
                            ButtonType="Image" DeleteImageUrl="~/images/delete.png" />
                    </Columns>
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [subcategory] WHERE [subcatid] = @original_subcatid" 
                    InsertCommand="INSERT INTO [subcategory] ([subcatname], [subcatpic]) VALUES (@subcatname, @subcatpic)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [subcatid], [subcatname], [subcatpic] FROM [subcategory] WHERE ([maincatid] = @maincatid)" 
                    UpdateCommand="UPDATE [subcategory] SET [subcatname] = @subcatname, [subcatpic] = @subcatpic WHERE [subcatid] = @original_subcatid AND (([subcatname] = @original_subcatname) OR ([subcatname] IS NULL AND @original_subcatname IS NULL)) AND (([subcatpic] = @original_subcatpic) OR ([subcatpic] IS NULL AND @original_subcatpic IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_subcatid" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="subcatname" Type="String" />
                        <asp:Parameter Name="subcatpic" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="maincatid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="subcatname" Type="String" />
                        <asp:Parameter Name="subcatpic" Type="String" />
                        <asp:Parameter Name="original_subcatid" Type="Decimal" />
                        <asp:Parameter Name="original_subcatname" Type="String" />
                        <asp:Parameter Name="original_subcatpic" Type="String" />
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

