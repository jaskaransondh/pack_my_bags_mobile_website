/// <summary>
/// Author: Jaskaran Singh
/// </summary>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{

    /// <summary>
    /// Page_Load method that is invoked when the page is loaded.
    /// This page has no requirements of invoking anything when the page is loaded.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// The following is an event handler for the Login button on the login page.
    /// It validates the user credentials from a loacally stored xml file containing user names,
    /// password and emails. It then redirects the user to the main page where the other important 
    /// web user controls come into play.
    /// </summary>
    /// <param name="sender">Object sender maps the control to the actual control due to which the event has been fired.</param>
    /// <param name="e">And after the even is fired, Event Args e can be used to access various properties of the control.</param>
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("xml/users.xml"));
        foreach (XmlNode node in doc.SelectNodes("//user"))
        {
            string username = node.SelectSingleNode("name").InnerText;
            string password = node.SelectSingleNode("password").InnerText;
            string email = node.SelectSingleNode("email").InnerText;
            if(username == tbUsername.Text && password == tbPassword.Text)
            {
                this.Session.Add("username", tbUsername.Text);
                this.Session.Add("email", email);
                Response.Redirect("Main.aspx");
            }
            else
            {
                string myjs = "var answer = alert('Invalid username or password!');";
                ClientScript.RegisterStartupScript(
                    this.GetType(),
                    "myalert",
                    myjs,
                    true
                );
            }
        }
    }

    /// <summary>
    /// The following event handler is mapped to the SIGN UP button on the login page.
    /// This button actually displays the sign up form to collect user information which can be 
    /// used to create a new user and the information is stored into the xml file from which the 
    /// user credentials are fetched for validation.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        btnSignup.Text = "In progress...";
        btnSignup.BackColor = System.Drawing.Color.Black;
        btnSignup.ForeColor = System.Drawing.Color.White;
        signup.Visible = true;
        string myjs = "document.getElementById('blurrable').className += ' blurClass';";
        ClientScript.RegisterStartupScript(
            this.GetType(),
            "myalert",
            myjs,
            true
        );
    }

    /// <summary>
    /// The following event handler is mapped to the 'Continue as a guest' button on the login
    /// page. The event handler bypasses all the validation required from user login and actually
    /// gives the user, access to the Main.aspx page, whcih is the main page for reservations and bookings.
    /// This button also excepts the user to start a session.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnGuest_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Main.aspx");
    }

    /// <summary>
    /// The following event handler takes in the actual user information collected 
    /// for sign up and actually creates a user credential in the xml file. It actually
    /// appends the xml file with new nodes and a new user is ready to go.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSubSign_Click(object sender, EventArgs e)
    {
        XDocument doc = XDocument.Load(Server.MapPath("xml/users.xml"));
        XElement school = doc.Element("userlist");
        school.Add(new XElement("user",
                   new XElement("name", tbUser.Text),
                   new XElement("password", tbPwd.Text),
                   new XElement("email", tbE2.Text)));
        doc.Save(Server.MapPath("xml/users.xml"));
        signup.Visible = false;

        btnSignup.Text = "Signed Up!";
        btnSignup.BackColor = System.Drawing.Color.Green;
        btnSignup.ForeColor = System.Drawing.Color.Black;
        string myjs = "document.getElementById('content').classList.remove('blurClass');";
        ClientScript.RegisterStartupScript(
            this.GetType(),
            "myalert",
            myjs,
            true
        );
    }

    /// <summary>
    /// The following event handler is fired when a user chooses to cancel the signing up process.
    /// In that case, no xml is appended and the user can either continue as a guest or not continue at all.
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSubCan_Click(object sender, EventArgs e)
    {
        signup.Visible = false;
        string myjs = "document.getElementById('content').classList.remove('blurClass');";
        ClientScript.RegisterStartupScript(
            this.GetType(),
            "myalert",
            myjs,
            true
        );
    }
}