using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    private string name;
    private string city;
    private long phone;
    private string email;
    private long payId;

    public string getName()
    {
        return name;
    }

    public void setName(string name)
    {
        this.name = name;
    }

    public string getCity()
    {
        return city;
    }

    public void setCity(string city)
    {
        this.city = city;
    }

    public long getPhone()
    {
        return phone;
    }

    public void setPhone(long phone)
    {
        this.phone = phone;
    }

    public string getEmail()
    {
        return email;
    }

    public void setEmail(string email)
    {
        this.email = email;
    }

    public long getPayId()
    {
        return payId;
    }

    public void setPayId(long payId)
    {
        this.payId = payId;
    }

    public string toString()
    {
        return "CustomerName: " + name + 
            ", CustomerCity: " + city + 
            ", CustomerPhone: " + phone + 
            ", CustomerEmail: " + email + 
            ", PaymentID: " + payId;
    }
}