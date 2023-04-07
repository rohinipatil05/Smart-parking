<%@ Page Title="" Language="C#" MasterPageFile="~/userside/user.master" AutoEventWireup="true" CodeFile="recentbookings.aspx.cs" Inherits="userside_recentorders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="colorlib-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
						<h2>My Bookings</h2>
                        <p>&nbsp;</p>
					</div>
				</div>

                <div class="row row-pb-md">
                <%if (myordergv.Rows.Count > 0)
                  {%>
                    <asp:GridView runat="server" ID="myordergv" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ForeColor="Black" Height="194px" Width="1170px">

                        <AlternatingRowStyle BackColor="#CCCCCC" />

                        <Columns>
                            <asp:BoundField DataField="uslotno" HeaderText="slotno" SortExpression="slotno"></asp:BoundField>
                            <asp:BoundField DataField="udate" HeaderText="date" SortExpression="date"></asp:BoundField>

                            <asp:BoundField DataField="uareaname" HeaderText="areaname" SortExpression="areaname"></asp:BoundField>
                            <asp:BoundField DataField="ustarttime" HeaderText="starttime" SortExpression="starttime"></asp:BoundField>
                            <asp:BoundField DataField="uendtime" HeaderText="endtime" SortExpression="endtime"></asp:BoundField>
                            <asp:BoundField DataField="ucharge" HeaderText="charge" SortExpression="charge"></asp:BoundField>
                            <asp:BoundField DataField="uuseremail" HeaderText="useremail" SortExpression="useremail"></asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                        <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
                    </asp:GridView>
                     <%}
          else
          {%>


                    <h1>No Booking Available</h1>
                  <%}
                 %>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT [uslotno], [udate], [uareaname], [ustarttime], [uendtime], [ucharge], [uuseremail] FROM [bookings_users] WHERE ([uuseremail] = @useremail)">
                        <SelectParameters>
                            <asp:SessionParameter Name="useremail" SessionField="user" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                </div>
                </div>
          </div>

</asp:Content>

