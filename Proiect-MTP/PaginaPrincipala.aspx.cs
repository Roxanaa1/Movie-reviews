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


        }
        protected void ButtonMyProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyProfile.aspx");
        }

        protected void ButtonHelp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Help.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void ButtonSearchMovies_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }

        protected void ButtonTop_Click(object sender, EventArgs e)
        {
            Response.Redirect("TopMovies.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Settings.aspx");
        }
    }
}