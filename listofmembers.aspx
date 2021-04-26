<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="listofmembers.aspx.cs" Inherits="listofmembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#C9EB75" cellpadding="0" cellspacing="0" class="style3">
        <tr>
            <td>
                <h1 style="text-decoration: underline; color: #006600">
                    List Of Members</h1>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="5" 
                    Width="974px">
                    <AlternatingRowStyle BackColor="#CCFF99" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="country" HeaderText="country" 
                            SortExpression="country" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    </Columns>
                    <HeaderStyle BackColor="#006600" ForeColor="White" />
                    <RowStyle BackColor="#CCFF66" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [name], [address], [city], [state], [phone], [username], [gender], [country], [dob] FROM [signup]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

