<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pack My Bags Travel Company</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/mainpage.css" />
    <link href='https://fonts.googleapis.com/css?family=Didact Gothic' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Cinzel Decorative' rel='stylesheet'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
    <script type="text/javascript" src="engine1/jquery.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/mainpage.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="topnav" id="myTopnav">
            <a href="#first">Home</a>
            <a href="#hotels">Hotels</a>
            <a href="#destinations">Destinations</a>
            <a href="#mytrip">My Trip</a>

            <%if(Session["username"]!= null){ %>
                <div class="dropdown">
                  <button class="dropbtn"><%=Session["username"].ToString() %></button>
                  <div class="dropdown-content">
                    <a href="MyProfile.aspx">My Profile</a>
                    <asp:Button ID="btnLogOut" runat="server" Text="Logout" OnClick="btnLogOut_Click" />
                  </div>
                </div>
            <%}else { %>
                <a href="Login.aspx">Sign in</a>
            <%} %>
            <asp:HyperLink ID="home" runat="server" NavigateUrl="~/Default.aspx">Pack My Bags</asp:HyperLink>
            <a href="javascript:void(0);" style="font-size: 15px;" class="icon" onclick="myFunction()">&#9776;</a>
        </div>

        <img id="logo" src="images/PMB_LOGO.png" />

        <div class="content">
            <div id="first" class="first">
                <div id="content1">
                    <h1 id="title">Hundreds of Destinations Worldwide</h1>
                </div>
            </div>

            <div id="second" class="second">
                <div id="content2">
                    <h1 id="title2">HOT DESTINATIONS</h1>
                    <div id="wowslider-container1">
                    <div class="ws_images"><ul>
		                    <li><img src="data1/images/barcelona.jpg" alt="barcelona" title="Barcelona" id="wows1_0"/></li>
		                    <li><img src="data1/images/g4.jpg" alt="Vatican" title="Vatican" id="wows1_1"/></li>
		                    <li><img src="data1/images/india.jpg" alt="india" title="India" id="wows1_2"/></li>
		                    <li><img src="data1/images/london.jpg" alt="london" title="London" id="wows1_3"/></li>
		                    <li><a href="http://wowslider.net"><img src="data1/images/mauritius.jpg" alt="javascript carousel" title="Mauritius" id="wows1_4"/></a></li>
		                    <li><img src="data1/images/n3.jpg" alt="Ladakh" title="Ladakh" id="wows1_5"/></li>
	                    </ul></div>
	                    <div class="ws_bullets"><div>
		                    <a href="#" title="Barcelona"><span><img src="data1/tooltips/barcelona.jpg" alt="Barcelona"/>1</span></a>
		                    <a href="#" title="Vatican"><span><img src="data1/tooltips/g4.jpg" alt="Vatican"/>2</span></a>
		                    <a href="#" title="India"><span><img src="data1/tooltips/india.jpg" alt="India"/>3</span></a>
		                    <a href="#" title="London"><span><img src="data1/tooltips/london.jpg" alt="London"/>4</span></a>
		                    <a href="#" title="Mauritius"><span><img src="data1/tooltips/mauritius.jpg" alt="Mauritius"/>5</span></a>
		                    <a href="#" title="Ladakh"><span><img src="data1/tooltips/n3.jpg" alt="Ladakh"/>6</span></a>
	                    </div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">responsive slider</a> by WOWSlider.com v8.8</div>
                    <div class="ws_shadow"></div>
                    </div>	
                    <script type="text/javascript" src="engine1/wowslider.js"></script>
                    <script type="text/javascript" src="engine1/script.js"></script>
                </div>
            </div>

            <div id="destinations" class="third">
                <div id="content3">
                    <h1 id="title3"><mark style="background-color: white;">Pick a trip</mark></h1>
                    <br />
                    <div id="trip1" class="flexDiv">
                        <asp:ImageButton ID="imgParis" runat="server" ImageUrl="~/images/paris.jpg" Width="250px" Height="250px" PostBackUrl="#hotels" OnClick="imgParis_Click" />
                        <h2>Paris</h2>
                    </div>
                    <div id="trip2" class="flexDiv">
                        <asp:ImageButton ID="imgNorway" runat="server" ImageUrl="~/images/norway.jpg" Width="250px" Height="250px" PostBackUrl="#hotels" OnClick="imgNorway_Click" />
                        <h2>Norway</h2>
                    </div>
                    <div id="trip3" class="flexDiv">
                        <asp:ImageButton ID="imgSwitzerland" runat="server" ImageUrl="~/images/switzerland.png" Width="250px" Height="250px" PostBackUrl="#hotels" OnClick="imgSwitzerland_Click" />
                        <h2>Switzerland</h2>
                    </div>
                    <div id="trip4" class="flexDiv">
                        <asp:ImageButton ID="imgSydney" runat="server" ImageUrl="~/images/sydney.jpg" Width="250px" Height="250px" PostBackUrl="#hotels" OnClick="imgSydney_Click" />
                        <h2>Sydney</h2>
                    </div>
                </div>
            </div>

            <div id="hotels" class="fourth">
                <div id="content4">
                    <h1 id="title4">Pick a hotel</h1>
                    <%--<h1 id="title4"><mark style="background-color: white;">Pick a hotel</mark></h1>--%>
                    <br />
                    <div id="hotel1" class="flexDiv">
                        <asp:ImageButton ID="imgHotel1" runat="server" ImageUrl="~/images/hotel1.jpg" Width="250px" Height="250px" PostBackUrl="#mytrip" AlternateText="Paris Rivoli, Paris" OnClick="imgHotel1_Click" />
                        <h2><asp:Label ID="Label1" runat="server" Text="Paris Rivoli, Paris"></asp:Label></h2>
                        
                    </div>
                    <div id="hotel2" class="flexDiv">
                        <asp:ImageButton ID="imgHotel2" runat="server" ImageUrl="~/images/hotel2.jpg" Width="250px" Height="250px" PostBackUrl="#mytrip" OnClick="imgHotel2_Click" />
                        <h2><asp:Label ID="Label2" runat="server" Text="Helios Opera, Paris"></asp:Label></h2>
                    </div>
                    <div id="hotel3" class="flexDiv">
                        <asp:ImageButton ID="imgHotel3" runat="server" ImageUrl="~/images/hotel4.jpg" Width="250px" Height="250px" PostBackUrl="#mytrip" OnClick="imgHotel3_Click" />
                        <h2><asp:Label ID="Label3" runat="server" Text="Vic Eiffel, Paris"></asp:Label></h2>
                    </div>
                    <div id="hotel4" class="flexDiv">
                        <asp:ImageButton ID="imgHotel4" runat="server" ImageUrl="~/images/hotel3.jpg" Width="250px" Height="250px" PostBackUrl="#mytrip" OnClick="imgHotel4_Click" />
                        <h2><asp:Label ID="Label4" runat="server" Text="Ibis Styles, Paris"></asp:Label></h2>
                    </div>
                </div>
            </div>

            <div id="mytrip" class="fifth">
                <div id="content5">
                    <h1 id="title5">Your trip</h1>
                    <div id="today">
                        <asp:Label ID="lblToday" runat="server" Text="Today is August 12, 2017"></asp:Label>
                    </div>
                    <div id="submitDiv">
                        <%--<asp:Button ID="btnSubmit" runat="server" Text="Book Trip" BorderColor="Black" BorderStyle="Solid" OnClick="btnSubmit_Click" />--%>
                        <a id="btnSubmit" href="#customerInfo">Book Trip</a>
                    </div>
                    <br />
                    <div id="tripinfo">
                        <div id="userinput">
                            <asp:Label ID="lblFrom" runat="server" Text="From"></asp:Label><br />
                            <asp:TextBox ID="tbFrom" runat="server"></asp:TextBox><br />
                            <asp:Label ID="lblTo" runat="server" Text="To"></asp:Label><br />
                            <asp:TextBox ID="tbTo" runat="server"></asp:TextBox><br /><br />
                            <asp:Label ID="lblDeparting" runat="server" Text="Departing"></asp:Label><br />
                            <asp:TextBox ID="tbDeparting" runat="server" TextMode="Date"></asp:TextBox><br />
                            <asp:Label ID="lblReturning" runat="server" Text="Returning"></asp:Label><br />
                            <asp:TextBox ID="tbReturning" runat="server" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="moreinfo">
                            <div id="moreinfo1">
                                <asp:Label ID="lblRooms" runat="server" Text="Rooms"></asp:Label><br />
                                <asp:DropDownList ID="ddRooms" runat="server" Height="50px" Width="55px">
                                    <asp:ListItem Selected="True">1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div id="moreinfo2">
                                <asp:Label ID="lblAdults" runat="server" Text="Adults"></asp:Label><br />
                                <asp:DropDownList ID="ddAdults" runat="server" Height="50px" Width="55px">
                                    <asp:ListItem Selected="True">1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div id="moreinfo3">
                                <asp:Label ID="lblChildren" runat="server" Text="Children"></asp:Label><br />
                                <asp:DropDownList ID="ddChildren" runat="server" Height="50px" Width="55px">
                                    <asp:ListItem Selected="True">0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <br /><br />
                            <asp:CheckBox ID="chkCustomStay" runat="server" Text="Choose check in and check out dates" AutoPostBack="True" OnCheckedChanged="chkCustomStay_CheckedChanged" />
                            <br /><br />
                            <asp:Panel ID="panelCustomStay" runat="server" Visible="False">
                                <asp:Label ID="lblCheckIn" runat="server" Text="Check in"></asp:Label><br />
                                <asp:TextBox ID="tbCheckIn" runat="server" TextMode="Date"></asp:TextBox><br />
                                <asp:Label ID="lblCheckOut" runat="server" Text="Check out"></asp:Label><br />
                                <asp:TextBox ID="tbCheckOut" runat="server" TextMode="Date"></asp:TextBox>
                            </asp:Panel>
                        </div>
                        <div id="destinationDiv">
                            <asp:ImageButton ID="imgDestination" runat="server" ImageUrl="~/images/paris.jpg" Width="250px" Height="250px" />
                            <h2 style="text-align:center;"><asp:Label ID="lblDestination" runat="server" Text="Paris"></asp:Label></h2>
                        </div>
                        <div id="hotelDiv">
                            <asp:ImageButton ID="imgHotel" runat="server" ImageUrl="~/images/hotel4.jpg" Width="250px" Height="250px" />
                            <h2 style="text-align:center;"><asp:Label ID="lblHotel" runat="server" Text="Vic Eiffel, Paris"></asp:Label></h2>
                        </div>
                    </div>
                </div>
            </div>

            <div id="customerInfo" class="sixth">
                <div id="content6">
                    <h1 id="title6">Enter your information below</h1>
                    <%--<h1 id="title4"><mark style="background-color: white;">Pick a hotel</mark></h1>--%>
                    <div id="submitPayment">
                        <asp:Button ID="btnSubmitPayment" runat="server" Text="Submit" BorderColor="Black" BorderStyle="Solid" OnClick="btnSubmitPayment_Click" />
                    </div>
                    <br />
                    <div id="custInput">
                        <asp:Label ID="lblFullName" runat="server" Text="Full Name"></asp:Label><br />
                        <asp:TextBox ID="tbFullName" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label><br />
                        <asp:TextBox ID="tbCity" runat="server"></asp:TextBox><br />
                    </div>
                    <div id="custInput2">
                        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label><br />
                        <asp:TextBox ID="tbPhone" runat="server" TextMode="Phone"></asp:TextBox><br />
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label><br />
                        <asp:TextBox ID="tbEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                    <div id="creditInfo">
                        <asp:Label ID="lblPaymentType" runat="server" Text="Payment Type"></asp:Label><br />
                        <asp:RadioButton ID="visa" runat="server" Text="Visa" GroupName="paymentType" /><br />
                        <asp:RadioButton ID="mastercard" runat="server" Text="MasterCard" GroupName="paymentType" /><br />
                        <asp:RadioButton ID="paypal" runat="server" Text="Paypal" GroupName="paymentType" /><br />
                    </div>
                    <div id="security">
                        <asp:Label ID="lblCardNumber" runat="server" Text="Card Number"></asp:Label><br />
                        <asp:TextBox ID="tbCardNumber" runat="server" TextMode="Number"></asp:TextBox><br />
                        <div id="expiry">
                            <asp:Label ID="lblExpiry" runat="server" Text="Expiry Date"></asp:Label><br />
                            <asp:TextBox ID="tbExpiryDate" runat="server" TextMode="Month"></asp:TextBox><br />
                        </div>
                        <div id="code">
                            <asp:Label ID="lblSecurityCode" runat="server" Text="Security Code"></asp:Label><br />
                            <asp:TextBox ID="tbSecurityCode" runat="server" TextMode="Number"></asp:TextBox><br />
                        </div>
                    </div>
                </div>
            </div>

            <asp:Panel ID="Panel1" runat="server">
                <uc1:Footer runat="server" ID="Footer" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
