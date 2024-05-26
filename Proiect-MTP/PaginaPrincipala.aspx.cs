using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect_MTP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetWelcomeMessage();
            }

        }
        protected void ButtonMyProfile_Click(object sender, EventArgs e)
        {
            RedirectToPageIfLoggedIn("MyProfile.aspx");
        }

        protected void ButtonHelp_Click(object sender, EventArgs e)
        {
            RedirectToPageIfLoggedIn("Help.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void ButtonSearchMovies_Click(object sender, EventArgs e)
        {
            RedirectToPageIfLoggedIn("Search.aspx");
        }

        protected void ButtonTop_Click(object sender, EventArgs e)
        {
            RedirectToPageIfLoggedIn("TopMovies.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            RedirectToPageIfLoggedIn("Settings.aspx");
        }
        private void RedirectToPageIfLoggedIn(string page)
        {
            if (Session["User"] == null)
            {
                Session["RedirectAfterLogin"] = page;
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect(page);
            }
        }
        private void SetWelcomeMessage()
        {
            if (Session["User"] == null)
            {
                LabelMessage.Text = "Nu sunteți conectat. Vă rugăm să vă conectați.";
            }
            else
            {
                LabelMessage.Text = $"Bine ai venit, {Session["User"].ToString()}!";
            }
        }
    }
}