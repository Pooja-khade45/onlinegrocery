<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="categorydisplay.aspx.cs" Inherits="categorydisplay"debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 325px;
            height: 206px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
			<div class="w3ls_w3l_banner_nav_right_grid">
				<h3>Category</h3>
				<div class="w3ls_w3l_banner_nav_right_grid1">
					
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
					<div class="col-md-3 w3ls_w3l_banner_left spacing">
						<div class="hover14 column">
						<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
							
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="<%# Eval("catid", "subcategorydisplay.aspx?cid={0}") %>"><img src="<%# Eval("catpic", "images/{0}") %>" alt=" " class="img-responsive" /></a>
											<a href="<%# Eval("catid", "subcategorydisplay.aspx?cid={0}") %>"><p><%# Eval("catname") %></a></p>
											
										</div>
										
									</div>
								</figure>
							</div>
						</div>
						</div>
					</div>
                         </ItemTemplate>
                  </asp:ListView>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
    <div class="clearfix"></div>
</div>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [addcategory]"></asp:SqlDataSource>
</asp:Content>

