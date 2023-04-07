<%@ Page Title="" Language="C#" MasterPageFile="~/userside/user.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="userside_booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="services-breadcrumb">
        <div class="agile_inner_breadcrumb">
            <div class="container">
                <ul class="w3_short">
                    <li>
                        <a href="home.aspx">Home</a>
                        <i>|</i>
                    </li>
                    <li>Book Slot</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="contact-w3l">
        <div class="container">
            <!-- tittle heading -->
            <h3 class="tittle-w3l">Book Slot
				<span class="heading-style"></span>
            </h3>
            <!-- //tittle heading -->
            <!-- contact -->
            <div class="contact agileits">
                <div class="contact-agileinfo">
                    <div class="contact-form wthree">
                        <asp:Label runat="server" ID="msg_lbl"></asp:Label>
                        <strong><span class="auto-style13">
                        <br />
                        Select Date :</span></strong>
                        <asp:TextBox runat="server" TextMode="Date" ID="select_date" CssClass="form-control" required ></asp:TextBox>
                       


                        <br />
                        <strong><span class="auto-style13">Select Area :</span></strong>
                        <asp:DropDownList runat="server" ID="drp1" CssClass="form-control" required OnSelectedIndexChanged="drp1_SelectedIndexChanged"></asp:DropDownList>


                        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                        <asp:Button runat="server" ID="btn" Text="Show Parking spaces" OnClick="btn_Click" />
                        <br />
                        <br />

<asp:Panel runat="server" ID="panel1">


  <% 
      foreach (var status in counts_list)
        {
          
       %>
    <div class="row fa-border bg-info text-white">
        <div class="column">
        <label class="btn btn-primary">Slot <%=status.id %> </label>
        <label class="<%=status.isVisible?"btn btn-success" : "btn btn-danger" %>">  <%=status.sid %> </label>
   
      <a class="btn btn-info" href="confirmbooking.aspx?slot_id=<%=status.id %>&date=<%=select_date.Text %>&area=<%=aid %>" style="<%=status.isVisible ? "" : "display: none" %>" >Book Now </a>
            
        </div>
     </div>          

<br />
       <% }
          
           %>

    </asp:Panel>
                        
                    </div>

                    
                    
                  

                </div>
            </div>
            <!-- //contact -->
        </div>
    </div>

</asp:Content>

