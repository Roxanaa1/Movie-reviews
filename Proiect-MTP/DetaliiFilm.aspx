<%@ Page Language="C#" AutoEventWireup="true" Async="true"  CodeBehind="DetaliiFilm.aspx.cs" Inherits="Proiect_MTP.DetaliiFilm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalii Film</title>
</head>
    <style>
        body {
            background: url(Imagini/Fun1.jpg) no-repeat center center fixed;
            background-size: cover;
        }
    </style>
<body>
    <form id="form1" runat="server">
       <h2>Title: <asp:Label ID="FilmTitle" runat="server" /></h2>
        <p>Description: <asp:Label ID="FilmDescription" runat="server" /></p>

<!-- Buttons for actions -->
<button onclick="location.href='AdaugaRecenzie.aspx?id=<%# Request.QueryString["id"] %>'">Adaugă o recenzie</button>
<button onclick="location.href='AdaugaFavorit.aspx?id=<%# Request.QueryString["id"] %>'">Adaugă la favorite</button>
<button onclick="location.href='EditRecenzie.aspx?id=<%# Request.QueryString["id"] %>'">Editează recenzia</button>
<button onclick="location.href='DeleteRecenzie.aspx?id=<%# Request.QueryString["id"] %>'">Șterge recenzia</button>

<p>
    &nbsp;
</p>
<p>
    <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
</p>

    </form>
</body>
</html>
