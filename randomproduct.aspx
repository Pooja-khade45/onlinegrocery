<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="randomproduct.aspx.cs" Inherits="randomproduct" %>

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
                <h1 style="color: #006600">
                    Random Products</h1>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" 
                    Width="968px">
                    <ItemTemplate>
                        <table cellpadding="0" cellspacing="0" class="style3">
                            <tr>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="157px" 
                                        ImageUrl='<%# Eval("picture", "images/{0}") %>' 
                                        PostBackUrl='<%# Eval("productid", "moreproductdetail.aspx?pid={0}") %>' 
                                        Width="159px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:LinkButton ID="LinkButton13" runat="server" 
                                        PostBackUrl='<%# Eval("productid", "moreproductdetail.aspx?pid={0}") %>' 
                                        Text='<%# Eval("productname") %>'></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT   Top 6[productid], [productname], [picture] FROM [addproduct] order by newid()">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

