<%@ Page Title="" Language="C#" MasterPageFile="~/adminside/admin.master" AutoEventWireup="true" CodeFile="viewparkings.aspx.cs" Inherits="viewproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="colorlib-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
						<h2>All Parking Areas</h2>
                        <p>&nbsp;</p>
					</div>
				</div>
                <div class="row row-pb-md">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <br /><br />
                     <%
                            if (gridview1.Rows.Count > 0)
                            { %>
                             
                    <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False"
                        CssClass="mydatagrid" PagerStyle-CssClass="pager"
                        AllowSorting="True" CellPadding="4" Height="200px" Width="902px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black" DataSourceID="SqlDataSource2">

                        <Columns>
                                        

                            <asp:HyperLinkField HeaderText="Action" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="editparking.aspx?id={0}" Text="Edit" />
                            <asp:BoundField DataField="area_name" HeaderText="Area Name" SortExpression="area_name"></asp:BoundField>
                            <asp:BoundField DataField="start_time" HeaderText="Start Time" SortExpression="start_time"></asp:BoundField>
                            <asp:BoundField DataField="end_time" HeaderText="End Time" SortExpression="end_time"></asp:BoundField>
                            <asp:BoundField DataField="charge" HeaderText="charge" SortExpression="charge"></asp:BoundField>

                        </Columns>

                        <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                        <HeaderStyle BackColor="Black" CssClass="header" Font-Bold="True" ForeColor="White"></HeaderStyle>

                        <PagerStyle HorizontalAlign="Left" BackColor="#CCCCCC" CssClass="pager" ForeColor="Black"></PagerStyle>

                        <RowStyle BackColor="White" CssClass="rows"></RowStyle>

                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
                    </asp:GridView>


                    <%}

                            else
                            {%>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT [Id], [area_name], [start_time], [end_time], [charge] FROM [parking_area]" DeleteCommand="DELETE FROM [parking_area] WHERE [Id] = @Id"  >
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        
                        
                    </asp:SqlDataSource>

                    <h2>No Menu Avaliable</h2>
                   <%}%>

                      

                    
       

                    </div>
                 <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
                </div>
            </div>


</asp:Content>

