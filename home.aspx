<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content> 
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="w3l_banner_nav_right">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner">
								<h3>Make your <span>food</span> with Spicy.</h3>
								<div class="more">
									<a href="#" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner1">
								<h3>Make your <span>food</span> with Spicy.</h3>
								<div class="more">
									<a href="#" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner2">
								<h3>upto <i>50%</i> off.</h3>
								<div class="more">
									<a href="#" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
			  <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
                    $(window).load(function () {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            start: function (slider) {
                                $('body').removeClass('loading');
                            }
                        });
                    });
			  </script>
			<!-- //flexSlider -->
		</div>
    <div class="clearfix"></div>
	</div>
    <!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>Various Products</h3>
			<div class="agile_top_brands_grids">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                   <ItemTemplate>
				        <div class="col-md-3 top_brand_left spacing">
					        <div class="hover14 column">
						        <div class="agile_top_brand_left_grid">
							        
							        <div class="agile_top_brand_left_grid1">
								        <figure>
									        <div class="snipcart-item block" >
										        <div class="snipcart-thumb">
											        <a href="<%# Eval("productid", "moreproductdetail.aspx?pid={0}") %>"><img title=" " alt=" " src="<%# Eval("picture", "images/{0}") %>" /></a>		
											        <a href="<%# Eval("productid", "moreproductdetail.aspx?pid={0}") %>"><p><%# Eval("productname") %></a></p>
											       
										        </div>
										        <div class="snipcart-details top_brand_home_details">
											
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
<!-- //top-brands -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="select top 8 *  FROM [addproduct] order by newid()"></asp:SqlDataSource>
</asp:Content>

