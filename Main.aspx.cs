/// <summary>
/// Author: Vannie
/// </summary>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Main : System.Web.UI.Page
{

    /// <summary>
    /// Declaring dataset and table adapters to be used in the sql interaction or the database part of the application.
    /// </summary>
    PackMyBagsDataSet ds = new PackMyBagsDataSet();
    PackMyBagsDataSetTableAdapters.TripTableAdapter taTrip = new PackMyBagsDataSetTableAdapters.TripTableAdapter();
    PackMyBagsDataSetTableAdapters.CustomerTableAdapter taCustomer = new PackMyBagsDataSetTableAdapters.CustomerTableAdapter();
    PackMyBagsDataSetTableAdapters.HotelTableAdapter taHotel = new PackMyBagsDataSetTableAdapters.HotelTableAdapter();
    PackMyBagsDataSetTableAdapters.TripBookedTableAdapter taTripBooked = new PackMyBagsDataSetTableAdapters.TripBookedTableAdapter();
    string hotel1, hotel2, hotel3, hotel4, destination;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chkCustomStay_CheckedChanged(object sender, EventArgs e)
    {
        if (chkCustomStay.Checked == true)
            panelCustomStay.Visible = true;
        else if (chkCustomStay.Checked == false)
            panelCustomStay.Visible = false;
    }
    protected void btnSubmitPayment_Click(object sender, EventArgs e)
    {
        string from = tbFrom.Text;
        string to = tbTo.Text;
        DateTime departingDate = Convert.ToDateTime(tbDeparting.Text);
        DateTime returningDate = Convert.ToDateTime(tbReturning.Text);
        decimal totalPrice = 500;
        taTrip.Fill(ds.Trip);
        PackMyBagsDataSet.TripRow newTripRow = ds.Trip.NewTripRow();
        newTripRow.Origin = from;
        newTripRow.Destination = to;
        newTripRow.TripStartDate = departingDate;
        newTripRow.TripEndDate = returningDate;
        newTripRow.TotalPrice = totalPrice;
        ds.Trip.Rows.Add(newTripRow);
        taTrip.Update(ds.Trip);

        string fullName = tbFullName.Text;
        string city = tbCity.Text;
        string email = tbEmail.Text;
        string phone = tbPhone.Text;
        string paymentId = tbCardNumber.Text;
        taCustomer.Fill(ds.Customer);
        PackMyBagsDataSet.CustomerRow newCustomerRow = ds.Customer.NewCustomerRow();
        newCustomerRow.CName = fullName;
        newCustomerRow.CCity = city;
        newCustomerRow.CPhone = Convert.ToInt64(phone);
        newCustomerRow.CEmail = email;
        newCustomerRow.PayID = paymentId;
        ds.Customer.Rows.Add(newCustomerRow);
        taCustomer.Update(ds.Customer);

        string tripId = "Origin = '"+from+"' and Destination = '"+to+"' and TripStartDate = '"+departingDate+"' and TripEndDate = '"+returningDate+"' and TotalPrice = "+totalPrice;
        string customerId = "PayID = " + paymentId;
        string hotelId = "HotelName = '" + imgHotel.ToolTip + "' and City = '" + lblDestination.Text + "'";
        taTrip.Fill(ds.Trip);
        taCustomer.Fill(ds.Customer);
        taHotel.Fill(ds.Hotel);
        taTripBooked.Fill(ds.TripBooked);
        DataRow[] drTrip = ds.Trip.Select(tripId);
        DataRow[] drCustomer = ds.Customer.Select(customerId);
        DataRow[] drHotel = ds.Hotel.Select(hotelId);
        PackMyBagsDataSet.TripBookedRow newTripBookedRow = ds.TripBooked.NewTripBookedRow();
        int TripID = (int)drTrip[0]["TripID"];
        int CustomerID = (int)drCustomer[0]["CustomerID"];
        int HotelID = (int)drHotel[0]["HotelID"];
        string status = "Pending";
        string rooms = ddRooms.SelectedItem.Text;
        DateTime checkInDate = departingDate;
        DateTime checkOutDate = returningDate;
        DateTime bookingDate = DateTime.Now.Date;
        newTripBookedRow.TripID = TripID;
        newTripBookedRow.CustomerID = CustomerID;
        newTripBookedRow.HotelID = HotelID;
        newTripBookedRow.Status = status;
        newTripBookedRow.RoomsBooked = Convert.ToInt32(rooms);
        newTripBookedRow.CheckInDate = checkInDate;
        newTripBookedRow.CheckOutDate = checkOutDate;
        newTripBookedRow.BookingDate = bookingDate;
        ds.TripBooked.Rows.Add(newTripBookedRow);
        taTripBooked.Update(ds.TripBooked);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
    }
    protected void imgParis_Click(object sender, ImageClickEventArgs e)
    {
        destination = "Paris";
        taHotel.Fill(ds.Hotel);
        DataRow[] dr = ds.Hotel.Select("City='" + destination + "'");
        hotel1 = dr[0]["HotelName"] + ", " + dr[0]["City"];
        hotel2 = dr[1]["HotelName"] + ", " + dr[1]["City"];
        hotel3 = dr[2]["HotelName"] + ", " + dr[2]["City"];
        hotel4 = dr[3]["HotelName"] + ", " + dr[3]["City"];
        Label1.Text = hotel1;
        Label2.Text = hotel2;
        Label3.Text = hotel3;
        Label4.Text = hotel4;
        imgHotel1.AlternateText = hotel1;
        imgHotel2.AlternateText = hotel2;
        imgHotel3.AlternateText = hotel3;
        imgHotel4.AlternateText = hotel4;
        imgHotel1.ToolTip = (string)dr[0]["HotelName"];
        imgHotel2.ToolTip = (string)dr[1]["HotelName"];
        imgHotel3.ToolTip = (string)dr[2]["HotelName"];
        imgHotel4.ToolTip = (string)dr[3]["HotelName"];
        imgHotel1.ImageUrl = "~/images/hotel1.jpg";
        imgHotel2.ImageUrl = "~/images/hotel2.jpg";
        imgHotel3.ImageUrl = "~/images/hotel3.jpg";
        imgHotel4.ImageUrl = "~/images/hotel4.jpg";
        tbTo.Text = destination;
        lblDestination.Text = destination;
        imgDestination.ImageUrl = "~/images/paris.jpg";
    }
    protected void imgNorway_Click(object sender, ImageClickEventArgs e)
    {
        destination = "Norway";
        taHotel.Fill(ds.Hotel);
        DataRow[] dr = ds.Hotel.Select("City='" + destination + "'");
        hotel1 = dr[0]["HotelName"] + ", " + dr[0]["City"];
        hotel2 = dr[1]["HotelName"] + ", " + dr[1]["City"];
        hotel3 = dr[2]["HotelName"] + ", " + dr[2]["City"];
        hotel4 = dr[3]["HotelName"] + ", " + dr[3]["City"];
        Label1.Text = hotel1;
        Label2.Text = hotel2;
        Label3.Text = hotel3;
        Label4.Text = hotel4;
        imgHotel1.AlternateText = hotel1;
        imgHotel2.AlternateText = hotel2;
        imgHotel3.AlternateText = hotel3;
        imgHotel4.AlternateText = hotel4;
        imgHotel1.ToolTip = (string)dr[0]["HotelName"];
        imgHotel2.ToolTip = (string)dr[1]["HotelName"];
        imgHotel3.ToolTip = (string)dr[2]["HotelName"];
        imgHotel4.ToolTip = (string)dr[3]["HotelName"];
        imgHotel1.ImageUrl = "~/images/norwayhotel1.jpg";
        imgHotel2.ImageUrl = "~/images/norwayhotel2.jpg";
        imgHotel3.ImageUrl = "~/images/norwayhotel3.jpg";
        imgHotel4.ImageUrl = "~/images/norwayhotel4.jpg";
        tbTo.Text = destination;
        lblDestination.Text = destination;
        imgDestination.ImageUrl = "~/images/norway.jpg";
    }
    protected void imgSwitzerland_Click(object sender, ImageClickEventArgs e)
    {
        destination = "Switzerland";
        taHotel.Fill(ds.Hotel);
        DataRow[] dr = ds.Hotel.Select("City='" + destination + "'");
        hotel1 = dr[0]["HotelName"] + ", " + dr[0]["City"];
        hotel2 = dr[1]["HotelName"] + ", " + dr[1]["City"];
        hotel3 = dr[2]["HotelName"] + ", " + dr[2]["City"];
        hotel4 = dr[3]["HotelName"] + ", " + dr[3]["City"];
        Label1.Text = hotel1;
        Label2.Text = hotel2;
        Label3.Text = hotel3;
        Label4.Text = hotel4;
        imgHotel1.AlternateText = hotel1;
        imgHotel2.AlternateText = hotel2;
        imgHotel3.AlternateText = hotel3;
        imgHotel4.AlternateText = hotel4;
        imgHotel1.ToolTip = (string)dr[0]["HotelName"];
        imgHotel2.ToolTip = (string)dr[1]["HotelName"];
        imgHotel3.ToolTip = (string)dr[2]["HotelName"];
        imgHotel4.ToolTip = (string)dr[3]["HotelName"];
        imgHotel1.ImageUrl = "~/images/switzerlandhotel1.jpg";
        imgHotel2.ImageUrl = "~/images/switzerlandhotel2.jpg";
        imgHotel3.ImageUrl = "~/images/switzerlandhotel3.jpg";
        imgHotel4.ImageUrl = "~/images/switzerlandhotel4.jpg";
        tbTo.Text = destination;
        lblDestination.Text = destination;
        imgDestination.ImageUrl = "~/images/switzerland.png";
    }
    protected void imgSydney_Click(object sender, ImageClickEventArgs e)
    {
        destination = "Sydney";
        taHotel.Fill(ds.Hotel);
        DataRow[] dr = ds.Hotel.Select("City='" + destination + "'");
        hotel1 = dr[0]["HotelName"] + ", " + dr[0]["City"];
        hotel2 = dr[1]["HotelName"] + ", " + dr[1]["City"];
        hotel3 = dr[2]["HotelName"] + ", " + dr[2]["City"];
        hotel4 = dr[3]["HotelName"] + ", " + dr[3]["City"];
        Label1.Text = hotel1;
        Label2.Text = hotel2;
        Label3.Text = hotel3;
        Label4.Text = hotel4;
        imgHotel1.AlternateText = hotel1;
        imgHotel2.AlternateText = hotel2;
        imgHotel3.AlternateText = hotel3;
        imgHotel4.AlternateText = hotel4;
        imgHotel1.ToolTip = (string)dr[0]["HotelName"];
        imgHotel2.ToolTip = (string)dr[1]["HotelName"];
        imgHotel3.ToolTip = (string)dr[2]["HotelName"];
        imgHotel4.ToolTip = (string)dr[3]["HotelName"];
        imgHotel1.ImageUrl = "~/images/sydneyhotel1.jpg";
        imgHotel2.ImageUrl = "~/images/sydneyhotel2.jpg";
        imgHotel3.ImageUrl = "~/images/sydneyhotel3.jpg";
        imgHotel4.ImageUrl = "~/images/sydneyhotel4.jpg";
        tbTo.Text = destination;
        lblDestination.Text = destination;
        imgDestination.ImageUrl = "~/images/sydney.jpg";
    }
    protected void imgHotel1_Click(object sender, ImageClickEventArgs e)
    {
        lblHotel.Text = imgHotel1.AlternateText;
        imgHotel.ImageUrl = imgHotel1.ImageUrl;
        imgHotel.ToolTip = imgHotel1.ToolTip;
    }
    protected void imgHotel2_Click(object sender, ImageClickEventArgs e)
    {
        lblHotel.Text = imgHotel2.AlternateText;
        imgHotel.ImageUrl = imgHotel2.ImageUrl;
        imgHotel.ToolTip = imgHotel2.ToolTip;
    }
    protected void imgHotel3_Click(object sender, ImageClickEventArgs e)
    {
        lblHotel.Text = imgHotel3.AlternateText;
        imgHotel.ImageUrl = imgHotel3.ImageUrl;
        imgHotel.ToolTip = imgHotel3.ToolTip;
    }
    protected void imgHotel4_Click(object sender, ImageClickEventArgs e)
    {
        lblHotel.Text = imgHotel4.AlternateText;
        imgHotel.ImageUrl = imgHotel4.ImageUrl;
        imgHotel.ToolTip = imgHotel4.ToolTip;
    }
    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Main.aspx");
    }
}