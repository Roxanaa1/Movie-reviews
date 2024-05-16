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
            await SearchFilmsAsync(txtSearch.Text);
        }
        protected async void txtSearch_TextChanged(object sender, EventArgs e)
        {
            await SearchFilmsAsync(txtSearch.Text);
        }

        private async Task SearchFilmsAsync(string searchText)
        {
            if (string.IsNullOrEmpty(searchText)) return;

            FirebaseResponse response = await client.GetAsync("Films");
            Dictionary<string, Film> films = response.ResultAs<Dictionary<string, Film>>();

            if (films != null)
            {
                var results = films.Values
                    .Where(f => f.Title.IndexOf(searchText, StringComparison.OrdinalIgnoreCase) >= 0)
                    .ToList();

                rptResults.DataSource = results;
                rptResults.DataBind();
            }
        }
    }
}