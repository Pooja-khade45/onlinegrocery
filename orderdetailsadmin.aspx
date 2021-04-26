<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="orderdetailsadmin.aspx.cs" Inherits="orderdetailsadmin" %>

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
             <br /> <h3 align="center">Order Details</h3>
				<div class="module">
				  <div class="toggle"></div>
				  <div class="form">
                    <div class="table-responsive col-sm-12 text-center"> 
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="sno" DataSourceID="SqlDataSource1" class="table">
                    
                    <Columns>
                        <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="images/{0}" HeaderText="Image">
                            <ControlStyle Height="50px" />
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
                    
                 </div>
				 
				 
				</div>
			</div>
			
		</div>
     <div class="clearfix"></div>
</div>
    
    <table cellpadding="0" cellspacing="0" class="style4">
        <tr>
            <td>
               
            </td>
        </tr>
    </table>
</asp:Content>

