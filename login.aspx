<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
					<li>Login</li>
				</ul>
			</div>
		</div>
	</div>


    <div class="contact-w3l">
		<div class="container">
			<!-- tittle heading -->
			
			<!-- //tittle heading -->
			<!-- contact -->
		
            
<div class="col-md-4 col-md-offset-4" id="login">
						<section id="inner-wrapper" class="login">
							<article>
								<form><h3> LOGIN </h3>
									<div class="form-group">
										<div class="input-group">
                                           
											<span class="input-group-addon"><i class="fa fa-user"> </i></span>
											
								<asp:Label ID="l1" runat="server" CssClass="auto-style271"></asp:Label>
                                <asp:TextBox runat="server" ID="TextBox1" placeholder="Username" required="" CssClass="form-control"></asp:TextBox>

										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope"> </i></span>
											
								<asp:TextBox runat="server" ID="TextBox2" placeholder="Password" required="" CssClass="form-control" Height="35" TextMode="Password" ></asp:TextBox>
							
										</div>
									</div>
									
                                    
                            <asp:Button runat="server" ID="subbtn" Text="Login" OnClick="subbtn_Click" />
					
								</form>
							</article>
						</section></div>


			<!-- //contact -->
		</div>
	</div>

</asp:Content>

