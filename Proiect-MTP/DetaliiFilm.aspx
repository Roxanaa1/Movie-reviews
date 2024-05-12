<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetaliiFilm.aspx.cs" Inherits="Proiect_MTP.DetaliiFilm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalii Film</title>
</head>
<body>
    <h2>Title: <%= FilmTitle %></h2>
    <p>Description: <%= FilmDescription %></p>
    <button onclick="location.href='AdaugaRecenzie.aspx?id=<%= FilmId %>'">Adaugă o recenzie</button>
    <button onclick="location.href='AdaugaFavorit.aspx?id=<%= FilmId %>'">Adaugă la favorite</button>
    <button onclick="location.href='EditRecenzie.aspx?id=<%= FilmId %>'">Editează recenzia</button>
    <button onclick="location.href='DeleteRecenzie.aspx?id=<%= FilmId %>'">Șterge recenzia</button>
</body>
</html>