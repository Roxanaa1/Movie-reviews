using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect_MTP
{
    public partial class Search : System.Web.UI.Page
    {
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "3nAboqNXyMJgmHsDbvd9HyLyFxXhwHn2iqa6ANag",
            BasePath = "https://movies-cb8be-default-rtdb.firebaseio.com/"
        };
        IFirebaseClient client;
        protected void Page_Load(object sender, EventArgs e)
        {
            client = new FireSharp.FirebaseClient(config);
            if (client == null)
            {
                return;
            }
        }

        protected async void btnSearch_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtSearch.Text))
            {
                lblMessage.Text = "Introduceți numele filmului.";
                return;
            }

            await SearchFilmsAsync(txtSearch.Text);
        }

        private async Task SearchFilmsAsync(string searchText)
        {
            FirebaseResponse response = await client.GetAsync("Films");
            var films = response.ResultAs<List<Film>>();

            if (films != null)
            {
                // Verifică dacă există elemente null în lista de filme și elimină-le
                films = films.Where(f => f != null).ToList();

                var results = films
                    .Where(f => f.Title != null && f.Title.IndexOf(searchText, StringComparison.OrdinalIgnoreCase) >= 0)
                    .ToList();

                if (results.Any())
                {
                    rptResults.DataSource = results;
                    rptResults.DataBind();
                    lblMessage.Text = string.Empty;
                }
                else
                {
                    lblMessage.Text = "Nu s-au găsit filme cu acest nume.";
                    rptResults.DataSource = null;
                    rptResults.DataBind();
                }
            }
            else
            {
                lblMessage.Text = "Nu s-au găsit filme.";
            }
        }
    }
}