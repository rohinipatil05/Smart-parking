<%@ Page Title="" Language="C#" MasterPageFile="~/adminside/admin.master" AutoEventWireup="true" CodeFile="ParkingArea.aspx.cs" Inherits="ParkingArea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <section class="content container-fluid">

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading" style="color:orange;font-size:24px">information required</div>
                    <div class="panel-body"><asp:Label ID="msglbl" runat="server" ForeColor="Blue" CssClass="auto-style272"></asp:Label>
                        <br />
                        <br />
                     
                        <label>Parking Area Name :<br /> <asp:TextBox runat="server" ID="tname" Height="35px" Width="250px" required=""></asp:TextBox>
                        </label>
                        <br /><br />

                        <label>Start Time :<br /> <asp:TextBox runat="server" ID="start_time" Height="35px" Width="250px" TextMode="Time" required=""></asp:TextBox></label>
                        <br /><br />

                        <label>End Time :<br /> <asp:TextBox runat="server" ID="end_time" Height="35px" Width="250px" TextMode="Time" required=""></asp:TextBox></label>
                        <br /><br />
                                                <label>Parking Charge :<br /> <asp:TextBox runat="server" ID="charge" Height="35px" Width="250px" required=""></asp:TextBox>
  
                    </div>
                    <div class="panel-footer">
                        <asp:Button runat="server" ID="add_btn" CssClass="btn btn-primary" Text="Add Area" OnClick="add_btn_Click" />

                    </div>

                    
                </div>
            </div>
        </div>
    
    </section>


     </label>


</asp:Content>

