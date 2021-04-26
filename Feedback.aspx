<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-decoration: underline;
            color: #006600;
        }
        .style4
        {
            width: 284px;
        }
        .style5
        {
        font-size: large;
        font-weight: bold;
    }
        .style6
        {
            width: 420px;
        }
        .style8
        {
            width: 398px;
            height: 19px;
        font-size: large;
        font-weight: bold;
    }
        .style9
        {
            width: 420px;
            height: 19px;
        }
        .style10
        {
            height: 19px;
        }
        .style12
        {
            width: 398px;
            height: 34px;
        font-size: large;
        font-weight: bold;
    }
        .style13
        {
            width: 420px;
            height: 34px;
        }
        .style14
        {
            height: 34px;
        }
        .style15
        {
            font-size: large;
            font-weight: bold;
            width: 398px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Feedback</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle">
					
				  </div>
				  <div class="form">
					
                        <!---Username---->
                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                       
                       <asp:TextBox ID="TextBox2" runat="server" placeholder="Email ID"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="E-mail is required"></asp:RequiredFieldValidator>
            
                       <asp:TextBox ID="TextBox3" runat="server" placeholder="Phone no"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Phone no is required"></asp:RequiredFieldValidator><br />

                     
                         How can you rate our website overall?
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            RepeatDirection="Horizontal" Width="100%">
                            <asp:ListItem>Bad</asp:ListItem>
                            <asp:ListItem>Average</asp:ListItem>
                            <asp:ListItem>Good</asp:ListItem>
                            <asp:ListItem>Very Good</asp:ListItem>
                            <asp:ListItem>Excellent</asp:ListItem>
                        </asp:RadioButtonList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="RadioButtonList1" 
                    ErrorMessage="Information is required"></asp:RequiredFieldValidator><br /><br />
                        
                        
                      Is our website is user friendly?
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                            RepeatDirection="Horizontal" Width="30%">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="RadioButtonList2" 
                            ErrorMessage="Information is required"></asp:RequiredFieldValidator><br /><br />
                        
                    
                      Do you want more products on site?
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                            RepeatDirection="Horizontal">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="RadioButtonList3" 
                            ErrorMessage="Information is required"></asp:RequiredFieldValidator><br /><br />
                        

                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                    placeholder="Product Name"></asp:TextBox>

                         <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" 
                    placeholder="Other suggestions"></asp:TextBox>
                      <asp:Button ID="Button1" runat="server" Text="Feedback" 
                    onclick="Button1_Click" Font-Bold="True" />
                      <asp:Label ID="Label1" runat="server"></asp:Label>
                      
                      </div>
				 
				 
				</div>
			</div>
			
		</div>
<!-- //login -->
		</div>
    <div class="newsletter-top-serv-btm">
		<div class="container">
			
			<div class="clearfix"> </div>
		</div>
	</div>
    <div class="clearfix"></div>
   </div>
    
</asp:Content>

