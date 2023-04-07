<%@ Page Title="" Language="C#" MasterPageFile="~/adminside/admin.master" AutoEventWireup="true" CodeFile="bookings.aspx.cs" Inherits="orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <div class="colorlib-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
						<h2>&nbsp;</h2>
                        <h2>All Bookings</h2>
					</div>
				</div>
                <br />
                <br />

                <div class="row row-pb-md">

                    <asp:GridView runat="server" ID="gd1" AutoGenerateColumns="False" CellPadding="3" Height="310px" Width="1083px" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" HeaderText="Release Slot" />
                            <asp:BoundField DataField="slotno" HeaderText="slotno" SortExpression="slot number"></asp:BoundField>
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"></asp:BoundField>
                            <asp:BoundField DataField="areaname" HeaderText="area name" SortExpression="areaname" />
                            <asp:BoundField DataField="starttime" HeaderText="start time" SortExpression="starttime" />
                            <asp:BoundField DataField="endtime" HeaderText="end time" SortExpression="endtime" />

                            <asp:BoundField DataField="charge" HeaderText="charge" SortExpression="charge" />
                            <asp:BoundField DataField="useremail" HeaderText="useremail" SortExpression="useremail" />

                        </Columns>

                        <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                        <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                        <RowStyle ForeColor="#000066"></RowStyle>

                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                    </asp:GridView>




                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [bookings]" DeleteCommand="DELETE FROM [bookings] WHERE [Id] = @Id" InsertCommand="INSERT INTO [bookings] ([slotno], [date], [areaid], [areaname], [starttime], [endtime], [charge], [useremail], [status]) VALUES (@slotno, @date, @areaid, @areaname, @starttime, @endtime, @charge, @useremail, @status)" UpdateCommand="UPDATE [bookings] SET [slotno] = @slotno, [date] = @date, [areaid] = @areaid, [areaname] = @areaname, [starttime] = @starttime, [endtime] = @endtime, [charge] = @charge, [useremail] = @useremail, [status] = @status WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="slotno" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="areaid" Type="String" />
                            <asp:Parameter Name="areaname" Type="String" />
                            <asp:Parameter Name="starttime" Type="String" />
                            <asp:Parameter Name="endtime" Type="String" />
                            <asp:Parameter Name="charge" Type="String" />
                            <asp:Parameter Name="useremail" Type="String" />
                            <asp:Parameter Name="status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="slotno" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="areaid" Type="String" />
                            <asp:Parameter Name="areaname" Type="String" />
                            <asp:Parameter Name="starttime" Type="String" />
                            <asp:Parameter Name="endtime" Type="String" />
                            <asp:Parameter Name="charge" Type="String" />
                            <asp:Parameter Name="useremail" Type="String" />
                            <asp:Parameter Name="status" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            <asp:Label runat="server" ID="lbl"></asp:Label>

                    </div>
                </div>
        </div>

</asp:Content>

