<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style271 {
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="StyleSheet1.css" rel="stylesheet" />
    <div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="index.html">Home</a>
						<i>|</i>
					</li>
					<li>Register</li>
				</ul>
			</div>
		</div>
	</div>
    
<div class="col-md-4 col-md-offset-4" id="login">
						<section id="inner-wrapper" class="login">
							<article>
								<form><h3>Register Now</h3>
                                    
							<div class=""><asp:Label runat="server" ID="msg_lbl" CssClass="auto-style271"></asp:Label>
						
									<div class="form-group">
										<div class="input-group">
											
											
                                             <asp:TextBox runat="server" ID="TextBox1" placeholder="First Name" required="" Width="270px"></asp:TextBox>

										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											
											<asp:TextBox runat="server" ID="TextBox2" placeholder="Last Name" required="" Width="270px"></asp:TextBox>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											
											<asp:TextBox runat="server" ID="TextBox3" placeholder="Mobile Number" required="" Width="270px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Number" ValidationExpression="^[0-9]{10}$" CssClass="auto-style24"></asp:RegularExpressionValidator>
							
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											
											<asp:TextBox runat="server" ID="TextBox4" placeholder="Address" required="" CssClass="auto-style1" Width="270px"></asp:TextBox>
										</div>
									</div>

                                    <div class="form-group">
										<div class="input-group">
				
											<asp:TextBox runat="server" ID="TextBox5" placeholder="Email" required="" Width="270px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style24"></asp:RegularExpressionValidator>
							
										</div>
									</div>

                                    <div class="form-group">
										<div class="input-group">
										
											
								<asp:TextBox runat="server" ID="TextBox6" placeholder="Password" required="" TextMode="Password"  CssClass="auto-style24" Width="270px"></asp:TextBox><br />
							
                                        </div>
									</div>

                                      <div class="form-group">
										<div class="input-group">
											
								<asp:TextBox runat="server" ID="TextBox7" placeholder="Re-type Password" required="" TextMode="Password" CssClass="auto-style24" Width="270px"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="password not match" CssClass="auto-style24"></asp:CompareValidator>
							
                                        </div>
									</div>



                                    
                            <asp:Button runat="server" ID="subbtn" Text="Submit" OnClick="subbtn_Click" />

</form>
							</article>
						</section></div>



</asp:Content>

