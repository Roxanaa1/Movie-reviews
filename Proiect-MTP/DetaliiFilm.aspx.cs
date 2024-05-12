using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect_MTP
{
    public partial class DetaliiFilm : System.Web.UI.Page
    {
        protected string FilmTitle { get; set; }
        protected string FilmDescription { get; set; }
        protected string FilmId { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Presupunem că ID-ul filmului vine dintr-un query parameter
                FilmId = Request.QueryString["id"];

                // Aici ai prelua datele filmului de la baza de date sau altă sursă
                // În exemplul acesta, voi folosi valori statice
                FilmTitle = "Titlu Exemplu";
                FilmDescription = "Descrierea exemplului de film.";

                // Asigură-te că valorile sunt setate înainte de a încărca pagina
            }
        }
    }
}