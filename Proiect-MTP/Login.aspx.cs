using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
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
        //conectare la baza de date
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
            {
                lblMsg.Text = "Conexiunea a fost realizata cu succes!";
            }
            else
            {
                lblMsg.Text = "Conexiune esuata!";
            }
        }

        protected async void ButtonAutentification_Click(object sender, EventArgs e)
        {
            
            var user = new User
            {
                Username = TextBoxUsername.Text,
                Password = TextBoxPassword.Text
            };

            SetResponse raspuns = await client.SetTaskAsync("DateUsers/" + TextBoxUsername.Text, user);
            User rezultat = raspuns.ResultAs<User>();

            lblMsg.Text = "Date inserate cu succes" + rezultat.Username;
        }

        protected void ButtonSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sign_in.aspx");
        }
        

    }
}