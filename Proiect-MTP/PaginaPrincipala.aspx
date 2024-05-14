<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="PaginaPrincipala.aspx.cs" Inherits="Proiect_MTP.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <title>Reel recenzii</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style type="text/css">
        /* Stiluri CSS existente */
        .auto-style5 {
            width: 82px;
        }
        .auto-style8 {
            left: 0px;
            top: 0px;
            width: 1557px;
        }
        .auto-style9 {
            width: 111%;
        }
        .button-style {
            background-color: #6495ED; /* albastru */
            color: white; /* Culoare text alb */
            border: none; /* fara bordura vizibila */
            padding: 10px 15px; /* Padding pentru dimensiuni */
            border-radius: 5px; /* Colturi rotunjite */
            cursor: pointer; /* Schimba cursorul cand este deasupra butonului */
        }
        .auto-style12 {
            border-style: none;
            border-color: none;
            border-width: medium;
            background-color: #6495ED; /* albastru */
            color: white; /* Culoare text alb */
            padding: 10px 15px;
            border-radius: 5px; /* Colturi rotunjite */
            cursor: pointer;
            margin-left: 0;
        }
        .auto-style13 {
            width: 179px;
        }
        .auto-style16 {
            width: 374px;
        }
        .auto-style18 {
            width: 194px;
        }
        .auto-style19 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #6495ED; /* albastru */
            color: white; /* Culoare text alb */
            padding: 10px 15px;/* Padding pentru dimensiuni */
            border-radius: 5px; /* Colturi rotunjite */
            cursor: pointer;
            margin-left: 38px;
        }
        .auto-style20 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #6495ED; /* albastru */
            color: white; /* Culoare text alb */
            padding: 10px 15px;
            border-radius: 5px; /* Colturi rotunjite */
            cursor: pointer;
            margin-left: 211px;
            margin-bottom: 0px;
        }
        .auto-style21 {
            border-style: none;
            border-width: medium;
            background-color: #6495ED; /* albastru */
            color: white; 
            padding: 10px 15px;
            border-radius: 5px; /* Colturi rotunjite */
            cursor: pointer;
            margin-left: 0px;
        }
        .auto-style22 {
            width: 217px;
        }

        body {
            background: url(Imagini/Fun1.jpg) no-repeat center center fixed;
            background-size: cover;
        }

        .auto-style23 {
            width: 99%;
            height: 87px;
        }
       
        /* Stil pentru logo */
        .logo {
            position: absolute;
            top: 10px;
            left: 15px; /* modifica pozitia logo-ului la stanga sus */
            width: 130px; /* ajusteaza dimensiunile logo-ului dupa nevoie */
            height: auto; /* asigura mentinerea proporțiilor */
        }
        .row {
            margin-right: 0; /* Override Bootstrap's default right margin */
            margin-left: 0; /* Override Bootstrap's default left margin */
        }

        .col-md-4 {
            padding: 0 15px; /* Add padding to column for spacing between images */
        }
        
        .carousel-item {
            transition: transform 2s ease, opacity .5s ease-in-out; /* Tranzitie lina pentru efectul de alunecare */
        }
        .carousel-image {
            height: 500px; /* Înălțimea mărită pentru efectul de dreptunghi în picioare */
            width: 300px; /* Lățimea fixă */
            object-fit: cover;
        }

        .carousel-item {
            transition: transform 2s ease, opacity .5s ease-in-out; /* Tranzitie lina pentru efectul de alunecare */
        }

        .carousel-inner .row {
            margin: 0; /* Elimină marginile implicite pentru rând */
        }

        .carousel-inner .col-md-4 {
            padding: 5px; /* Spațiu mic între imagini */
        }

        .carousel {
            margin-bottom: 50px; /* Spațiu între carousele diferite */
        }

        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: black; /* Fundal mai vizibil pentru săgeți */
        }

        header, .logo, .navbar, .button-style, .auto-style5, .auto-style8, .auto-style9, .auto-style12, .auto-style13, .auto-style16, .auto-style18, .auto-style19, .auto-style20, .auto-style21, .auto-style22, .auto-style23 {
            /* stiluri existente sau gol dacă sunt specifice */
        }
         
        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: black; /* Fundal mai vizibil pentru săgeți */
        }
        .carousel-caption {
            background-color: rgba(0,0,0,0.5); /* Fundal pentru text pentru vizibilitate îmbunătățită */
            border-radius: 5px;
        }
        .auto-style24 {
            width: 374px;
            height: 10px;
        }
        .auto-style25 {
            width: 179px;
            height: 10px;
        }
        .auto-style26 {
            width: 194px;
            height: 10px;
        }
        .auto-style27 {
            width: 82px;
            height: 10px;
        }
        .auto-style28 {
            height: 10px;
        }
    </style>
    <script type="text/javascript">
        function checkLoginAndRedirect(url) {
            var isAuthenticated = '<%= Session["User"] != null %>';
            if (isAuthenticated === 'False') {
                window.location.href = 'Login.aspx';
            } else {
                window.location.href = url;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Antetul paginii -->
        <header>
            <img src="Imagini/Logo1.jpg" alt="Logo" class="logo">
        </header>
        
        <!-- Meniul de navigare -->
        <nav class="auto-style8">
            <ul class="navbar-nav">
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style16">
                            <table class="auto-style23">
                                <tr>
                                    <td>
                                        <asp:Button ID="ButtonMyProfile" runat="server" OnClick="ButtonMyProfile_Click" CssClass="auto-style20" Text="My profile" Width="123px" BackColor="#996633" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="auto-style13">
                            <asp:Button ID="ButtonSearchMovies" runat="server" CssClass="button-style" OnClick="ButtonSearchMovies_Click"  Text="Search movie/series" Width="201px" BackColor="#996633" />
                        </td>
                        <td class="auto-style18">
                            <asp:Button ID="ButtonTop" runat="server" CssClass="auto-style19" OnClick="ButtonTop_Click" Text="Most popular movies" Width="217px" BackColor="#996633" />
                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="ButtonSettings" runat="server" CssClass="auto-style12" Height="44px" OnClick="Button6_Click" Text="Settings" Width="183px" BackColor="#996633" ForeColor="White" style="margin-left: 39px" />
                        </td>
                        <td class="auto-style22">
                            <asp:Button ID="ButtonLogin" runat="server" OnClick="Button1_Click" CssClass="auto-style19" Text="Login/Sign up" Width="138px" BackColor="#996633" Height="44px" />
                        </td>
                        <td>
                            <asp:Button ID="ButtonHelp" runat="server"  CssClass="auto-style21" OnClick="ButtonHelp_Click" Text="Help" Width="94px" BackColor="#996633" Height="44px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24"></td>
                        <td class="auto-style25"></td>
                        <td class="auto-style26"></td>
                        <td class="auto-style27"></td>
                        <td class="auto-style22">&nbsp;</td>
                        <td class="auto-style28"></td>
                    </tr>
                </table>
            </ul>
        </nav>
        
        <!-- Continutul paginii -->
        <br>
        <div class="container mt-3">
            <!-- Filme de acțiune -->
            <div class="container mt-3">
                <h3>Filme de acțiune</h3>
                <div id="actionCarousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <!-- Primul set de trei imagini -->
                        <div class="carousel-item active">
                            <div class="row">
                                <div class="col-md-4">
                                    <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=1')">
                                        <img src="Imagini/Avengers.jpg" class="d-block w-100 carousel-image" alt="Film de acțiune 1">
                                    </a>
                                </div>
                                <div class="col-md-4">
                                    <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=2')">
                                        <img src="Imagini/Endgame.jpg" class="d-block w-100 carousel-image" alt="Film de acțiune 2">
                                    </a>
                                </div>
                                <div class="col-md-4">
                                    <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=3')">
                                        <img src="Imagini/GranTurismo.jpg" class="d-block w-100 carousel-image" alt="Film de acțiune 3">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Al doilea set de trei imagini -->
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-md-4">
                                    <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=4')">
                                        <img src="Imagini/IronMan.jpg" class="d-block w-100 carousel-image" alt="Film de acțiune 4">
                                    </a>
                                </div>
                                <div class="col-md-4">
                                    <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=5')">
                                        <img src="Imagini/Logan.jpg" class="d-block w-100 carousel-image" alt="Film de acțiune 5">
                                    </a>
                                </div>
                                <div class="col-md-4">
                                    <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=6')">
                                        <img src="Imagini/Matrix.jpg" class="d-block w-100 carousel-image" alt="Film de acțiune 6">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Al treilea set de trei imagini -->
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-md-4">
                                    <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=7')">
                                        <img src="Imagini/MultiverseOfMadness.jpg" class="d-block w-100 carousel-image" alt="Film de acțiune 7">
                                    </a>
                                </div>
                                <div class="col-md-4">
                                    <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=8')">
                                        <img src="Imagini/Spider-Man_Homecoming.jpg" class="d-block w-100 carousel-image" alt="Film de acțiune 8">
                                    </a>
                                </div>
                                <div class="col-md-4">
                                    <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=9')">
                                        <img src="Imagini/IronMan2.jpg" class="d-block w-100 carousel-image" alt="Film de acțiune 9">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#actionCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#actionCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

            <!-- Filme de groază -->
            <h3>Filme de groază</h3>
            <div id="horrorCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=10')">
                                    <img src="Imagini/Dont-Breathe.jpg" class="d-block w-100 carousel-image" alt="Film de groază 1">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=11')">
                                    <img src="Imagini/Legion.jpg" class="d-block w-100 carousel-image" alt="Film de groază 2">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=12')">
                                    <img src="Imagini/Lucifer.jpg" class="d-block w-100 carousel-image" alt="Film de groază 3">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=13')">
                                    <img src="Imagini/Mama.jpg" class="d-block w-100 carousel-image" alt="Film de groază 4">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=14')">
                                    <img src="Imagini/Platforma.jpg" class="d-block w-100 carousel-image" alt="Film de groază 5">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=15')">
                                    <img src="Imagini/Silent-hill.jpg" class="d-block w-100 carousel-image" alt="Film de groază 6">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#horrorCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#horrorCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!-- Filme de aventura -->
            <h3>Filme de aventura</h3>
            <div id="aventureCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=16')">
                                    <img src="Imagini/Stapanul-inelelor.jpg" class="d-block w-100 carousel-image" alt="Film de aventura 1">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=17')">
                                    <img src="Imagini/Interstelar.jpg" class="d-block w-100 carousel-image" alt="Film de aventura 2">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=18')">
                                    <img src="Imagini/stapanul-inelelor-fratia-inelului.jpg" class="d-block w-100 carousel-image" alt="Film de aventura 3">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=19')">
                                    <img src="Imagini/Hobbit.jpg" class="d-block w-100 carousel-image" alt="Film de aventura 4">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=20')">
                                    <img src="Imagini/Jumanji.jpg" class="d-block w-100 carousel-image" alt="Film de aventura 4">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=21')">
                                    <img src="Imagini/piratii-dc.jpg" class="d-block w-100 carousel-image" alt="Film de aventura 4">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#aventureCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#aventureCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!-- Filme thriller -->
            <h3>Filme thriller</h3>
            <div id="thrillerCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=22')">
                                    <img src="Imagini/Chernobyl.jpg" class="d-block w-100 carousel-image" alt="Film thriller 1">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=23')">
                                    <img src="Imagini/Joker.jpg" class="d-block w-100 carousel-image" alt="Film thriller 2">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=24')">
                                    <img src="Imagini/Lion.jpg" class="d-block w-100 carousel-image" alt="Film thriller 3">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=25')">
                                    <img src="Imagini/Platforma.jpg" class="d-block w-100 carousel-image" alt="Film thriller 4">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=26')">
                                    <img src="Imagini/ThePianist.jpg" class="d-block w-100 carousel-image" alt="Film thriller 5">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=27')">
                                    <img src="Imagini/The-butterfly-effect.jpg" class="d-block w-100 carousel-image" alt="Film thriller 6">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#thrillerCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#thrillerCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!-- Filme de iubire -->
            <h3>Filme de iubire</h3>
            <div id="romanceCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=28')">
                                    <img src="Imagini/after1.jpg" class="d-block w-100 carousel-image" alt="Film de iubire 1">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=29')">
                                    <img src="Imagini/if-only.jpg" class="d-block w-100 carousel-image" alt="Film de iubire 2">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=30')">
                                    <img src="Imagini/midnight-sun.jpg" class="d-block w-100 carousel-image" alt="Film de iubire 3">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=31')">
                                    <img src="Imagini/the-kissing-booth.jpg" class="d-block w-100 carousel-image" alt="Film de iubire 4">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=32')">
                                    <img src="Imagini/The-notebook.jpg" class="d-block w-100 carousel-image" alt="Film de iubire 5">
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="javascript:void(0);" onclick="checkLoginAndRedirect('DetaliiFilm.aspx?id=33')">
                                    <img src="Imagini/3-metros-sobre-el-cielo.jpg" class="d-block w-100 carousel-image" alt="Film de iubire 6">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#romanceCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#romanceCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </form>
</body>
</html>
