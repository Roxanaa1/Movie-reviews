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
            // await AddFilmsToFirebaseIfNeeded();
            if (!IsPostBack)
            {
                string filmId = Request.QueryString["id"];
                // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + filmId + "')", true);
                
                if (!string.IsNullOrEmpty(filmId))
                {
                    var film = await GetFilmDetailsAsync(filmId);
                    if (film != null)
                    {
                        FilmTitle.Text = film.Title;
                        FilmDescription.Text = film.Description;
                        FilmImage.Text = $"<img src='{film.ImageUrl}' alt='{film.Title}' />";
                    }
                    else
                    {
                        lblStatus.Text = "Film not found.";
                    }
                }
                else
                {
                    lblStatus.Text = "No film selected.";
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
                new Film { Id = "1", Title = "Avengers", Description = "\"The Avengers\" reunește echipa de supereroi formată din Iron Man, Thor, Captain America, Hulk, Black Widow și Hawkeye pentru a salva lumea de amenințarea extraterestră reprezentată de Loki și armata sa. Filmul combină acțiunea intensă cu umorul caracteristic al eroilor Marvel. Eforturile coordonate ale echipei aduc momente de tensiune și camaraderie. Succesul său a consolidat universul cinematografic Marvel ca un fenomen global.", ImageUrl = "Imagini/Avengers.jpg" },
                new Film { Id = "2", Title = "Endgame", Description = "\"Avengers: Endgame\" prezintă lupta epică finală a Răzbunătorilor împotriva lui Thanos, care a distrus jumătate din viața universului, în încercarea de a inversa devastarea și a restabili ordinea în cosmos. Filmul oferă un încheiere emoționantă și satisfăcătoare pentru multe dintre poveștile personajelor. Sacrificiile făcute de eroii noștri sunt de neuitat și pline de semnificație. Este un punct culminant pentru peste un deceniu de filme interconectate.", ImageUrl = "Imagini/Endgame.jpg" },
                new Film { Id = "3", Title = "Gran Turismo", Description = "Inspirat de evenimente reale, \"Gran Turismo\" urmărește povestea unui tânăr pasionat de jocuri video care devine un pilot profesionist de curse, depășindu-și limitele și realizându-și visul. Filmul este o călătorie de la jocuri video la curse de mare viteză pe pista reală. Performanțele actorilor și realismul scenelor de curse adaugă intensitate și autenticitate poveștii. Este o inspirație pentru oricine visează să-și transforme pasiunea într-o carieră.", ImageUrl = "Imagini/GranTurismo.jpg" },
                new Film { Id = "4", Title = "Iron Man", Description = "\"Iron Man\" urmărește transformarea lui Tony Stark, un miliardar inginer și fabricant de arme, într-un supererou blindat care luptă împotriva terorismului după ce este capturat și forțat să construiască o armă devastatoare. Filmul explorează evoluția unui om egoist într-un erou dedicat protecției lumii. Este primul film din universul cinematografic Marvel și a stabilit tonul pentru toate celelalte. Robert Downey Jr. a redefinit cariera lui Stark cu un farmec și o carismă inconfundabile.", ImageUrl = "Imagini/IronMan.jpg" },
                new Film { Id = "5", Title = "Logan", Description = "În \"Logan,\" Wolverine, cunoscut sub numele de Logan, se confruntă cu bătrânețea și slăbiciunea, protejând o tânără mutantă și pregătindu-se pentru o ultimă luptă împotriva forțelor malefice. Filmul aduce un ton mai matur și introspectiv seriei X-Men. Este un adio emoționant pentru personajul lui Hugh Jackman, care a definit rolul de-a lungul anilor. Stilul său brutal și povestea sa profundă îl fac unul dintre cele mai apreciate filme de supereroi.", ImageUrl = "Imagini/Logan.jpg" },
                new Film { Id = "6", Title = "Matrix", Description = "\"The Matrix\" prezintă povestea lui Neo, un hacker care descoperă că realitatea în care trăiește este de fapt o simulare creată de mașini pentru a controla umanitatea, iar el este alesul destinat să o elibereze. Filmul combină filozofia și acțiunea într-un mod revoluționar. Efectele speciale inovatoare și secvențele de luptă coregrafiate au influențat profund genul SF. Tema alegerii și libertății rămâne una dintre cele mai discutate în cinematografie.", ImageUrl = "Imagini/Matrix.jpg" },
                new Film { Id = "7", Title = "Multiverse of Madness", Description = "\"Doctor Strange in the Multiverse of Madness\" îl urmărește pe Doctor Strange în aventurile sale prin multiple universuri paralele, înfruntând diverse amenințări supranaturale pentru a restabili echilibrul în cosmos. Filmul oferă efecte vizuale impresionante și explorează conceptul de multivers. Este o continuare care împinge limitele imaginației și ale percepției realității. Relațiile dintre personaje și dilemele morale adaugă profunzime narativă.", ImageUrl = "Imagini/MultiverseOfMadness.jpg" },
                new Film { Id = "8", Title = "Spider-Man: Homecoming", Description = "\"Spider-Man: Homecoming\" îl arată pe Peter Parker, alias Spider-Man, încercând să echilibreze viața de licean cu cea de supererou, sub mentoratul lui Tony Stark, în timp ce înfruntă noul său inamic, Vulture. Filmul aduce o perspectivă proaspătă și tânără asupra eroului clasic. Performanța lui Tom Holland a fost lăudată pentru autenticitatea și energia sa. Este o poveste despre maturizare, responsabilitate și sacrificiu.", ImageUrl = "Imagini/Spider-Man_Homecoming.jpg" },
                new Film { Id = "9", Title = "Iron Man 2", Description = "În \"Iron Man 2,\" Tony Stark se confruntă cu probleme personale și politice, în timp ce un nou dușman, Ivan Vanko, cunoscut ca Whiplash, amenință să-i distrugă atât imperiul tehnologic cât și viața personală. Filmul explorează lupta lui Stark cu propria sa mortalitate și responsabilitatea ca supererou. Introducerea lui Black Widow și War Machine adaugă noi dimensiuni universului Marvel. Conflictul intern al lui Stark este reflectat în relațiile sale tensionate cu cei apropiați.", ImageUrl = "Imagini/IronMan2.jpg" },
                new Film { Id = "10", Title = "Don't Breathe", Description = "\"Don't Breathe\" este un thriller tensionat în care trei tineri infractori intră în casa unui veteran orb, dar descoperă rapid că acesta nu este atât de neajutorat pe cât părea și lupta pentru supraviețuire începe. Filmul este plin de răsturnări de situație și momente de suspans. Atmosfera claustrofobică și personajele complexe adaugă profunzime poveștii. Este un joc de-a șoarecele și pisica care ține publicul în tensiune până la final.", ImageUrl = "Imagini/Dont-Breathe.jpg" },
                new Film { Id = "11", Title = "Legion", Description = "\"Legion\" este un film supranatural în care arhanghelul Mihail coboară pe Pământ pentru a proteja un grup de străini de la un restaurant izolat, după ce Dumnezeu își pierde credința în omenire și trimite un legiune de îngeri pentru a distruge rasa umană. Filmul combină elemente de acțiune, horror și fantezie. Efectele speciale și scenele de luptă sunt impresionante. Temele de credință și răscumpărare sunt explorate în profunzime.", ImageUrl = "Imagini/Legion.jpg" },
                new Film { Id = "12", Title = "Lucifer", Description = "Serialul \"Lucifer\" îl urmărește pe Lucifer Morningstar, Lordul Iadului, care renunță la tronul său și se mută în Los Angeles, unde deschide un club de noapte și devine consultant pentru LAPD. Filmul explorează lupta interioară a lui Lucifer între bine și rău. Relațiile complexe cu oamenii și detectiva Chloe Decker aduc o dimensiune emoțională. Stilul său șarmant și replicile witty îl fac un personaj irezistibil.", ImageUrl = "Imagini/Lucifer.jpg" },
                new Film { Id = "13", Title = "Mama", Description = "\"Mama\" este un film horror în care două fetițe dispărute sunt găsite după cinci ani în sălbăticie și readuse în societate, dar se pare că au fost protejate de o entitate malefică pe care o numesc \"Mama\". Filmul combină elemente de groază cu o poveste emoționantă despre iubire și pierdere. Performanțele actorilor copii sunt remarcabile și adaugă credibilitate poveștii. Efectele vizuale și atmosfera sinistră contribuie la intensitatea filmului.", ImageUrl = "Imagini/Mama.jpg" },
                new Film { Id = "14", Title = "Platforma", Description = "\"The Platform\" este un thriller distopic în care deținuții unei închisori verticale sunt alimentați printr-o platformă descendentă, evidențiind inegalitățile și comportamentul uman în fața resurselor limitate. Filmul este o alegorie puternică despre societate și distribuția inegală a bogăției. Fiecare nivel al închisorii reprezintă un strat social diferit. Tensiunea și brutalitatea cresc pe măsură ce platforma coboară.", ImageUrl = "Imagini/Platforma.jpg" },
                new Film { Id = "15", Title = "Silent Hill", Description = "\"Silent Hill\" este un film de groază bazat pe jocul video, în care o mamă disperată își caută fiica dispărută într-un oraș misterios și sinistru, plin de creaturi monstruoase și fenomene paranormale. Atmosfera sumbră și designul vizual sunt fidele sursei originale. Tensiunea și suspansul sunt constante pe parcursul filmului. Este o explorare a fricilor psihologice și a naturii întunecate a orașului blestemat.", ImageUrl = "Imagini/Silent-hill.jpg" },
                new Film { Id = "16", Title = "Stăpânul Inelelor", Description = "\"The Lord of the Rings\" urmărește aventurile lui Frodo Baggins și ale prietenilor săi în încercarea de a distruge Inelul Unic și a înfrânge lordul întunecat Sauron pentru a salva Pământul de Mijloc. Filmul este o capodoperă epică bazată pe opera lui J.R.R. Tolkien. Peisajele spectaculoase și efectele vizuale sunt impresionante. Temele de prietenie, curaj și sacrificiu sunt centrale în această saga.", ImageUrl = "Imagini/Stapanul-inelelor.jpg" },
                new Film { Id = "17", Title = "Interstelar", Description = "\"Interstellar\" este un film SF epic în care un grup de astronauți călătorește printr-o gaură de vierme pentru a găsi o nouă casă pentru omenire, pe măsură ce Pământul se confruntă cu un dezastru ecologic iminent. Filmul explorează teme de supraviețuire, iubire și sacrificiu. Efectele vizuale și coloana sonoră sunt remarcabile. Regia lui Christopher Nolan aduce o complexitate narativă și emoțională profundă.", ImageUrl = "Imagini/Interstelar.jpg" },
                new Film { Id = "18", Title = "Stăpânul Inelelor: Frăția Inelului", Description = "\"The Lord of the Rings: The Fellowship of the Ring\" urmărește formarea unei alianțe între oameni, elfi, pitici și hobbiți pentru a distruge Inelul Unic și a împiedica distrugerea Pământului de Mijloc de către Sauron. Filmul stabilește fundamentul pentru întreaga trilogie. Personajele și peisajele sunt aduse la viață cu detalii impresionante. Tema unității și a luptelor împotriva răului este centrală.", ImageUrl = "Imagini/stapanul-inelelor-fratia-inelului.jpg" },
                new Film { Id = "19", Title = "Hobbit", Description = "\"The Hobbit\" urmărește aventurile lui Bilbo Baggins, care este recrutat de vrăjitorul Gandalf și o companie de pitici pentru a recupera regatul Erebor de la dragonul Smaug. Filmul este plin de momente de aventură și descoperiri. Efectele vizuale și designul creaturilor sunt impresionante. Povestea explorează curajul și prietenia în fața pericolului.", ImageUrl = "Imagini/Hobbit.jpg" },
                new Film { Id = "20", Title = "Jumanji", Description = "\"Jumanji\" este un film de aventură în care un joc de masă magic aduce animale sălbatice și alte pericole în viața reală, forțând jucătorii să termine jocul pentru a restabili normalitatea. Filmul combină comedia cu elementele fantastice. Performanțele actorilor aduc un farmec special poveștii. Este o aventură captivantă pentru toate vârstele.", ImageUrl = "Imagini/Jumanji.jpg" },
                new Film { Id = "21", Title = "Pirații din Caraibe", Description = "\"Pirates of the Caribbean\" urmărește aventurile căpitanului Jack Sparrow și echipajului său de pirați în căutarea comorilor și confruntându-se cu creaturi supranaturale și dușmani nemiloși pe mările învolburate. Filmul combină acțiunea, comedia și fantezia într-un mod unic. Johnny Depp aduce la viață un personaj iconic. Efectele speciale și decorurile sunt spectaculoase.", ImageUrl = "Imagini/piratii-dc.jpg" },
                new Film { Id = "22", Title = "Chernobyl", Description = "\"Chernobyl\" este un miniserial dramatizat care explorează dezastrul nuclear din 1986 de la Cernobîl și eforturile eroice ale celor care au răspuns la criză, evidențiind cauzele și consecințele acestuia. Filmul este o lecție dură despre greșelile umane și corupția sistemică. Performanțele actorilor sunt impresionante și emoționante. Este un omagiu adus curajului și sacrificiului uman.", ImageUrl = "Imagini/Chernobyl.jpg" },
                new Film { Id = "23", Title = "Joker", Description = "\"Joker\" prezintă transformarea lui Arthur Fleck, un comediant ratat, în infamul Joker, arătând degradarea sa psihică și răscoala socială pe care o stârnește în Gotham City. Filmul explorează temele de alienare și boală mentală. Performanța lui Joaquin Phoenix este intensă și captivantă. Este un portret sumbru și complex al unui personaj iconic.", ImageUrl = "Imagini/Joker.jpg" },
                new Film { Id = "24", Title = "Lion", Description = "\"Lion\" spune povestea emoționantă a unui băiat indian care se pierde și este adoptat de o familie australiană, iar după 25 de ani folosește Google Earth pentru a-și găsi familia biologică. Filmul explorează teme de identitate și apartenență. Performanțele actorilor sunt autentice și emoționante. Este o călătorie de descoperire și reuniune.", ImageUrl = "Imagini/Lion.jpg" },
                new Film { Id = "25", Title = "Platforma", Description = "\"The Platform\" este un thriller distopic în care deținuții unei închisori verticale sunt alimentați printr-o platformă descendentă, evidențiind inegalitățile și comportamentul uman în fața resurselor limitate. Filmul este o alegorie puternică despre societate și distribuția inegală a bogăției. Fiecare nivel al închisorii reprezintă un strat social diferit. Tensiunea și brutalitatea cresc pe măsură ce platforma coboară.", ImageUrl = "Imagini/Platforma.jpg" },
                new Film { Id = "26", Title = "The Pianist", Description = "\"The Pianist\" este un film biografic despre supraviețuirea pianistului polonez evreu Władysław Szpilman în timpul Holocaustului, bazat pe memoriile sale. Filmul explorează ororile războiului și puterea spiritului uman. Performanța lui Adrien Brody este profund emoționantă. Este o poveste de rezistență și speranță în cele mai întunecate vremuri.", ImageUrl = "Imagini/ThePianist.jpg" },
                new Film { Id = "27", Title = "The Butterfly Effect", Description = "\"The Butterfly Effect\" explorează ideea că modificări minore ale trecutului pot avea consecințe dramatice în viitor, urmărind un tânăr care călătorește în timp pentru a-și schimba viața și a celor din jur. Filmul combină elemente de SF și thriller psihologic. Efectele cauzale sunt explorate într-un mod captivant. Este o poveste despre responsabilitate și puterea alegerilor.", ImageUrl = "Imagini/The-butterfly-effect.jpg" },
                new Film { Id = "28", Title = "After", Description = "\"After\" este o poveste de dragoste în care o studentă timidă și studioasă, Tessa, se îndrăgostește de rebelul și misteriosul Hardin, iar relația lor intensă îi schimbă viața pentru totdeauna. Filmul explorează conflictele interioare și maturizarea emoțională. Chimica dintre actori adaugă intensitate poveștii. Este o călătorie emoțională plină de suișuri și coborâșuri.", ImageUrl = "Imagini/after1.jpg" },
                new Film { Id = "29", Title = "If Only", Description = "\"If Only\" este un film romantic în care un bărbat își dă seama de importanța iubitei sale abia după ce aceasta moare într-un accident, doar pentru a primi o a doua șansă de a trăi aceeași zi și a-și schimba soarta. Filmul explorează teme de regret și iubire adevărată. Performanțele actorilor sunt emoționante și autentice. Este o poveste despre prețuirea momentelor și a persoanelor dragi.", ImageUrl = "Imagini/if-only.jpg" },
                new Film { Id = "30", Title = "Midnight Sun", Description = "\"Midnight Sun\" urmărește povestea de dragoste dintre Katie, o adolescentă care suferă de o boală rară ce o împiedică să se expună la lumina soarelui, și Charlie, un tânăr care îi schimbă viața. Filmul explorează temele de sacrificiu și acceptare. Povestea este plină de momente emoționante și romantice. Performanțele actorilor adaugă profunzime și autenticitate poveștii.", ImageUrl = "Imagini/midnight-sun.jpg" },
                new Film { Id = "31", Title = "The Kissing Booth", Description = "\"The Kissing Booth\" este un film romantic în care Elle, o adolescentă, se îndrăgostește de fratele mai mare al celui mai bun prieten al ei, complicându-și viața socială și relațiile personale. Filmul combină comedia și drama adolescentină. Performanțele actorilor sunt pline de farmec și energie. Este o poveste despre iubire, prietenie și maturizare.", ImageUrl = "Imagini/the-kissing-booth.jpg" },
                new Film { Id = "32", Title = "The Notebook", Description = "\"The Notebook\" este o poveste de dragoste epică ce urmărește relația dintre Noah și Allie, de-a lungul decadelor, arătând puterea amintirilor și a iubirii adevărate. Filmul este plin de momente romantice și dramatice. Performanțele actorilor sunt emoționante și captivante. Este o poveste despre perseverență și dragoste necondiționată.", ImageUrl = "Imagini/The-notebook.jpg" },
                new Film { Id = "33", Title = "3 Metros Sobre el Cielo", Description = "\"3 Metros Sobre el Cielo\" este un film romantic spaniol ce urmărește povestea de dragoste dintre Hache, un tânăr rebel, și Babi, o tânără dintr-o familie bună, evidențiind diferențele dintre lumi și puterea iubirii. Filmul explorează conflictele sociale și personale. Performanțele actorilor aduc intensitate și autenticitate poveștii. Este o poveste despre dragoste, rebeliune și schimbare.", ImageUrl = "Imagini/3-metros-sobre-el-cielo.jpg" }

            };

            foreach (var film in films)
            {
                FirebaseResponse response = await client.GetAsync($"Films/{film.Id}");
                if (response.Body == "null")
                {
                    SetResponse setResponse = await client.SetAsync($"Films/{film.Id}", film);
                    Film result = setResponse.ResultAs<Film>(); // Deserializarea răspunsului (optional)
                }
            }
        }

        protected async void AddReview_Click(object sender, EventArgs e)
        {
            txtRecenzie.Visible = true;
            btnSubmitReview.Visible = true;
            btnSubmitReview.Visible = true;
            lblStatus.Text = "";
        }
        protected void ddlStars_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlStars.Style["display"] = "block";
        }
        protected async void SubmitReview_Click(object sender, EventArgs e)
        {
            string filmId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(filmId))
            {
                
                if (ddlStars.SelectedIndex == -1)
                {
                    lblStatus.Text = "Te rog să selectezi un număr de stele.";
                    return;
                }

                if (string.IsNullOrWhiteSpace(txtRecenzie.Text))
                {
                    lblStatus.Text = "Câmpul de recenzie nu poate fi gol.";
                    return;
                }

                var recenzie = new Recenzie
                {
                    FilmId = filmId,
                    Text = txtRecenzie.Text,
                    Data = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
                };

                FirebaseResponse response = await client.PushAsync("Recenzii/", recenzie);

                if (response.StatusCode == System.Net.HttpStatusCode.OK)
                {
                    lblStatus.Text = "Recenzia a fost adăugată cu succes.";
                }
                else
                {
                    lblStatus.Text = "A apărut o problemă la adăugarea recenziei.";
                }
            }
            else
            {
                lblStatus.Text = "ID-ul filmului nu a fost specificat.";
            }
        }
       

        protected async void EditReview_Click(object sender, EventArgs e)
        {
            string filmId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(filmId))
            {
                FirebaseResponse response = client.Get("Recenzii/");
                Dictionary<string, Recenzie> recenzii = response.ResultAs<Dictionary<string, Recenzie>>();

                if (recenzii != null)
                {
                    foreach (var recenzie in recenzii)
                    {
                        if (recenzie.Value.FilmId == filmId)
                        {
                            recenzie.Value.Text = txtRecenzie.Text;
                            recenzie.Value.Data = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                            FirebaseResponse updateResponse = client.Update($"Recenzii/{recenzie.Key}", recenzie.Value);
                            if (updateResponse.StatusCode == System.Net.HttpStatusCode.OK)
                            {
                                lblStatus.Text = "Recenzia a fost editată cu succes.";
                            }
                            else
                            {
                                lblStatus.Text = "A apărut o problemă la editarea recenziei.";
                            }
                            return;
                        }
                    }
                    lblStatus.Text = "Recenzia nu a fost găsită.";
                }
                else
                {
                    lblStatus.Text = "Nu există recenzii pentru acest film.";
                }
            }
            else
            {
                lblStatus.Text = "ID-ul filmului nu a fost specificat.";
            }

        }

        protected void DeleteReview_Click(object sender, EventArgs e)
        {
            string filmId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(filmId))
            {
                FirebaseResponse response = client.Get("Recenzii/");
                Dictionary<string, Recenzie> recenzii = response.ResultAs<Dictionary<string, Recenzie>>();

                if (recenzii != null)
                {
                    foreach (var recenzie in recenzii)
                    {
                        if (recenzie.Value.FilmId == filmId)
                        {
                            FirebaseResponse deleteResponse = client.Delete($"Recenzii/{recenzie.Key}");
                            if (deleteResponse.StatusCode == System.Net.HttpStatusCode.OK)
                            {
                                lblStatus.Text = "Recenzia a fost ștearsă cu succes.";
                            }
                            else
                            {
                                lblStatus.Text = "A apărut o problemă la ștergerea recenziei.";
                            }
                            return;
                        }
                    }
                    lblStatus.Text = "Recenzia nu a fost găsită.";
                }
                else
                {
                    lblStatus.Text = "Nu există recenzii pentru acest film.";
                }
            }
            else
            {
                lblStatus.Text = "ID-ul filmului nu a fost specificat.";
            }
        }
    
        protected  void AddFavorite_Click(object sender, EventArgs e)
        {

        }

        
    }
}