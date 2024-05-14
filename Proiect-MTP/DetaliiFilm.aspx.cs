using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;

namespace Proiect_MTP
{
    public partial class DetaliiFilm : System.Web.UI.Page
    {
        //conectare la baza de date
        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "3nAboqNXyMJgmHsDbvd9HyLyFxXhwHn2iqa6ANag",
            BasePath = "https://movies-cb8be-default-rtdb.firebaseio.com/"
        };
        IFirebaseClient client;

        protected async void Page_Load(object sender, EventArgs e)
        {

            client = new FireSharp.FirebaseClient(config);
            if (client == null)
            {
                lblStatus.Text = "Nu s-a putut conecta la baza de date.";
                return;
            }

            if (!IsPostBack)
            {
                // Populeaza baza de date cu filme daca este necesar
                await AddFilmsToFirebaseIfNeeded();

                // Preia ID-ul filmului din query string
                string filmId = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(filmId))
                {
                    // Metoda pentru a prelua detalii despre film pe baza ID-ului
                    var film = await GetFilmDetailsAsync(filmId);
                    if (film != null)
                    {
                        FilmTitle.Text = film.Title;
                        FilmDescription.Text = film.Description;
                    }
                    else
                    {
                        lblStatus.Text = "Filmul nu a fost găsit.";
                    }
                }
                else
                {
                    lblStatus.Text = "ID-ul filmului nu a fost furnizat.";
                }
            }

        }

        private async Task<Film> GetFilmDetailsAsync(string filmId)
        {
            FirebaseResponse response = await client.GetAsync($"Films/{filmId}");
            if (response.Body != "null")
            {
                return response.ResultAs<Film>();
            }
            return null;
        }

        private async Task AddFilmsToFirebaseIfNeeded()
        {
            var films = new List<Film>
            {
                new Film { Id = "1", Title = "Avengers", Description = "Descriere Avengers" },
                new Film { Id = "2", Title = "Endgame", Description = "Descriere Endgame" },
                new Film { Id = "3", Title = "Gran Turismo", Description = "Descriere Gran Turismo" },
            };

            foreach (var film in films)
            {
                FirebaseResponse response = await client.GetAsync($"Films/{film.Id}");
                if (response.Body == "null")
                {
                    SetResponse setResponse = await client.SetAsync($"Films/{film.Id}", film);
                    Film result = setResponse.ResultAs<Film>(); // Deserializarea raspunsului (optional)
                }
            }
        }
    }
      
}