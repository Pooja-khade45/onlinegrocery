<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="branddisplay.aspx.cs" Inherits="branddisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 325px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
			<div class="w3ls_w3l_banner_nav_right_grid">
				<h3>Brands</h3>
				<div class="w3ls_w3l_banner_nav_right_grid1">
					
                    <asp:ListView ID="ListView1" runat="server" DataKeyField="brandid" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
					<div class="col-md-3 w3ls_w3l_banner_left spacing">
						<div class="hover14 column">
						<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
							
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="<%# Eval("brandid", "productdisplay.aspx?bid={0}") %>"><img src="<%# Eval("brandpic", "images/{0}") %>" alt=" " class="img-responsive" /></a>
											<p><%# Eval("brandname") %></p>
											
										</div>
										
									</div>
								</figure>
							</div>
						</div>
						</div>
					</div>
                         </ItemTemplate>
                  </asp:ListView>
                    <div class="text-center">
                         <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
    <div class="clearfix"></div>
</div>
 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT distinct addproduct.brandid, addproduct.subcatid,addbrand.brandname, addbrand.brandpic FROM addbrand INNER JOIN addproduct ON addbrand.brandid = addproduct.brandid WHERE (addproduct.subcatid = @scid)" OnSelected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="scid" QueryStringField="brd" />
                    </SelectParameters>
                </asp:SqlDataSource>
           
</asp:Content>

