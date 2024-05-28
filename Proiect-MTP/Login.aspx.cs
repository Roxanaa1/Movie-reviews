using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;

namespace Proiect_MTP
{
    public partial class Autentificare : System.Web.UI.Page
    { 
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "GYGuqf4TtckWwYi9IYktNRK24TjNw2uEJZwbhUAf",
            BasePath = "https://users-482c3-default-rtdb.firebaseio.com/"
        };

        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);

            if (client != null)
                lblMsg.Text = "Conexiunea a fost realizata cu succes";
            else
                lblMsg.Text = "Conexiune esuata";
        }
        protected void ButtonSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sign_in.aspx");
        }
        protected async void ButtonAutentification_Click1(object sender, EventArgs e)
        {
            var username = TextBoxUsername.Text.Trim();
            var password = TextBoxPassword.Text.Trim();
            if (string.IsNullOrEmpty(username))
            {
                lblMsg.Text = "The Username field is required.";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (string.IsNullOrEmpty(password))
            {
                lblMsg.Text = "The Password field is required.";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            FirebaseResponse response = await client.GetAsync("DateUsers/" + username);
            if (response.Body == "null")
            {
                lblMsg.Text = "User does not exist. Please create an account.";
                return;
            }

            User user = response.ResultAs<User>();

            if (user != null)
            {
                if (user.Password.Trim() == password)
                {
                    Session["User"] = user.Username;
                    string redirectUrl = Session["RedirectAfterLogin"] as string;

                    if (!string.IsNullOrEmpty(redirectUrl))
                    {
                        Session["RedirectAfterLogin"] = null;
                        Response.Redirect(redirectUrl, false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    else
                    {
                        Response.Redirect("PaginaPrincipala.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                }
                else
                {
                    lblMsg.Text = "Incorrect password. Please try again.";
                }
            }
            else
            {
                lblMsg.Text = "User does not exist. Please create an account.";
            }
        }
    }
}