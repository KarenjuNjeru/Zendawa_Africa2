using System;
using System.Data.SqlClient;
using System.Web.UI;


namespace Zendawa_Africa2
{
    public partial class Registration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text;
                string email = txtEmail.Text;
                string password = txtPassword.Text; // You should hash the password before storing it

                WARTECHCONNECTION.cConnect m = new WARTECHCONNECTION.cConnect();

                if (RegisterUser(username, email, password, m))
                {
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    ValidationSummary1.HeaderText = "Registration failed. Please try again.";
                }
            }
        }

        private bool RegisterUser(string username, string email, string password, WARTECHCONNECTION.cConnect m)
        {
            string query = "INSERT INTO Users (Username, Email, Password) VALUES (@Username, @Email, @Password)";

            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password); // Hash the password before storing

                try
                {
                    return true/*.ExecuteNonQuery(cmd) > 0*/;
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                    ValidationSummary1.HeaderText = "An error occurred: " + ex.Message;
                    return false;
                }
            }
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtConfirmPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
