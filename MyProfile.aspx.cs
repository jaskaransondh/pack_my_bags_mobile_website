using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MyProfile : System.Web.UI.Page
{
    PackMyBagsDataSet ds = new PackMyBagsDataSet();
    PackMyBagsDataSetTableAdapters.CustomerTableAdapter taCustomer = new PackMyBagsDataSetTableAdapters.CustomerTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        taCustomer.Fill(ds.Customer);
        DataRow[] dr = ds.Customer.Select("CEmail='" + email + "'");
        tbFullName.Text = (string)dr[0]["CName"];
        tbCity.Text = (string)dr[0]["CCity"];
        decimal phone = (decimal)dr[0]["CPhone"];
        tbPhone.Text = phone.ToString();
        tbEmail.Text = (string)dr[0]["CEmail"];
        tbPayId.Text = (string)dr[0]["PayID"];
        tbFullName.ReadOnly = true;
        tbCity.ReadOnly = true;
        tbPhone.ReadOnly = true;
        tbEmail.ReadOnly = true;
        tbPayId.ReadOnly = true;
    }
    protected void btnSubmitPayment_Click(object sender, EventArgs e)
    {
        if (btnSubmitPayment.Text == "Edit")
        {
            tbFullName.ReadOnly = false;
            tbCity.ReadOnly = false;
            tbPhone.ReadOnly = false;
            tbEmail.ReadOnly = false;
            tbPayId.ReadOnly = false;
            btnSubmitPayment.Text = "Submit";
        }
        else
        {
            tbFullName.ReadOnly = true;
            tbCity.ReadOnly = true;
            tbPhone.ReadOnly = true;
            tbEmail.ReadOnly = true;
            tbPayId.ReadOnly = true;
            btnSubmitPayment.Text = "Edit";
        }
    }
}