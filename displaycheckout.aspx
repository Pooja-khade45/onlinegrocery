<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="displaycheckout.aspx.cs" Inherits="displaycheckout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 189px;
        }
        .style5
        {
            font-size: large;
            font-weight: bold;
        }
        .style6
        {
            width: 57px;
        }
        .style7
        {
            font-size: large;
            font-weight: bold;
            width: 57px;
        }
        .style8
        {
            width: 408px;
        }
        .style9
        {
            font-size: large;
            font-weight: bold;
            width: 408px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Check Out</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"></div>
				  <div class="form">
                      <div class="row">
                          <div class="col-sm-4">
                              Payment
                          </div>
                          <div class="col-sm-8">
                              <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem>Cash on delivery</asp:ListItem>
                    <asp:ListItem>Credit Card</asp:ListItem>
                    <asp:ListItem>Cheque/Draft</asp:ListItem>
                </asp:RadioButtonList>
                          </div>
                      </div>
                     
                      
                      <asp:Panel ID="Panel1" runat="server" Visible="False" CssClass="style5">
                          <asp:TextBox ID="TextBox1" runat="server" placeholder="Credit Card no. "></asp:TextBox>
                           <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                    <asp:ListItem>Choose Company Name</asp:ListItem>
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Visa</asp:ListItem>
                                    <asp:ListItem>Master Card</asp:ListItem>
                            </asp:DropDownList><br />
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Holder Name"></asp:TextBox>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Expiry Date"></asp:TextBox>
                      </asp:Panel>
                      
                      <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="Shipping Address" CssClass="form-control"></asp:TextBox><br />
                      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Make Payment" />
				</div>
			</div>
            </div>
			<div class="clearfix"></div>
		</div>
<!-- //login -->
		</div>
    <!-- newsletter-top-serv-btm -->
	<div class="newsletter-top-serv-btm">
		<div class="container">
			
			<div class="clearfix"> </div>
		</div>
	</div>
    
</asp:Content>

