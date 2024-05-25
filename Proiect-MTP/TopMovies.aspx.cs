using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect_MTP
{
    public partial class TopMovies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTopMovies();
            }
        }

        private void LoadTopMovies()
        {
            var topMovies = GetTopMovies();
            rptTopMovies.DataSource = topMovies;
            rptTopMovies.DataBind();
        }

        private List<Film> GetTopMovies()
        {
            // Lista specifică de top 10 filme
            var top10Movies = new List<Film>
            {
                new Film { Id = "19", Title = "Hobbit", Description = "Descriere Hobbit", ImageUrl = "Imagini/Hobbit.jpg" },
                new Film { Id = "23", Title = "Joker", Description = "Descriere Joker", ImageUrl = "Imagini/Joker.jpg" },
                new Film { Id = "4", Title = "Iron Man", Description = "Descriere Iron Man", ImageUrl = "Imagini/IronMan.jpg" },
                new Film { Id = "5", Title = "Logan", Description = "Descriere Logan", ImageUrl = "Imagini/Logan.jpg" },
                new Film { Id = "8", Title = "Spider-Man Homecoming", Description = "Descriere Spider-Man Homecoming", ImageUrl = "Imagini/Spider-Man_Homecoming.jpg" },
                new Film { Id = "17", Title = "Interstelar", Description = "Descriere Interstelar", ImageUrl = "Imagini/Interstelar.jpg" },
                new Film { Id = "27", Title = "The Butterfly Effect", Description = "Descriere The Butterfly Effect", ImageUrl = "Imagini/The-butterfly-effect.jpg" },
                new Film { Id = "16", Title = "Stapanul Inelelor", Description = "Descriere Stapanul Inelelor", ImageUrl = "Imagini/Stapanul-inelelor.jpg" },
                new Film { Id = "26", Title = "The Pianist", Description = "Descriere The Pianist", ImageUrl = "Imagini/ThePianist.jpg" },
                new Film { Id = "22", Title = "Chernobyl", Description = "Descriere Chernobyl", ImageUrl = "Imagini/Chernobyl.jpg" }
            };

            return top10Movies;
        }
    }
}