<%@ Page Title="" Language="C#" MasterPageFile="~/userside/user.master" AutoEventWireup="true" CodeFile="confirmbooking.aspx.cs" Inherits="userside_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            height: 53px;
            width: 195px;
        }
        .auto-style15 {
            height: 53px;
            width: 266px;
        }
        .auto-style16 {
            height: 36px;
            width: 266px;
        }
        .auto-style17 {
            height: 36px;
            width: 195px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="index.html">Home</a>
						<i>|</i>
					</li>
					<li>Payment</li>
				</ul>
			</div>
		</div>
	</div>

    <div class="contact-w3l">
        <div class="container">
            <!-- tittle heading -->
            <h3 class="tittle-w3l">Slot Booking Information
				<span class="heading-style"></span>
            </h3>
            <!-- //tittle heading -->
            <!-- contact -->
            <div class="contact agileits">
                <div class="contact-agileinfo">
                    <div class="contact-form wthree">

                        <table class="nav-justified" border="1">

                            <tr>
                                <td class="auto-style15">
                                   <center> <label id="Label6" runat="server" class="label label-info" style="font-size: x-large">
                            Slot Number
                        </label></center>
                                </td>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <td class="auto-style14"><center><asp:Label runat="server" ID="slotno_lbl"></asp:Label></center>                        </td>
                            </tr>

                            <tr>
                                <td class="auto-style15">
                                   <center> <label id="Label7" runat="server" class="label label-info" style="font-size: x-large">
                            Date
                        </label></center>
                                </td>
                                
                                <td class="auto-style14"><center><asp:Label runat="server" ID="date_lbl"></asp:Label> </center>                        </td>
                            </tr>

                            <tr>
                                <td class="auto-style15">
                                   <center> <label id="Label2" runat="server" class="label label-info" style="font-size: x-large">
                            Area Name
                        </label></center>
                                </td>
                                
                                <td class="auto-style14"><center> 
                                    <asp:Label runat="server" ID="areaname_lbl"></asp:Label> 
                                    </center>                        

                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style15">
                                   <center> <label id="Label8" runat="server" class="label label-info" style="font-size: x-large">
                            Start Time
                        </label></center>
                                </td>
                                
                                <td class="auto-style14"><center> <asp:Label runat="server" ID="start_time_lbl"></asp:Label>  </center>                        </td>
                            </tr>

                            <tr>
                                <td class="auto-style15">
                                   <center> <label id="Label1" runat="server" class="label label-info" style="font-size: x-large">
                            End Time
                        </label></center>
                                </td>
                                
                                <td class="auto-style14"><center><asp:Label runat="server" ID="end_time_lbl"></asp:Label> </center>                        </td>
                            </tr>

                            <tr>
                                <td class="auto-style15">
                                   <center> <label id="Label3" runat="server" class="label label-info" style="font-size: x-large">
                            Total Charge
                        </label></center>
                                </td>
                                
                                <td class="auto-style14"><center><asp:Label runat="server" ID="charge_lbl"></asp:Label> rs </center>                        </td>
                            </tr>

                        </table>

                        <center>
                        <asp:Button runat="server" Text="Book now" id="cBook" OnClick="cBook_Click" />
                            </center>
                    </div>

                </div>
            </div>
            <!-- //contact -->
        </div>
    </div>


    

    </div>
</asp:Content>

