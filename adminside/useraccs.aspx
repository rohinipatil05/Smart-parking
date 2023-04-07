<%@ Page Title="" Language="C#" MasterPageFile="~/adminside/admin.master" AutoEventWireup="true" CodeFile="useraccs.aspx.cs" Inherits="useraccs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="colorlib-product">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
						<h2>User Accounts</h2>
                        <p>&nbsp;</p>
					</div>
				</div>
                <div class="row row-pb-md">




                    <asp:GridView runat="server" ID="gvnew" AutoGenerateColumns="False" DataKeyNames="user_Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black" Height="253px" Width="980px">

                        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                        <Columns>
                            
                            <asp:BoundField DataField="firstname" HeaderText="first name" SortExpression="firstname"></asp:BoundField>
                            <asp:BoundField DataField="lastname" HeaderText="last name" SortExpression="lastname"></asp:BoundField>
                            <asp:BoundField DataField="mobileno" HeaderText="mobile Number" SortExpression="mobileno"></asp:BoundField>
                            <asp:BoundField DataField="addr" HeaderText="address" SortExpression="addr"></asp:BoundField>
                            <asp:BoundField DataField="emailid" HeaderText="email Id" SortExpression="emailid"></asp:BoundField>
                            
                        </Columns>
                        <FooterStyle BackColor="#CCCC99"></FooterStyle>

                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

                        <PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>

                        <RowStyle BackColor="#F7F7DE"></RowStyle>

                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                        <SortedAscendingCellStyle BackColor="#FBFBF2"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="#848384"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#EAEAD3"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#575357"></SortedDescendingHeaderStyle>
                    </asp:GridView>








                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnectionString %>' SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
                </div>
                </div>
        </div>



</asp:Content>

