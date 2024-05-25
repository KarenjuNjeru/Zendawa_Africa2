using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zendawa_Africa2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //private bool IsValidUser(string username, string password)
        //{
        //    // Replace this with your actual authentication logic
        //    // For example, checking against a database
        //    return username == "admin" && password == "password"; // Dummy validation
        //}
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            WARTECHCONNECTION.cConnect datame = new WARTECHCONNECTION.cConnect();
            SqlDataReader samreader;

            string search = "SELECT*FROM users WHERE username='" + username + "'and password='" + password + "'";

            samreader = datame.ReadDB(search);

            if (samreader.HasRows)
                while (samreader.Read())
                {
                    // Successful login logic
                    Response.Redirect("HomePage.aspx");
                }
            else
            {
                // Failed login logic
                ValidationSummary1.HeaderText = "Invalid username or password.";
            }
        }

        protected void btnFacebookLogin_Click(object sender, EventArgs e)
        {
            // Redirect to Facebook OAuth endpoint
            string clientId = "your-facebook-client-id";
            string redirectUri = "your-redirect-uri";
            string facebookOAuthUrl = $"https://www.facebook.com/dialog/oauth?client_id={clientId}&redirect_uri={redirectUri}&response_type=code&scope=email";
            Response.Redirect(facebookOAuthUrl);
        }

        protected void btnGoogleLogin_Click(object sender, EventArgs e)
        {
            // Redirect to Google OAuth endpoint
            string clientId = "your-google-client-id";
            string redirectUri = "your-redirect-uri";
            string googleOAuthUrl = $"https://accounts.google.com/o/oauth2/auth?client_id={clientId}&redirect_uri={redirectUri}&response_type=code&scope=email";
            Response.Redirect(googleOAuthUrl);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}