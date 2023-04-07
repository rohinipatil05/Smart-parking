<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style271 {
            font-weight: 700;
            font-size: x-large;
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
					<li>Contact Us</li>
				</ul>
			</div>
		</div>
	</div>


    <div class="contact-w3l">
		<div class="container">
			<!-- tittle heading -->
			<%--<h3 class="tittle-w3l">Contact Us
				
			</h3>--%>
			<!-- //tittle heading -->
			<!-- contact -->
            
   
<div class="col-md-4 col-md-offset-4" id="login">
						<section id="inner-wrapper" class="login">
							<article>
								<form><h3>Contact US</h3>
                                   
                                
                                    
							<div class=""> <asp:Label runat="server" ID="msg_lbl" CssClass="auto-style271">  </asp:Label>
						
									<div class="form-group">
										<div class="input-group">
											
											
                                <asp:TextBox runat="server" ID="TextBox1" placeholder="First Name" required="" Width="253px"></asp:TextBox>
							
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<asp:TextBox runat="server" ID="TextBox2" placeholder="Last Name" required="" Width="253px"></asp:TextBox>
                                            	</div>
									</div>
									<div class="form-group">
										<div class="input-group">
													<asp:TextBox runat="server" ID="TextBox5" placeholder="Email" required="" Width="253px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
											
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											
								<asp:TextBox runat="server" ID="TextBox4" placeholder="Enter Message" required="" Width="253px"></asp:TextBox>
							
                                        </div>
									</div>    
                            <asp:Button runat="server" ID="subbtn" Text="Submit" OnClick="subbtn_Click" />
</form>
							</article>
						</section></div>

			<!-- //contact -->
		</div>
	</div>

</asp:Content>

