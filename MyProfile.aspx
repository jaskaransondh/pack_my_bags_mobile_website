<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="MyProfile" %>

<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/myprofile.css" />
    <script src="js/myprofile.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="tabHeader">
        <div id="London" class="tabcontent">
          <h3 class="myHeader">My Information</h3>
            <div id="custInfo" class="cont">
                <div id="div1">
                    <%--<h1 id="title4"><mark style="background-color: white;">Pick a hotel</mark></h1>--%>
                    <div id="submitPayment">
                        <asp:Button ID="btnSubmitPayment" runat="server" Text="Edit" BorderColor="Black" BorderStyle="Solid" OnClick="btnSubmitPayment_Click" />
                    </div>
                    <br />
                    <div id="custInput1" class="inline">
                        <asp:Label ID="lblFullName" runat="server" Text="Full Name"></asp:Label>
                        <asp:TextBox ID="tbFullName" runat="server" ViewStateMode="Enabled"></asp:TextBox><br />
                    </div>
                    <div id="custInput2" class="inline">
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                        <asp:TextBox ID="tbCity" runat="server"></asp:TextBox><br />
                    </div>
                    <div id="custInput3" class="inline">
                        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                        <asp:TextBox ID="tbPhone" runat="server" TextMode="Phone" ViewStateMode="Enabled"></asp:TextBox><br />
                    </div>
                    <div id="custInput4" class="inline">
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="tbEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    <div id="custInput5" class="inline">
                        <asp:Label ID="lblPayId" runat="server" Text="PaymentID"></asp:Label>
                        <asp:TextBox ID="tbPayId" runat="server" TextMode="Number" ViewStateMode="Enabled"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>

        <div id="Paris" class="tabcontent">
          <h3 class="myHeader">My Trips</h3>
            <div id="gv">
            <asp:GridView ID="gvMyTrip" runat="server" AutoGenerateColumns="False" BackColor="Black" DataSourceID="DataSourceMyTrip" CellPadding="10" >
                <Columns>
                    <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                    <asp:BoundField DataField="PayID" HeaderText="PayID" SortExpression="PayID" />
                    <asp:BoundField DataField="Origin" HeaderText="Origin" SortExpression="Origin" />
                    <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                    <asp:BoundField DataField="TripStartDate" HeaderText="TripStartDate" SortExpression="TripStartDate" />
                    <asp:BoundField DataField="TripEndDate" HeaderText="TripEndDate" SortExpression="TripEndDate" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="RoomsBooked" HeaderText="RoomsBooked" SortExpression="RoomsBooked" />
                    <asp:BoundField DataField="CheckInDate" HeaderText="CheckInDate" SortExpression="CheckInDate" />
                    <asp:BoundField DataField="CheckOutDate" HeaderText="CheckOutDate" SortExpression="CheckOutDate" />
                    <asp:BoundField DataField="BookingDate" HeaderText="BookingDate" SortExpression="BookingDate" />
                    <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
                    <asp:BoundField DataField="TotalDiscount" HeaderText="TotalDiscount" SortExpression="TotalDiscount" />
                    <asp:BoundField DataField="TripInsurance" HeaderText="TripInsurance" SortExpression="TripInsurance" />
                </Columns>
            </asp:GridView>
                </div>
            <asp:SqlDataSource ID="DataSourceMyTrip" runat="server" ConnectionString="<%$ ConnectionStrings:PackMyBagsConnectionString %>" SelectCommand="SELECT Customer.CName, Customer.PayID, Trip.Origin, Trip.Destination, Trip.TripStartDate, Trip.TripEndDate, TripBooked.Status, TripBooked.RoomsBooked, TripBooked.CheckInDate, TripBooked.CheckOutDate, TripBooked.BookingDate, Hotel.HotelName, Hotel.City, Trip.TotalPrice, Trip.TotalDiscount, Trip.TripInsurance FROM Customer INNER JOIN TripBooked ON Customer.CustomerID = TripBooked.CustomerID INNER JOIN Hotel ON TripBooked.HotelID = Hotel.HotelID INNER JOIN Trip ON TripBooked.TripID = Trip.TripID WHERE (Customer.CEmail = @email)">
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="email" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <a class="tablink" onclick="openCity('London', this, 'red')" id="defaultOpen">My Info</a>
        <a class="tablink" onclick="openCity('Paris', this, 'green')">My Trips</a>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</asp:Content>

