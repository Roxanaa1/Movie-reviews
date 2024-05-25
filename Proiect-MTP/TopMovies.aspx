<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="TopMovies.aspx.cs" Inherits="Proiect_MTP.TopMovies" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Top 10 Filme</title>
    <style>
        body {
            background: url(Imagini/Fun1.jpg) no-repeat center center fixed;
            background-size: cover;
            overflow-x: hidden; /* Previne derularea orizontală */
        }
        .container {
            background-color: rgba(255, 255, 255, 0.3); /* Mai transparent */
            padding: 20px;
            border-radius: 10px;
            margin-top: 50px;
        }
        .card {
            margin-bottom: 20px;
            background-color: rgba(255, 255, 255, 0.5); /* Mai transparent */
            border: none; /* Elimina borderul default */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Adauga un shadow pentru un efect mai modern */
        }
        .card img {
            width: 100%;
            height: 700px; /* Inaltimea imaginii */
            object-fit: cover;
            border-radius: 10px 0 0 10px; /* Colturi rotunjite pentru partea de stanga */
        }
        .rank-badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: #ff6f61;
            color: white;
            padding: 10px;
            border-radius: 50%;
            font-size: 1.5rem;
            font-weight: bold;
        }
        .card-body {
            padding: 20px;
        }
        .card-title {
            font-size: 1.75rem;
            font-weight: bold;
        }
        .card-text {
            font-size: 1rem;
            color: #666;
            margin-bottom: 20px;
        }
        .btn-primary {
            background-color: #ff6f61;
            border-color: #ff6f61;
            transition: background-color 0.3s, border-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #ff3b2e;
            border-color: #ff3b2e;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center mb-4">Top 10 Filme</h2>
            <asp:Repeater ID="rptTopMovies" runat="server">
                <ItemTemplate>
                    <div class="card mb-3 position-relative">
                        <span class="rank-badge"><%# Container.ItemIndex + 1 %></span>
                        <div class="row no-gutters">
                            <div class="col-md-5">
                                <a href="DetaliiFilm.aspx?id=<%# Eval("Id") %>">
                                    <img src='<%# Eval("ImageUrl") %>' class="card-img" alt="Film Image">
                                </a>
                            </div>
                            <div class="col-md-7">
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Title") %></h5>
                                    <p class="card-text"><%# Eval("Description") %></p>
                                    <a href="DetaliiFilm.aspx?id=<%# Eval("Id") %>" class="btn btn-primary">Vezi Detalii</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
