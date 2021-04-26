<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="moreproductdetail.aspx.cs" Inherits="moreproductdetail" debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style5
        {
            width: 277px;
        }
        .style6
        {
            font-size: x-large;
            font-weight: bold;
            width: 220px;
        }
        .style7
        {
            width: 220px;
        }
        .style8
        {
            width: 63px;
        }
        .style9
        {
            font-size: x-large;
            font-weight: bold;
            width: 220px;
            height: 61px;
        }
        .style10
        {
            height: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="w3l_banner_nav_right">
			
			<div class="agileinfo_single">
				<h5><asp:Label ID="Label2" runat="server"></asp:Label></h5>
				
                    <div class="col-md-4 agileinfo_single_left img-size">
					    <asp:Image ID="Image2" runat="server" class="magnifier" />
				    </div>
				    <div class="col-md-8 agileinfo_single_right">
					
					    <div class="w3agile_description">
						    <h4><strong>Description :</strong></h4>
						    <p><asp:Label ID="Label3" runat="server"></asp:Label></p>
					    </div>
                        <div class="snipcart-item block">
                            <div class="snipcart-thumb agileinfo_single_right_snipcart">
                                <strong>Price</strong><span> <strong>:</strong> Rs.<asp:Label ID="Label4" runat="server"></asp:Label>/-&nbsp; Rs. </span>
                                <asp:Label ID="Label5" runat="server" Font-Strikeout="True"></asp:Label>
                                /-&nbsp;
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                                % Discount
                            </div>
                            <div class="snipcart-thumb agileinfo_single_right_snipcart">
                                <strong>Brand</strong><span><strong> :</strong>
                                    <asp:Label ID="Label8" runat="server"></asp:Label>
                                </span>
                            </div>
                            <div class="snipcart-thumb agileinfo_single_right_snipcart">
                                <strong>Stock</strong><span><strong> :</strong>
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </span>
                            </div>
                            <div class="snipcart-thumb agileinfo_single_right_snipcart">
                                <div class="row space">
                                    <div class="col-sm-3"><strong>Quantity :</strong></div>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control spacing">1</asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                            Text="Add To Cart" CssClass="button" />
                                    </div>
                                </div>
                            </div>
                        </div>
				    </div>
			
				<div class="clearfix"> </div>
			</div>

		</div>
        
    <div class="clearfix"></div>
</div>
</asp:Content>

