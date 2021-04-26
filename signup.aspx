<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup"debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
            width: 148px;
        }
    .style5
    {
            width: 223px;
            font-size: large;
            font-weight: bold;
        }
    .style8
    {
            width: 241px;
        }
        .style9
        {
            width: 204px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Sign Up</h3>
			<div class="w3_login_module">
				<div class="col-sm-6">
                    <div class="module form-module">
				  <div class="toggle"></div>
				  <div class="form">
					<h2>Create an account</h2>
                      
                          <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                     
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Address"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="City"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="City is required"></asp:RequiredFieldValidator>

                        <asp:TextBox ID="TextBox4" runat="server" placeholder="State"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="State is Required"></asp:RequiredFieldValidator>

                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Phone no"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="No. is greater than or less than 10 digits" 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>

                      <div class="row">
                          <div class="col-sm-3">
                              <label>Gender</label>
                          </div>
                          <div class="col-sm-9">
                              <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                          </div>
                      </div><br />
                       <div class="row">
                           <div class="col-sm-3">
                               <label> Choose Profile </label>
                           </div>
                           <div class="col-sm-9">
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                           </div>
                       </div>


				  </div>
				</div>
				</div>
                <div class="col-sm-6">
                     <div class="module form-module">
				      <div class="toggle"></div>
				      <div class="form">
                           <asp:TextBox ID="TextBox6" runat="server" placeholder="Email ID"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="e-mail is required"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="e-mail should be in proper format" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           <br />
            <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" 
                Font-Underline="False" ForeColor="Black" onclick="LinkButton12_Click" 
                CausesValidation="False">Check Availability</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server"></asp:Label>

                <asp:TextBox ID="TextBox7" runat="server" placeholder="Password" 
                TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Enter the password"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBox7" 
                ErrorMessage="Need  digits,lower case and upper case alphabets, speacial character" 
                ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"></asp:RegularExpressionValidator>

                      <asp:TextBox ID="TextBox8" runat="server" placeholder="Confirm Password" 
                TextMode="Password"></asp:TextBox>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
                ErrorMessage="Password should be same"></asp:CompareValidator>

                           <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" >
                               <asp:ListItem>Choose List</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>Austria</asp:ListItem>
                <asp:ListItem>Belgium</asp:ListItem>
                <asp:ListItem>Brazil</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>China</asp:ListItem>
                <asp:ListItem>Colombia</asp:ListItem>
                <asp:ListItem>Egypt</asp:ListItem>
                <asp:ListItem>France</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
                <asp:ListItem>Greece</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Italy</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>Malaysia</asp:ListItem>
                <asp:ListItem>New Zealand</asp:ListItem>
                <asp:ListItem>Pakistan</asp:ListItem>
                <asp:ListItem>Poland</asp:ListItem>
                <asp:ListItem>Qatar</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Singapore</asp:ListItem>
                <asp:ListItem>South Africa</asp:ListItem>
                <asp:ListItem>South Korea</asp:ListItem>
                <asp:ListItem>Spain</asp:ListItem>
                <asp:ListItem>Switzerland</asp:ListItem>
                <asp:ListItem>Thailand</asp:ListItem>
                <asp:ListItem>Turkey</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>United States</asp:ListItem>
            </asp:DropDownList><br />

                          <div class="row">
                              <div class="col-sm-3">Date of Birth</div>
                          <div class="col-sm-3"> <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
            </asp:DropDownList></div>
                          <div class="col-sm-3">
            <asp:DropDownList ID="DropDownList3" runat="server"  class="form-control">
            </asp:DropDownList></div>
                          <div class="col-sm-3">
            <asp:DropDownList ID="DropDownList4" runat="server"  class="form-control">
            </asp:DropDownList></div>
                          </div><br />

                          

                          <asp:Button ID="Button1" runat="server" Text="Sign Up" 
                onclick="Button1_Click" Font-Bold="True" />

                           <asp:Label ID="Label1" runat="server"></asp:Label>
                          
                      </div>
                </div>
			</div>
			<div class="clearfix"> </div>
		</div>
<!-- //login -->
		</div>
    </div>
    <!-- newsletter-top-serv-btm -->
	<div class="newsletter-top-serv-btm">
		<div class="container">
			
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter-top-serv-btm -->
  
</asp:Content>

